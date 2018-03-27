<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approve_email</fullName>
        <description>Approve email</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <alerts>
        <fullName>Create_a_case</fullName>
        <ccEmails>arturogueznez@4medbzooamjhlxz7lfm006q2r.dmw7emae.d.case.salesforce.com</ccEmails>
        <description>Create a case</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <alerts>
        <fullName>Escalated_is_equals_true</fullName>
        <description>Escalated is equals true</description>
        <protected>false</protected>
        <recipients>
            <recipient>SalesUS</recipient>
            <type>group</type>
        </recipients>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <alerts>
        <fullName>REMINDER_Please_complete_post_mortem</fullName>
        <description>REMINDER: Please complete post mortem</description>
        <protected>false</protected>
        <recipients>
            <recipient>SalesDirectorEMEA</recipient>
            <type>role</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/ContactFollowUpSAMPLE</template>
    </alerts>
    <alerts>
        <fullName>email_alert_in_opp_stage_equals_4</fullName>
        <description>email alert in opp stage equals 4</description>
        <protected>false</protected>
        <recipients>
            <type>owner</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <alerts>
        <fullName>email_approve</fullName>
        <description>email approve</description>
        <protected>false</protected>
        <recipients>
            <recipient>mloretta@streamdub110.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Approve_notifications/EU_Number_updated</template>
    </alerts>
    <alerts>
        <fullName>email_approve2</fullName>
        <description>email approve</description>
        <protected>false</protected>
        <recipients>
            <recipient>mloretta@streamdub110.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>Approve_notifications/EU_Number_updated</template>
    </alerts>
    <fieldUpdates>
        <fullName>Approval_update</fullName>
        <field>Actual_Approver_Custom__c</field>
        <formula>$User.FirstName &amp; &quot; &quot; &amp; $User.LastName</formula>
        <name>Approval update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_approval_for_next_step</fullName>
        <description>Final approval for next step</description>
        <field>NextStep</field>
        <formula>&quot;Record approved&quot;</formula>
        <name>Final approval for next step</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_reject_for_next_step</fullName>
        <field>NextStep</field>
        <formula>&quot;record reject&quot;</formula>
        <name>Final reject for next step</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Final_rejected_for_next_step</fullName>
        <field>NextStep</field>
        <formula>&quot;Record rejected&quot;</formula>
        <name>Final rejected for next step</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Brand</fullName>
        <field>Brand_opp__c</field>
        <formula>IF( AND( ISPICKVAL(Account.Brand__c,&quot;Hyster&quot;)  ,

  $User.ProfileId  = &quot;00eD00000016CGl&quot;), &quot;Hyster&quot;, 

IF( AND( ISPICKVAL(Account.Brand__c,&quot;Yale&quot;)  ,

 $User.ProfileId = &quot;00eD00000016CGv&quot;), &quot;Yale&quot;,NULL))</formula>
        <name>Update Brand</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Next_Step_Field</fullName>
        <field>NextStep</field>
        <formula>&quot;Conducting Competitor Review&quot;</formula>
        <name>Update Next Step Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_close_date</fullName>
        <field>CloseDate</field>
        <formula>NOW()</formula>
        <name>Update close date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_currency_result</fullName>
        <field>Currency_result__c</field>
        <formula>Currency1_x_Currency2__c</formula>
        <name>Update currency result</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_next_step_to_party_time</fullName>
        <description>This update the next step field to show that the deal is final and the party is about to begin</description>
        <field>NextStep</field>
        <formula>&quot;PARTY TIME!&quot;</formula>
        <name>Update next step to party time</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_next_step_to_review_closed_lost</fullName>
        <description>This is used to mark the next step as reviewing competitor products.</description>
        <field>NextStep</field>
        <formula>&quot;Post Mortem required to review competitors products&quot;</formula>
        <name>Update next step to review closed lost</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>checkbox</fullName>
        <field>necesita_inspeccion__c</field>
        <literalValue>1</literalValue>
        <name>checkbox</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>no_editable_opp</fullName>
        <field>RecordTypeId</field>
        <lookupValue>Test_record_type_no_editable</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>no editable opp</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>tradeshow</fullName>
        <field>Tradeshow_presence__c</field>
        <literalValue>Hola</literalValue>
        <name>tradeshow</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_account_type</fullName>
        <field>Type</field>
        <literalValue>Competitor</literalValue>
        <name>update account type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <targetObject>AccountId</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_opp_open</fullName>
        <field>StageName</field>
        <literalValue>Open</literalValue>
        <name>update opp open</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>whatever</fullName>
        <field>new_date__c</field>
        <formula>CloseDate</formula>
        <name>whatever</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Accounts Receivable</fullName>
        <actions>
            <name>Escalated_is_equals_true</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>equals</operation>
            <value>&quot;EUR 123,456&quot;</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>After conversion</fullName>
        <actions>
            <name>tradeshow</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Produt__c</field>
            <operation>equals</operation>
            <value>EPAD</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Closed opp</fullName>
        <actions>
            <name>update_opp_open</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.IsClosed</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Competitive lost review</fullName>
        <actions>
            <name>Update_next_step_to_review_closed_lost</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Contact_manager_for_closed_lost_revew</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Reason_Lost__c</field>
            <operation>equals</operation>
            <value>Competitor Product Features,Competitor Pricing</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Post_Mortem_Complete__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>Trigger to determine when a closed - lost competitive is required and ensures this is completed within 10 days.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Large Opp closed</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.IsWon</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>&quot;EUR 10,000,000&quot;</value>
        </criteriaItems>
        <description>This rule triggers when an opportunity greater than 10Mi is closed.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Organise_a_party</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Opportunity.CloseDate</offsetFromField>
            <timeLength>14</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_next_step_to_party_time</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>21</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Lost Oportunity Due to a Competitor</fullName>
        <actions>
            <name>REMINDER_Please_complete_post_mortem</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Next_Step_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Reason_Lost__c</field>
            <operation>contains</operation>
            <value>Competitor</value>
        </criteriaItems>
        <criteriaItems>
            <field>Opportunity.Post_Mortem_Complete__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <description>If a deal is lost to a competitor, the Sales Rep must contact Sales Operations</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <timeLength>10</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>New case</fullName>
        <actions>
            <name>Create_a_case</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Other other</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Stage alert</fullName>
        <actions>
            <name>opp_analisis</name>
            <type>Task</type>
        </actions>
        <actions>
            <name>qw3e</name>
            <type>Task</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Perception Analysis</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Brand</fullName>
        <actions>
            <name>Update_Brand</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Brand_opp__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update close date</fullName>
        <actions>
            <name>Update_close_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>Closed Lost,Closed Won</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update currency total</fullName>
        <actions>
            <name>Update_currency_result</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.Currency_result__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>WF alert</fullName>
        <actions>
            <name>email_alert_in_opp_stage_equals_4</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>4 Stage</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>change account type</fullName>
        <actions>
            <name>update_account_type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>AND(ISCHANGED( Type ) , ISPICKVAL( Type ,&quot;New Business&quot;))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>no editable</fullName>
        <actions>
            <name>no_editable_opp</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.IsClosed</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>update checkbox</fullName>
        <actions>
            <name>checkbox</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Opportunity.StageName</field>
            <operation>equals</operation>
            <value>4 Stage</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Contact_manager_for_closed_lost_revew</fullName>
        <assignedToType>owner</assignedToType>
        <description>Please contact your manager so that they can organise a competitive analysis on the lost oportunity.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Contact manager for closed - lost revew</subject>
    </tasks>
    <tasks>
        <fullName>Organise_a_party</fullName>
        <assignedToType>accountOwner</assignedToType>
        <description>A big deal was closed recently on your accounts. Time to organise party for the account and/or sales team.
Be sure to log an expenses report and obtain the company credit card for the evening.</description>
        <dueDateOffset>21</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Opportunity.CloseDate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Organise a party</subject>
    </tasks>
    <tasks>
        <fullName>Step_1_Approved</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Step 1 Approved</subject>
    </tasks>
    <tasks>
        <fullName>Step_1_Rejected</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Step 1 Rejected</subject>
    </tasks>
    <tasks>
        <fullName>Step_2_Approved</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Step 2 Approved</subject>
    </tasks>
    <tasks>
        <fullName>Step_2_Rejected</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Step 2 Rejected</subject>
    </tasks>
    <tasks>
        <fullName>Step_3_Approved</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Step 3 Approved</subject>
    </tasks>
    <tasks>
        <fullName>Step_3_Rejected</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Step 3 Rejected</subject>
    </tasks>
    <tasks>
        <fullName>opp_analisis</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>opp analisis</subject>
    </tasks>
    <tasks>
        <fullName>qw3e</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>qw3e</subject>
    </tasks>
</Workflow>
