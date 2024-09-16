public with sharing class SomeComponentController {

    @AuraEnabled
    // wait up to 15 seconds
    public static Object methodName(){
        Datetime now = System.now();
        Integer randomInt = Crypto.getRandomInteger();
        randomInt >>>= 28;
        Datetime later = Datetime.newInstance(now.getTime()).addSeconds(randomInt);
        for (;;){
            if (System.now() > later){
                break;
            }
        }
        return new Map<String, Object>{
            'now' => now,
            'later' => later
        };
    }
}