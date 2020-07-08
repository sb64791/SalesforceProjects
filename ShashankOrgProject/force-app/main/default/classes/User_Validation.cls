public class User_Validation {
   
   
    public string userUsername 	{set;get;}
    public string UserEmail 	{set;get;}
    public integer resultSize 	{set;get;}
    public boolean noValues 	{set;get;}
   
    public List<User> userList {set;get;}
   
    public void Verification(){
        userList = new List<User>();
        string queryuser= null;
        
        if((userUsername == null || userUsername == '') && (userEmail != null || userEmail !='')) {
            noValues = true;
        }
       
        if((userUsername != null && userUsername != '' ) && (userEmail != null && userEmail !='') ){
            noValues = false;
            queryuser= 'select id, Username, Alias, Email, IsActive, UserRoleId from User where UserName=\'' + userUsername +'\' and Email =\'' + userEmail+'\'';
        }
           
        else {
            if(userUsername !=null && userUsername != '' ){
                noValues = false;
                 queryuser= 'select id, Username, Alias, Email, IsActive, UserRoleId from User where UserName=\'' + userUsername +'\'';
            }
            else {
                if(userEmail != null && userEmail !='' ){
                    noValues = false;
                  queryuser= 'select id, Username, Alias, Email, IsActive, UserRoleId from User where Email=\'' + userEmail +'\'';  
                }
            }
        }
       
        if(queryuser != null) {
        	userList = Database.query(queryuser);
        }
        if(userList.size() <= 0) {
            resultSize = 0;
        }
        else {
            resultSize = userList.Size();
        }
        
        
       
    }
   
}