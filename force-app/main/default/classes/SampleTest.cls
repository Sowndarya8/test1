@isTest
public class SampleTest {

    private static testMethod void add_addTwoNumbersAndReturnsResult(){
        User stduser = [Select Id, Name, Profile.Name From User Where Profile.Name like '%standard user%'];
        system.runAs(stduser){
            integer result = Sample.add(10, 20);
            system.assertEquals(30, result); 
        }
    	
        User sysuser = [Select Id, Name, Profile.Name From User Where Profile.Name like '%system administrator%'];
        system.runAs(sysuser){
            integer result = Sample.add(10, 20);
            system.assertEquals(30, result); 
        }
        
    }
    
    private static testMethod void sub_subtractsTwoNumbersAndReturnsResult(){
        User stduser = [Select Id, Name, Profile.Name From User Where Profile.Name like '%standard user%'];
        system.runAs(stduser){
            integer result = Sample.sub(10, 20);
            system.assertEquals(-10, result); 
        }
    	
        User sysuser = [Select Id, Name, Profile.Name From User Where Profile.Name like '%system administrator%'];
        system.runAs(sysuser){
            integer result = Sample.sub(20, 10);
            system.assertEquals(10, result); 
        }
        
    }
    
    private static testMethod void divide_dividesTwoNumbersAndReturnsResult(){
        User stduser = [Select Id, Name, Profile.Name From User Where Profile.Name like '%standard user%'];
        system.runAs(stduser){
            double result = Sample.divide(20, 10);
            system.assertEquals(2.0, result); 
        }
        
        User sysuser = [Select Id, Name, Profile.Name From User Where Profile.Name like '%system administrator%'];
        system.runAs(sysuser){
            double result = Sample.divide(10, 0);
        }
        
    }    
    
    
}