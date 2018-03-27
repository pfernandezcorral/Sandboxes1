global class MyCaseTemplateChooser implements Support.EmailTemplateSelector {
    // Empty constructor 
    global MyCaseTemplateChooser() {    }

    // The main interface method 
    global ID getDefaultEmailTemplateId(ID caseId) {
        // Select the case we're interested in, choosing any fields that are relevant to our decision
        Case c = [SELECT Subject, Description FROM Case WHERE Id=:caseId];

        EmailTemplate et;

        if (c.subject.contains('Subject1')) {
            et = [SELECT id FROM EmailTemplate WHERE DeveloperName = 'case_followup'];
        } else if(c.subject.contains('Subject2')) {
            et = [SELECT id FROM EmailTemplate WHERE DeveloperName = 'Burberry_On_Brand_Template'];
        } 
        
        // Return the ID of the template selected
        return et.id;
    }
}