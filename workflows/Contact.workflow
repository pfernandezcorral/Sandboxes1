<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Test_event_notification</fullName>
        <description>Test event notification</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Birthdate_un_dia</fullName>
        <description>Se actualiza el birthdate para que pase a ser un dia mas tarde.</description>
        <field>Birthdate</field>
        <formula>Birthdate + 1</formula>
        <name>Update Birthdate un dia</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_birthdate</fullName>
        <field>Birthdate</field>
        <formula>Birthdate +(5/1440)</formula>
        <name>Update birthdate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_birthdate_new</fullName>
        <field>Birthdate</field>
        <formula>Birthdate +2</formula>
        <name>Update birthdate new</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>add_note_date</fullName>
        <field>NOTES_with_date__c</field>
        <formula>NULL</formula>
        <name>add note date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>delete_insert_comment</fullName>
        <field>NOTES_with_date__c</field>
        <formula>NULL</formula>
        <name>delete insert comment</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>lenguaje_update</fullName>
        <field>language__c</field>
        <formula>TEXT(Account.languaje__c)</formula>
        <name>lenguaje update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>new_birth</fullName>
        <field>Birthdate</field>
        <formula>Birthdate + 365</formula>
        <name>new birth</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>test_check</fullName>
        <field>RecordTypeId</field>
        <lookupValue>TESTTTTTTTTSET</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>test check</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>testtswerfw</fullName>
        <field>RecordTypeId</field>
        <lookupValue>master2</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>testtswerfw</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>update_log</fullName>
        <field>Solo_lectura_comment_log__c</field>
        <formula>NOTES_with_date__c &amp; &quot; - &quot; &amp; TEXT(DAY( TODAY() )) &amp;&quot;/&quot;&amp; TEXT(MONTH( TODAY() )) &amp;&quot;/&quot;&amp; TEXT(YEAR( TODAY() ) ) &amp; MID( TEXT( LastModifiedDate ), 11, 6) &amp; &quot; by &quot; &amp; $User.FirstName &amp;&quot; &quot;&amp; $User.LastName + BR() +
 PRIORVALUE( Solo_lectura_comment_log__c )</formula>
        <name>update log</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>username</fullName>
        <field>TESTTTTTTTTSETtxt__c</field>
        <formula>$User.FirstName &amp; &quot; &quot; &amp; $User.LastName</formula>
        <name>username</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Birthdate task</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Cumple_Ma_ana</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_birthdate</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Birthday last</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Hay_Cumple</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>Update_birthdate_new</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Cumple Definitiva</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Update_Birthdate_un_dia</name>
                <type>FieldUpdate</type>
            </actions>
            <actions>
                <name>Felicita_cumplea_os</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Event WF rule</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.HasOptedOutOfEmail</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Test_event_notification</name>
                <type>Alert</type>
            </actions>
            <offsetFromField>Contact.Event_Date_Time__c</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Product type notification</fullName>
        <actions>
            <name>Interest_in_music</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Product_Type__c</field>
            <operation>equals</operation>
            <value>Music</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Reminder</fullName>
        <actions>
            <name>Check_the_contact</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( Touch__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>TESTTTTTTTTSET</fullName>
        <actions>
            <name>test_check</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.TESTTTTTTTTSET2__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>create contact</fullName>
        <active>false</active>
        <criteriaItems>
            <field>User.ProfileId</field>
            <operation>equals</operation>
            <value>System Administrator</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>language rule</fullName>
        <actions>
            <name>lenguaje_update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Account.languaje__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>note date</fullName>
        <actions>
            <name>add_note_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>ISCHANGED( NOTES_with_date__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>perico</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.MobilePhone</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>test</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Birthdate</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>cumple</name>
                <type>Task</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>-1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
        <workflowTimeTriggers>
            <actions>
                <name>new_birth</name>
                <type>FieldUpdate</type>
            </actions>
            <offsetFromField>Contact.Birthdate</offsetFromField>
            <timeLength>1</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>test check 2</fullName>
        <actions>
            <name>testtswerfw</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.TESTTTTTTTTSET2__c</field>
            <operation>equals</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>update comment log</fullName>
        <actions>
            <name>delete_insert_comment</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>update_log</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>ISCHANGED( NOTES_with_date__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Check_the_contact</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>In Progress</status>
        <subject>Check the contact</subject>
    </tasks>
    <tasks>
        <fullName>Cumple_Ma_ana</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>-1</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Cumple Mañana</subject>
    </tasks>
    <tasks>
        <fullName>Felicita_cumplea_os</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Hoy es el cumpleaños de alguien.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Felicita cumpleaños</subject>
    </tasks>
    <tasks>
        <fullName>Feliz_Cumplea_os</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Feliz Cumpleaños!!!</subject>
    </tasks>
    <tasks>
        <fullName>Feliz_NUEVO</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>feliz cumpleanos</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Feliz NUEVO!!</subject>
    </tasks>
    <tasks>
        <fullName>Happy_birthday</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Completed</status>
        <subject>Happy birthday</subject>
    </tasks>
    <tasks>
        <fullName>Hay_Cumple</fullName>
        <assignedTo>arturogueznez@gmail.com</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Alguien esta cumpliendo años</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Hay Cumple!!</subject>
    </tasks>
    <tasks>
        <fullName>Interest_in_music</fullName>
        <assignedToType>accountOwner</assignedToType>
        <description>A contact has shown interest in music. Offer them concert tickets.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Interest in music</subject>
    </tasks>
    <tasks>
        <fullName>cumple</fullName>
        <assignedToType>owner</assignedToType>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>true</notifyAssignee>
        <offsetFromField>Contact.Birthdate</offsetFromField>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>cumple</subject>
    </tasks>
</Workflow>
