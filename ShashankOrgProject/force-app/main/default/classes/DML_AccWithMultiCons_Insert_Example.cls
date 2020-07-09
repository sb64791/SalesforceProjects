// Desc : Create an account with Multiple contacts added to the new account
// Added this comment for GIT
public class DML_AccWithMultiCons_Insert_Example {
    
    public Account acc				{set; get;}
    public List<Contact> conList	{set; get;}
    
    public DML_AccWithMultiCons_Insert_Example() {
        acc = new Account();
        conList = new List<Contact>();
        addNewContactRow();
    }
    
    public void addNewContactRow() {
        Contact con = new Contact();
        conList.add(con);
    }
    
    public PageReference createAccWithMultipleContacts() {
    	insert acc;
        for(Contact con : conList) {
            con.AccountId = acc.Id;
        }
        insert conList;
        PageReference newAccPage = new PageReference('/'+acc.Id);
    	return newAccPage;
    }
    
    public void reset() {
       acc = new Account();
       conList = new List<Contact>(); 
    }

}