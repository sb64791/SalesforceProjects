public class DML_Example_01 {
    
    public void accountCreation() {
        
        Account acc = new Account();
        acc.Name = 'Sb Tech Trainings';
        acc.Industry = 'Biotechnology';
        acc.Rating = 'Hot';
        acc.Phone = '7789172930';
        
        insert acc; 
        
        
        
        Account acc1 = new Account(Name = 'Test Account 777',
                                  Industry = 'Energy',
                                  Rating = 'Warm',
                                  Phone = '897856');
        
        insert acc1;   //after successfull insertion the salesforce will assign an Id to this inserted account.
        
        system.debug('id of the record created'+acc1.Id);
        
        Account acc2 = new Account(Id = acc1.Id);
        
        system.debug('cloned account from acc1======'+acc2.Id);
        
        
        
    }

}