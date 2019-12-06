public with sharing class ListButtonController{

    private ApexPages.StandardSetController standardSetController;
    
    public ListButtonController(ApexPages.StandardSetController standardSetController)
    {
        this.standardSetController = standardSetController;
    }
    
    
    public PageReference doSomething()
    {
        
        PageReference pageRef = ApexPages.currentPage();
         Apex code for handling records from a List View goes here
        ListLiveText__SMS_Message__c listViewRecords = (ListLiveText__SMS_Message__c) standardSetController.getRecords();
        ListLiveText__SMS_Message__c selectedListViewRecords = (ListLiveText__SMS_Message__c) standardSetController.getSelected();
        Boolean hasMore = standardSetController.getHasNext(); 
        
        LiveText__SMS_Message__c tempObj = new LiveText__SMS_Message__c();
        ListLiveText__SMS_Message__c SMStOSend = new ListLiveText__SMS_Message__c ();
        
        ListLiveText__SMS_Message__c bufferobject= new ListLiveText__SMS_Message__c ();
        Listid tempids = new listid();
        
        for (LiveText__SMS_Message__c oneObj selectedListViewRecords){
            tempids.add(oneObj.id);
        }    
        
        bufferobject = [select LiveText__To_Phone_Number__c, LiveText__Message__c, LiveText__Object_Id__c, Case__c, LiveText__Contact__c 
        from LiveText__SMS_Message__c where id in tempids];
        
        
        for (LiveText__SMS_Message__c oneObj bufferobject ){
            tempObj = new LiveText__SMS_Message__c();
            tempObj.LiveText__To_Phone_Number__c = oneObj.LiveText__To_Phone_Number__c;
            tempObj.LiveText__Message__c = oneObj.LiveText__Message__c;
            tempObj.LiveText__LiveText_Number__c = 'a0E1I000000LZR1UAO';
            tempObj.LiveText__Is_ITR__c = true;
            tempObj.LiveText__Object_Id__c = oneObj.LiveText__Object_Id__c;
            tempObj.LiveText__Message_Status__c = 'New';
            tempObj.Case__c = oneObj.Case__c;
            tempObj.LiveText__Contact__c = oneObj.LiveText__Contact__c ;

            SMStOSend.add(tempObj);
        }
        
        insert SMStOSend;
        return null;
    }
}