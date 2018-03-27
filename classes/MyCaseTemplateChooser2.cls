global class MyCaseTemplateChooser2 implements Support.EmailTemplateSelector {
    // Empty constructor 
    global MyCaseTemplateChooser2() {    }

    // The main interface method 
    global ID getDefaultEmailTemplateId(ID caseId) {
        // Select the case we're interested in, choosing any fields that are relevant to our decision
     
        EmailTemplate et;

            et = [SELECT id FROM EmailTemplate WHERE DeveloperName = 'Burberry_On_Brand_Template'];
         
        
        // Return the ID of the template selected
        return et.id;
    }
}