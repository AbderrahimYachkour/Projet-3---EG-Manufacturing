public with sharing class AccountCasesController {

    @AuraEnabled
    public static List<Case> findCasesBySubject(Id accountId, String subjectSearchTerm) {
        String searchKey = '%' + subjectSearchTerm + '%';
        return [
            SELECT Id, Subject, Status, Priority
            FROM Case
            WHERE AccountId = :accountId
            AND Subject LIKE :searchKey
        ];
    }
}