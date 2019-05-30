# SFDC-LiveMessagePOC-Stubcodes

This is a backup of code written for a POC of Salesforce LiveMessage. LiveMessage is a product available from Salesforce enabling sending of text messages. 
The project did get implemented eventually. Only a snapshot of the code has been saved here. Final code has not been saved since it contains proprietary client information

Purpose of the POC was to 
1) Demostrate feasibility of sending out SMSes from Salesforce using Live Message. Note: Due to compliance reasons, client did not wish to have an agent talking to the end customer via chat. Therefore, SMSes had to be sent out programatically with a disclaimer that replies would not be monitored. 
2) A Secondary goal was to send out Salesforce hosted content via SMS to external parties. Content was stored in Attachments. File #3 shows how to publish an attachment via CRM content. Code may be tweaked for Salesforce Files. 

Explanation of Files:

    'ResendSMS Button Page' & 'Resend SMS Controller' : 
        List button VF Page and Controller to invoke send of a message via a button push. 
    (the prerequiste is to set up a number. This is documented in the Live Message Admin guide. Id of the entry was hardcoded for POC purposes)
    
     'Sample code- invoke Live Message to send an SMS message programatically' : 
        Stub code tested via Execute Anonymous
     
     'Sample code - publish an attachement as CRM content' : 
        Stub code tested via Execute Anonymous. Publishes an attachment as a CRM content link.
