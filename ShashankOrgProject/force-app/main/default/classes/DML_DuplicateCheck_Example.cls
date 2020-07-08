public class DML_DuplicateCheck_Example {
    
    public String accName		{set; get;}
    public String accInd		{set; get;}
    public String rating		{set; get;}
    public String accPhone 		{set; get;}
    
    public PageReference accountCreation() {
        Integer count = [select count() from Account where Name = :accName ];
        system.debug('count ============= '+count);
        PageReference newAccountPage;
        if(count > 0) {
            ApexPages.Message msg = new ApexPages.Message(ApexPages.Severity.Error, 'Duplicate Record Exists with this Name');
            ApexPages.addMessage(msg);
        }
        else{
            Account acc =  new Account();
            acc.Name = accName;
            acc.Industry = accInd;
            acc.Rating = rating;
            acc.Phone = accPhone;
            
            insert acc;
            
            newAccountPage = new PageReference('/'+acc.Id);
        }
        
        
      return newAccountPage;  
    }
    
    public void cancel() {
        
        accName = null;
        accInd = null;
        rating = null;
        accPhone = null;
    }

}