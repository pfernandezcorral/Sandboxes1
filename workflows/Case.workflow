<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_Contact_on_Case_Close</fullName>
        <ccEmails>jim.pan+arturo@salesforce.com</ccEmails>
        <description>Email Contact on Case Close</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturoadmin@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/SUPPORTCaseResponsewithSolutionSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>Email_alert_case_assgined</fullName>
        <description>Email alert case assgined</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/NO_Case_Thread_Id</template>
    </alerts>
    <alerts>
        <fullName>Escalated_is_equals_true2</fullName>
        <description>Escalated is equals true</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <alerts>
        <fullName>email_to_case</fullName>
        <description>email to case</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <alerts>
        <fullName>send_alert_to_e2c_address</fullName>
        <ccEmails>arturogueznez@gmail.com</ccEmails>
        <description>send alert to e2c address</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Support_instalation</template>
    </alerts>
    <fieldUpdates>
        <fullName>Change_owner</fullName>
        <field>OwnerId</field>
        <lookupValue>EMEA</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>Change owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Change_record_type</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Case_type</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Change record type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Time_owner</fullName>
        <field>Time_owner__c</field>
        <formula>IF(ISCHANGED(OwnerId) , NOW(),  Time_owner__c  )</formula>
        <name>Time owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_field</fullName>
        <field>Type</field>
        <literalValue>Question</literalValue>
        <name>Update field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_field23</fullName>
        <field>Status</field>
        <literalValue>On Hold</literalValue>
        <name>Update field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Visible_in_SSP</fullName>
        <field>IsVisibleInSelfService</field>
        <literalValue>0</literalValue>
        <name>Visible in SSP</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>case_origin_role2</fullName>
        <field>case_origin_custom__c</field>
        <literalValue>Support</literalValue>
        <name>case origin role2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>evarist_queue</fullName>
        <field>OwnerId</field>
        <lookupValue>Evarist</lookupValue>
        <lookupValueType>Queue</lookupValueType>
        <name>evarist queue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>record_time_in_text_field</fullName>
        <field>Time_recorded__c</field>
        <formula>Time_recorded__c 
&amp;&quot;   ||    &quot;
&amp;Text(FLOOR((NOW() -  Time_owner__c ) * 24))

&amp;&quot;:&quot;&amp;Text(FLOOR(((NOW() - Time_owner__c) * 24 - FLOOR((NOW() - Time_owner__c) * 24))* 60))

&amp;&quot;:&quot;&amp;Text(FLOOR((( (NOW() - Time_owner__c) * 24 - FLOOR((NOW() - Time_owner__c) * 24 )) * 60 - FLOOR(((NOW() - Time_owner__c) * 24 - FLOOR((NOW() - Time_owner__c) * 24 )) * 60 )) * 60 )) 
&amp;&quot;-&quot;&amp;  PRIORVALUE(OwnerId)</formula>
        <name>record time in text field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_case_origin</fullName>
        <field>case_origin_custom__c</field>
        <literalValue>US</literalValue>
        <name>update case origin</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_field2</fullName>
        <field>Priority</field>
        <literalValue>High</literalValue>
        <name>update field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>w3we</fullName>
        <field>OwnerId</field>
        <lookupValue>pericovalverde@gmail.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>w3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Case email alert</fullName>
        <actions>
            <name>Escalated_is_equals_true2</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Test_task_workflow</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.IsEscalated</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Change case owner</fullName>
        <actions>
            <name>Email_alert_case_assgined</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Change_owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Type</field>
            <operation>equals</operation>
            <value>Feature Request</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Change record type macro</fullName>
        <actions>
            <name>Change_record_type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>new_Email__c==True</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Create case comment</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>On Hold</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Email Contact On Close</fullName>
        <actions>
            <name>Email_Contact_on_Case_Close</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>Closed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Email to case</fullName>
        <actions>
            <name>email_to_case</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Reason</field>
            <operation>equals</operation>
            <value>New problem</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Org wide alert</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Chat</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Record time</fullName>
        <actions>
            <name>record_time_in_text_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED( OwnerId )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Send email alert</fullName>
        <actions>
            <name>send_alert_to_e2c_address</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_field23</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Subject</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Time based</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Case.amount__c</field>
            <operation>equals</operation>
            <value>GBP 1</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>7</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Time owner</fullName>
        <actions>
            <name>Time_owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.OwnerId</field>
            <operation>notEqual</operation>
            <value>NULL</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Visible in SSP</fullName>
        <actions>
            <name>Visible_in_SSP</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>Web</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>case origin role</fullName>
        <actions>
            <name>update_case_origin</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>User.UserRoleId</field>
            <operation>contains</operation>
            <value>US</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>case origin role2</fullName>
        <actions>
            <name>case_origin_role2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>User.UserRoleId</field>
            <operation>contains</operation>
            <value>Support</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>chan owner</fullName>
        <actions>
            <name>w3we</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.CaseNumber</field>
            <operation>notEqual</operation>
            <value>ww4rqw</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>email status</fullName>
        <actions>
            <name>update_field2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Status</field>
            <operation>equals</operation>
            <value>New</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>evarist</fullName>
        <actions>
            <name>evarist_queue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Case.Origin</field>
            <operation>equals</operation>
            <value>address 2</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>origin</fullName>
        <active>false</active>
        <formula>ISCHANGED(Origin)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>task user</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Case.case_origin_custom__c</field>
            <operation>equals</operation>
            <value>Support</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Test_task_workflow</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Test task workflow</subject>
    </tasks>
    <tasks>
        <fullName>test_task_action_milestone</fullName>
        <assignedTo>arturogueznezapp@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>test task action milestone</subject>
    </tasks>
</Workflow>
