<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_alert_to_owner</fullName>
        <description>XYZ Email alert to owner</description>
        <protected>false</protected>
        <recipients>
            <field>Account_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_account_email</fullName>
        <field>Account_Email__c</field>
        <formula>Opportunity__r.Account.Owner.Email</formula>
        <name>Update account email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Email alert test</fullName>
        <actions>
            <name>Email_alert_to_owner</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>XYZ_Custom__c.CurrencyIsoCode</field>
            <operation>equals</operation>
            <value>EUR</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Update Account Email on Custom object</fullName>
        <actions>
            <name>Update_account_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>XYZ_Custom__c.Account_Email__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
