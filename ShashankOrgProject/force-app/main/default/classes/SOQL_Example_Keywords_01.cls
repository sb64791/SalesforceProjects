public class SOQL_Example_Keywords_01 {
    
    public List<Account> accList	{get; set;}
    
    public SOQL_Example_Keywords_01() {
        
        accList = new List<Account>();
        accList = [select Id, Name, Industry, Rating, Phone from Account];
    }
    /* Author : Sudhakar Botta (SB)
     * Method : fetchAllTheRows
     * Parameters : No parameters
     * Return Type : void
     * Description : this method will fetch all the records from object includiong records in recycle bin
     */
    public void fetchAllTheRows() {
        
        accList = [select Id, Name, Industry, Rating, Phone from Account ALL ROWS ];
        
    }
    
    /* Author : Sudhakar Botta (SB)
     * Method : fetchOnlyRecycleBinAccountRecords
     * Parameters : No parameters
     * Return Type : void
     * Description : this method will fetch all account records only from recycle bin
     */
    
    public void fetchOnlyRecycleBinAccountRecords() {
        
        accList = [select Id, Name, Industry, Rating, Phone from Account ALL ROWS ];
        
    }
    
    public void fetchtRecordsOrderBy() {
        
        accList = [select Id, Name, Industry, Rating, Phone from Account order by Name ASC ];
        
    }
    

}