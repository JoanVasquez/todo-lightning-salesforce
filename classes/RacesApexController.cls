public with sharing class RacesApexController {
    
    @AuraEnabled
    public static List<Race__c> getRacesDB() {
        return [SELECT Id, Name, Location__c, DateTime__c, Results__c, Attended__c, Race_Type__c FROM Race__c];
    }
    
    @AuraEnabled
    public static Race__c newRaceDB(Race__c race) {
        insert race;
        return race;
    }
    
    @AuraEnabled
    public static Race__c updateRaceDB(Race__c race) {
        update race;
        return race;
    }
}