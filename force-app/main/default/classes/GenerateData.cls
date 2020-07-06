public with sharing class GenerateData {

    public static void init() {
        deleteOldData();
        generateNewData();
    }

    private static void deleteOldData() {
        DELETE [SELECT Id FROM Account];
        DELETE [SELECT Id FROM Contact];
    }

    public static void generateNewData() {
        Account newAccount = new Account(Name = 'NERV');
        insert newAccount;

        List<Contact> newContacts = new List<Contact>();

        newContacts.add(new Contact (
            Title = 'Unit 01 Pilot',
            FirstName = 'Shinji',
            LastName = 'Ikari',
            AccountId = newAccount.Id,
            Email = 'sikari@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'Chief Operations Officer',
            FirstName = 'Misato',
            LastName = 'Katsuragi',
            AccountId = newAccount.Id,
            Email = 'mkatsuragi@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'Unit 00 Pilot',
            FirstName = 'Rei',
            LastName = 'Ayanami',
            AccountId = newAccount.Id,
            Email = 'rayanami@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'Unit 02 Pilot',
            FirstName = 'Asuka Langley',
            LastName = 'Soryu',
            AccountId = newAccount.Id,
            Email = 'alsoryu@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'Commander',
            FirstName = 'Gendo',
            LastName = 'Ikari',
            AccountId = newAccount.Id,
            Email = 'gikari@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'Deputy Commander',
            FirstName = 'Kozo',
            LastName = 'Fuyutsuki',
            AccountId = newAccount.Id,
            Email = 'kfuyutsuki@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'Head Scientist',
            FirstName = 'Ritsuko',
            LastName = 'Akagi',
            AccountId = newAccount.Id,
            Email = 'knagisa@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'Chief Inspection Officer',
            FirstName = 'Ryoji',
            LastName = 'Kaji',
            AccountId = newAccount.Id,
            Email = 'rkaji@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'First Lieutenant',
            FirstName = 'Makoto',
            LastName = 'Hyuga',
            AccountId = newAccount.Id,
            Email = 'mhyuga@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'First Lieutenant',
            FirstName = 'Maya',
            LastName = 'Ibuki',
            AccountId = newAccount.Id,
            Email = 'mibuki@example.com'
        ));

        newContacts.add(new Contact (
            Title = 'First Lieutenant',
            FirstName = 'Shigeru',
            LastName = 'Aoba',
            AccountId = newAccount.Id,
            Email = 'saoba@example.com'
        ));

        insert newContacts;
    }
}
