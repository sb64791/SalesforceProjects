public class Parent_Child_Example {
    
    public String accName		{set; get;}
    public String accInd 	{set; get;}
    public List<Account> accListWithChildOpptyContacts	{set; get;}
    
    public void getOpptyContactsByAccount() {
        List<Account> accList = new List<Account>();
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
        system.debug('size of the search query == '+accList.size());
        accListWithChildOpptyContacts = [select Id, Name, Industry, (select Name from Opportunities), (select Name from Contacts) from Account where Id In :accList ];
        system.debug('size of the accListWithChildOpptyContacts query == '+accListWithChildOpptyContacts.size());
  }

}