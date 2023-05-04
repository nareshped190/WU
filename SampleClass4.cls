public class SampleClass4 {
    Public Integer AccountCount = 10;
    Public SampleClass4(){
        System.debug('--AccountCount 1--'+AccountCount);
        AccountCount = getAccountCount();
        System.debug('--AccountCount 2--'+AccountCount);
    }
    
    Public Void SampleMethod1(String AccName, String AccountNumber){
        Account Acc = new Account();
        Integer AccCount = AccountCount+1;
        Acc.Name = AccName+' '+AccCount;
        Acc.AccountNumber = AccountNumber;
        Try{
        	Insert Acc;
            System.debug('---Acc---'+Acc);
        }Catch(Exception e){
            System.debug('<++++++Exception++++++>'+e.getMessage());
            
        }   
        System.debug('---Acc Current Count---'+getAccountCount());
    }
    
    Public Integer getAccountCount(){
    	return [Select Count() from Account];
    }
}
