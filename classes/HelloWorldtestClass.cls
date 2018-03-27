@isTest
private class HelloWorldtestClass {
    static testMethod void validateHelloWorld() {
        Book__c b = new Book__c (Name='Behind the Cloud', Price__c=100);
        System.debug('Price before insering new book: ' + b.Price__c);
        
        //Insert book
        insert b;
        
        //Retrieve the new book
        b = [Select Price__c FROM Book__c Where Id =:b.Id];
        System.debug('Price after trigger fired: ' + b.Price__c);
        
        //test that the trigger correctly updated the price
        System.assertEquals (90, b.Price__c);
    }
}