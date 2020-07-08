public class DML_Acc_Con_Oppty_Insert_example {
    
    public Account acc					{set; get;}
    public contact con					{set; get;}
    public Opportunity oppty			{set; get;}
    
    public DML_Acc_Con_Oppty_Insert_example() {
        
        acc= new Account();
        con = new Contact();
        oppty = new Opportunity();
    }
    
    public PageReference createAccConOppty() {
    insert acc;
    con.AccountId = acc.Id;
    insert con;
    oppty.AccountId = acc.Id;
    insert oppty;
        
    PageReference newAccountPage = new PageReference('/'+acc.Id);
    return newAccountPage;    
    }
    
    public void reset() {
        
        acc= new Account();
        con = new Contact();
        oppty = new Opportunity();
    }

}