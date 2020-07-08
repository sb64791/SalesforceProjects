public class SOQL_Example_01 {
    
    public List<Opportunity> opptyList  {get; set;}
    
    public SOQL_Example_01() {
        opptyList = new List<Opportunity>();
        opptyList = [select Id, Amount, CloseDate, LeadSource, StageName, Name from Opportunity];
        
    }
    
    public void getOpptyRecordsGreaterThanFifty(){
        
        opptyList = [select Id, Amount, CloseDate, LeadSource, StageName, Name from Opportunity 
                     where Amount > 50000 AND StageName != 'Closed Won'];
        
    }
    
    public void getLimitRecords(){
         opptyList = [select Id, Amount, CloseDate, LeadSource, StageName, Name from Opportunity Limit 5];
    }
    
    public void getOffSetRecords(){
        opptyList = [select Id, Amount, CloseDate, LeadSource, StageName, Name from Opportunity Limit 10 OffSet 5 ];
    }
    
    

}