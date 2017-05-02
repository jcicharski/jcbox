@isTest
private class TestRestrictContactByName {

    @isTest static void testDeleteContact() {
        // Test data setup
        // Create an account with an opportunity, and then try to delete it
        Account acc = new Account(Name='Test Account');
        insert acc;
        Contact cOk = new Contact(FirstName=acc.Name + ' Contact',LastName=acc.Name,AccountId=acc.Id);
        Contact cWrong = new Contact(FirstName='INVALIDNAME',LastName='INVALIDNAME',AccountId=acc.Id);
        
        // Perform test
        Test.startTest();
        Database.SaveResult resultOk = Database.insert(cOk, false);
        Database.SaveResult resultFail = Database.insert(cWrong, false);
        Test.stopTest();
    }
    
}