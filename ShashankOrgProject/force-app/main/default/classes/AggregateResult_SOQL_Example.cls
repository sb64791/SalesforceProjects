public class AggregateResult_SOQL_Example {
    
    public void countOfAllAccountRecords(){
        
        List<Account> accList = [select id, name from Account];
        
        Integer accRecs = [select count() from Account where Industry = 'Energy'];
        system.debug('Count of all account recoords with industry energy======>>>> '+accRecs);
        
        AggregateResult result = [select count(phone) from Account];
        
        system.debug('Count of phone account records====>>>>>'+result);
        
        AggregateResult result1 = [select count(phone), sum(AnnualRevenue), min(AnnualRevenue), max(AnnualRevenue) from Account];
        
        system.debug('Count of phone,sum,min,max account records====>>>>>'+result1);
        
        system.debug('Count of result1 ======>>>>> '+result1.get('expr0'));
        system.debug('sum of result1 ======>>>>> '+result1.get('expr1'));
        system.debug('Min of result1 ======>>>>> '+result1.get('expr2'));
        system.debug('Max of result1 ======>>>>> '+result1.get('expr3'));
        
    }

}