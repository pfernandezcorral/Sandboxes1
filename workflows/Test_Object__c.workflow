<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Update_deplyment_date</fullName>
        <field>Actual_Deployment_Date__c</field>
        <formula>NOW()</formula>
        <name>Update deplyment date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Deployment Date</fullName>
        <actions>
            <name>Update_deplyment_date</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Test_Object__c.Status__c</field>
            <operation>equals</operation>
            <value>Deployed</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Status Deployed</fullName>
        <active>false</active>
        <criteriaItems>
            <field>Test_Object__c.Status__c</field>
            <operation>equals</operation>
            <value>Deployed</value>
        </criteriaItems>
        <description>Update Actual Deployment Date with today’s date.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
