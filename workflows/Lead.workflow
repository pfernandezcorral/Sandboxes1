<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>New_lead_activity_notification</fullName>
        <description>New lead activity notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>michael.costarica1@yahoo.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>portal_users/Approval_required</template>
    </alerts>
    <alerts>
        <fullName>email_notification_lead_owner</fullName>
        <description>email notification lead owner</description>
        <protected>false</protected>
        <recipients>
            <recipient>mloretta@streamdub110.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Approve_notifications/EU_Number_updated</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Field</fullName>
        <field>DoNotCall</field>
        <literalValue>1</literalValue>
        <name>Update Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_owner_arturo</fullName>
        <field>OwnerId</field>
        <lookupValue>arturogueznez@gmail.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>change owner arturo</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_queue</fullName>
        <field>OwnerId</field>
        <lookupValue>GlobalUnassigned</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>change queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_client_activity</fullName>
        <field>Client_Activity__c</field>
        <literalValue>Updated</literalValue>
        <name>update client activity</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_mayor</fullName>
        <field>mayor__c</field>
        <formula>menor_o_igual__c</formula>
        <name>update mayor</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Alex</fullName>
        <active>false</active>
        <formula>AND(ISCHANGED( Client_Activity__c ),ISPICKVAL(PRIORVALUE(Client_Activity__c ), &quot;Read&quot;), 

NOT (ISPICKVAL( Status  , &quot;Open&quot;)))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Andreas</fullName>
        <actions>
            <name>update_mayor</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>OR(   ISBLANK(mayor__c ) ,  (mayor__c  &lt;  menor_o_igual__c)   )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change lead owner to Arturo</fullName>
        <actions>
            <name>change_owner_arturo</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Tarea</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Catalogue Requested</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change lead owner to Maya</fullName>
        <actions>
            <name>Tarea</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.Status</field>
            <operation>equals</operation>
            <value>Catalogue Requested</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>WF Lead</fullName>
        <actions>
            <name>Update_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Lead.Country</field>
            <operation>equals</operation>
            <value>Spain</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>automatic email</fullName>
        <active>false</active>
        <formula>TRUE</formula>
        <triggerType>onCreateOnly</triggerType>
        <workflowTimeTriggers>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>change owner notification</fullName>
        <actions>
            <name>email_notification_lead_owner</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <formula>Owner:User.Profile.Name = &quot;Standard User 1&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>change queue</fullName>
        <active>false</active>
        <formula>$RecordType.Name==&quot;Lead Record Type&quot; &amp;&amp; 

 testlead__c  = TRUE</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>change_queue</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Lead.CreatedDate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Hours</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>notify user</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.OwnerId</field>
            <operation>equals</operation>
            <value>Maya Lorretta</value>
        </criteriaItems>
        <description>notify user when lead is assigned to maya</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>test email alert</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.AnnualRevenue</field>
            <operation>equals</operation>
            <value>&quot;EUR 1,564,165&quot;</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>testlead field</fullName>
        <actions>
            <name>update_client_activity</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Lead.testlead__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>update SAME</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Lead.SAME__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <tasks>
        <fullName>Tarea</fullName>
        <assignedToType>owner</assignedToType>
        <description>cuando manda el email?</description>
        <dueDateOffset>1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Tarea</subject>
    </tasks>
</Workflow>
