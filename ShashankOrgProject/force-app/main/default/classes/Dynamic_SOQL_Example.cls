public class Dynamic_SOQL_Example {
    
    public String accName	{get; set;}
    public String accInd	{get; set;}
    public List<Account> accList 	{get; set;}
    
    public void dynamicSearch() {
        accList = new List<Account>();
        String queryString = 'select id, Name, Industry, Rating, Phone from Account';
        
        if( (accName != null && accName != '') && (accInd != null && accInd != '') ) {
            
            queryString = queryString + ' where name=\''+accName+'\' and Industry =\''+accInd+'\'';
            //accList = [select id,name,industry,rating,phone from Account where Name = 'GenePoint' AND Industry = 'Biotechnology'];
        }
        
        else {
            if(accName != null && accName != '') {
                queryString = queryString + ' where name=\'' + accName +'\'';
            }
            else {
                if(accInd != null && accInd != ''){
                    queryString = queryString + ' where industry = \'' + accInd + '\'';
                }
            }
        }
        accList = Database.query(queryString);
    }

}