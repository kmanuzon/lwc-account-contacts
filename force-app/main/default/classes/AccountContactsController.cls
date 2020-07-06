public with sharing class AccountContactsController {

    @AuraEnabled(Cacheable=true)
    public static List<Contact> getContactsByAccountId(Id accountId) {
        return [SELECT Title, Name, Email FROM Contact WHERE AccountId = :accountId];
    }
}
