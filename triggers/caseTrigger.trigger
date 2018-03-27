trigger caseTrigger on Case (after update) {
    Case c = [Select Id, Description from Case where Id = :Trigger.new[0].Id limit 1];
        
    if(c.Description != 'trigger updated') {
        c.Description = 'trigger updated'; 
        update c;
    }
}