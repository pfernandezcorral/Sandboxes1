global class SmartTemplateLoader implements Support.EmailTemplateSelector {  
  // Empty constructor    global SmartTemplateLoader() {    }   
   // The main interface method  
    global ID getDefaultEmailTemplateId(ID caseId) {      
    System.debug('Inside....');    
         List<EmailTemplate> ets = [SELECT id FROM EmailTemplate WHERE DeveloperName = 'Burberry_On_Brand_Template'];     
            //Return the ID of the template selected  
                  if (!ets.isEmpty()) {     
                         EmailTemplate et = ets[0];       
                              System.debug('template: ' + ' -- id: ' + et.id);        
                                  return et.id;    
                                      }    
                                          else   
                                               {        
                                                   return null;  
                                                         }  
                                                           }
                                                           }