public with sharing class CaseSelector {
    
    public static List<Case> getCaseByAccountId (Id accountId,String subjectSearchTerm)
 {
             String searchkey='%'+ subjectSearchTerm+'%';
             return [SELECT Id, Subject, Status, Priority FROM Case WHERE AccountId = :accountId AND Subject LIKE :searchkey];
 }
}

//Public with sharing class AccountCasesController { @AuraEnabled(cacheable=true)
//public static List<Case> findCasesBySubject(Id accountId, String subjectSearchTerm) {
//    return CaseSelector.getCaseByAccountId(accountId, subjectSearchTerm);}}