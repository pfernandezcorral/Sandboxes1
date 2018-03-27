<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EU_Number_in_accounts_has_been_changed</fullName>
        <description>EU Number in accounts has been changed</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Approve_notifications/EU_Number_updated</template>
    </alerts>
    <alerts>
        <fullName>ISE_Alert</fullName>
        <description>ISE Alert</description>
        <protected>false</protected>
        <recipients>
            <recipient>SalesRepUS2</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/chino</template>
    </alerts>
    <fieldUpdates>
        <fullName>Accounts_Receivable</fullName>
        <field>PersonAssistantPhone</field>
        <name>Accounts Receivable</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Standard_User_1</fullName>
        <field>Industry</field>
        <literalValue>Agriculture</literalValue>
        <name>Standard User 1</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Time_dependant2</fullName>
        <field>Industry</field>
        <literalValue>Agriculture</literalValue>
        <name>Time dependant</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Account_Rating</fullName>
        <description>This updates account rating to &quot;HOT&quot;</description>
        <field>Rating</field>
        <literalValue>Hot</literalValue>
        <name>Update Account Rating</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>percent</fullName>
        <field>discount_percent__c</field>
        <formula>VALUE(
LEFT(TEXT(discount__c),
(LEN(TEXT(discount__c)) - 1))) /100</formula>
        <name>percent</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
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
    <outboundMessages>
        <fullName>arturo</fullName>
        <apiVersion>24.0</apiVersion>
        <endpointUrl>http://www.yonkis.com</endpointUrl>
        <fields>Id</fields>
        <includeSessionId>false</includeSessionId>
        <integrationUser>arturogueznez@gmail.com</integrationUser>
        <name>arturo</name>
        <protected>false</protected>
        <useDeadLetterQueue>false</useDeadLetterQueue>
    </outboundMessages>
    <rules>
        <fullName>3rwer</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.BillingState</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Andreas account</fullName>
        <actions>
            <name>update_mayor</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( ISBLANK(mayor__c ) , (mayor__c &lt; menor_o_igual__c) )</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Annual Revenue Rating</fullName>
        <actions>
            <name>Update_Account_Rating</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Invite_Customer_to_Golfing_Weekend</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Account.AnnualRevenue</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;EUR 25,000,000&quot;</value>
        </criteriaItems>
        <description>This rule fires a list of actions when the annual revenue is over 25 million of the designated currency.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>SFDC test</fullName>
        <active>false</active>
        <formula>AND( ISPICKVAL( Market__c ,&quot;Belgium&quot;), OR ( ISCHANGED( EU_Number__c ), ISNEW() ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Time dependant</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Account.Exam_Date__c</field>
            <operation>greaterThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Time_dependant2</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Account.Exam_Date__c</offsetFromField>
            <timeLength>2</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>test email alert</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Account.Name</field>
            <operation>notEqual</operation>
            <value>feo</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>test2213</fullName>
        <active>false</active>
        <formula>AND(ISPICKVAL( Market__c  ,&quot;Belgium&quot;),OR(ISCHANGED(  EU_Number__c ), ISNEW()))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>update EU Number</fullName>
        <actions>
            <name>EU_Number_in_accounts_has_been_changed</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <formula>AND(ISPICKVAL(Market__c, &quot;Belgium&quot;),OR(ISCHANGED( EU_Number__c), ISNEW()))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>update discount percent</fullName>
        <actions>
            <name>percent</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Invite_Customer_to_Golfing_Weekend</fullName>
        <assignedTo>CFO</assignedTo>
        <assignedToType>role</assignedToType>
        <description>Please contact customer and arrange a weekend away at one of our partners golfing resorts.

Details of how to arrange this can be found in our intranet folder including how to log the RTS and Expense report.</description>
        <dueDateOffset>7</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Invite Customer to Golfing Weekend</subject>
    </tasks>
    <tasks>
        <fullName>TEST_SFDC</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>TEST SFDC</subject>
    </tasks>
</Workflow>
