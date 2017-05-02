@isTest
public class TestVerifyDate {
	@isTest
    static void testCheckDates() {
        Date d1 = Date.today();
        Date d2 = Date.today().addDays(60);
        VerifyDate.CheckDates(d1,d2);
        VerifyDate.CheckDates(d1,d1);
    }
}