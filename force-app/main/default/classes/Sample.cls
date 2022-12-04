//class
public with sharing class Sample {
    
    //adding two number
    public static integer add(integer a, integer b){
        return a+b;
    } 
    
    //subtracting two numbers
    public static integer sub(integer a, integer b){
        return a-b;
    }
    
    //divide two numbers
    public static double divide(integer a, integer b){
        double c=0;
        try{
            c = a/b;
        }catch(exception e){
            system.debug('divide by zero');
        }
        return c;
    }
    
    //multiply two numbers
    public static integer multiply(integer a, integer b){
        return a*b;
    }
    
    
    
    
    
}