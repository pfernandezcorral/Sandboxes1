<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Comments</fullName>
        <field>Comments__c</field>
        <formula>Description</formula>
        <name>Comments</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>change_owner</fullName>
        <field>OwnerId</field>
        <lookupValue>arturogueznez@gmail.com</lookupValue>
        <lookupValueType>User</lookupValueType>
        <name>change owner</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>complete_task</fullName>
        <field>Status</field>
        <literalValue>Completed</literalValue>
        <name>complete task</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>hjk</fullName>
        <field>Status</field>
        <literalValue>Completed</literalValue>
        <name>hjk</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Update commetns</fullName>
        <actions>
            <name>Comments</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>change owner</fullName>
        <actions>
            <name>change_owner</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>User.Username</field>
            <operation>notEqual</operation>
            <value>arturogueznez@gmail.com</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>complete task</fullName>
        <actions>
            <name>complete_task</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Task.Subject</field>
            <operation>equals</operation>
            <value>Check the contact</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>email remainder task</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Task.ActivityDate</field>
            <operation>equals</operation>
            <value>TODAY</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <offsetFromField>Task.ActivityDate</offsetFromField>
            <timeLength>0</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>pol</fullName>
        <actions>
            <name>hjk</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <formula>status_for_import__c =True</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
