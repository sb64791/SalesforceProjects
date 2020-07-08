public class SOQL_Example_Date {
    
    public List<Opportunity> opptyList 	{get; set;}
    
    public SOQL_Example_Date() {
        opptyList = new List<Opportunity>();
        opptyList = [select Id, Name, stageName, Amount, CloseDate, CreatedDate from Opportunity];
    }
    
    public void getOpptyRecordsClosedLastYear() {
    	opptyList =  [select Id, Name, stageName, Amount, CloseDate, CreatedDate from Opportunity where CloseDate = LAST_YEAR];   
    }
    
    public void getOpptyRecordsClosedLastMonth() {
    	opptyList =  [select Id, Name, stageName, Amount, CloseDate, CreatedDate from Opportunity where CreatedDate > LAST_MONTH];   
    }
    
    public void getOpptyRecordsClosedThisWeek() {
    	opptyList =  [select Id, Name, stageName, Amount, CloseDate, CreatedDate from Opportunity where CreatedDate = THIS_WEEK];   
    }
    
    

}