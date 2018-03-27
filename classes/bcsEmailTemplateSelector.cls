global class bcsEmailTemplateSelector implements Support.EmailTemplateSelector {
// Empty constructor
global bcsEmailTemplateSelector() {    }

// The main interface method 
global ID getDefaultEmailTemplateId(ID caseId) {    
// Select the case we're interested in, choosing any fields that are relevant to our decision    
//Case c = [SELECT Subject, Description FROM Case WHERE Id=:caseId]; 

EmailTemplate et;        

    et = [SELECT id FROM EmailTemplate WHERE DeveloperName = 'Burberry_On_Brand_Template'];      
    
      return et.id;       
       }
       
}