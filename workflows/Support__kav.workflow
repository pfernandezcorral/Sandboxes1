<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>email_alert_for_article</fullName>
        <description>email alert for article</description>
        <protected>false</protected>
        <recipients>
            <recipient>arturogueznez@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/case_followup</template>
    </alerts>
    <rules>
        <fullName>Article type support</fullName>
        <actions>
            <name>email_alert_for_article</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Support__kav.PublishStatus</field>
            <operation>equals</operation>
            <value>Published</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
