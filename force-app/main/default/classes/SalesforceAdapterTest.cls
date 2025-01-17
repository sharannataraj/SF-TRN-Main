@isTest
public class SalesforceAdapterTest {
    
    @isTest static void somTestSalesforceAdapterCapture() {

        Test.startTest();

        String authId = '013456ABCDEFG';  
        Double amt = 25;

        commercepayments.CaptureRequest cr = new commercepayments.CaptureRequest(amt, authId);
        commercepayments.RequestType rt = commercepayments.RequestType.Capture; 

        SalesforceAdapter pa = new SalesforceAdapter();
        commercepayments.PaymentGatewayContext ctx = new commercepayments.PaymentGatewayContext(cr, rt);
        commercepayments.GatewayResponse resp = pa.processRequest(ctx);
      
        Test.stopTest();

        System.assert(resp != null, 'Response is not null.');
    }
    
    @isTest static void somTestSalesforceAdapterRefund() {

        Test.startTest();

        String capId = '013456ABCDEFG'; 
        Double amt = 25;

        commercepayments.ReferencedRefundRequest rr = new commercepayments.ReferencedRefundRequest(amt, capId);
        commercepayments.RequestType rt = commercepayments.RequestType.ReferencedRefund; 

        SalesforceAdapter pa = new SalesforceAdapter();
        commercepayments.PaymentGatewayContext ctx = new commercepayments.PaymentGatewayContext(rr, rt);
        commercepayments.GatewayResponse resp = pa.processRequest(ctx);
      
        Test.stopTest();

        System.assert(resp != null, 'Response is not null.');
    }
    @isTest static void somTestSalesforceAdapterCreateTokenizeResponse() {

        Test.startTest();

        //String capId = '013456ABCDEFG'; 
       // Double amt = 25;

        commercepayments.PaymentMethodTokenizationRequest  rr = new commercepayments.PaymentMethodTokenizationRequest();
        commercepayments.RequestType rt = commercepayments.RequestType.Tokenize; 

        SalesforceAdapter pa = new SalesforceAdapter();
        commercepayments.PaymentGatewayContext ctx = new commercepayments.PaymentGatewayContext(rr, rt);
        commercepayments.GatewayResponse resp = pa.processRequest(ctx);
      
        Test.stopTest();

        System.assert(resp != null, 'Response is not null.');
    }

    @isTest static void somTestSalesforceAdapterSalesResponse() {

        Test.startTest();

        Double amt = 25;

        commercepayments.SaleRequest  rr = new commercepayments.SaleRequest(amt);
        commercepayments.RequestType rt = commercepayments.RequestType.Sale; 

        SalesforceAdapter pa = new SalesforceAdapter();
        commercepayments.PaymentGatewayContext ctx = new commercepayments.PaymentGatewayContext(rr, rt);
        commercepayments.GatewayResponse resp = pa.processRequest(ctx);
      
        Test.stopTest();

        System.assert(resp != null, 'Response is not null.');
    }
    @isTest static void somTestSalesforceAdapterAuthResponse() {

        Test.startTest();

        Double amt = 25;

        commercepayments.AuthorizationRequest rr = new commercepayments.AuthorizationRequest (amt);
        commercepayments.RequestType rt = commercepayments.RequestType.Authorize; 

        SalesforceAdapter pa = new SalesforceAdapter();
        commercepayments.PaymentGatewayContext ctx = new commercepayments.PaymentGatewayContext(rr, rt);
        commercepayments.GatewayResponse resp = pa.processRequest(ctx);
      
        Test.stopTest();

        System.assert(resp != null, 'Response is not null.');
    }

    @IsTest
    public static void triggerException() {
        Test.startTest();

        Double amt = null;

        commercepayments.AuthorizationRequest rr = new commercepayments.AuthorizationRequest (amt);
        commercepayments.RequestType rt = commercepayments.RequestType.Authorize; 

        SalesforceAdapter pa = new SalesforceAdapter();
        commercepayments.PaymentGatewayContext ctx = new commercepayments.PaymentGatewayContext(rr, rt);
        commercepayments.GatewayResponse resp = pa.processRequest(ctx);
      
        Test.stopTest();

        System.assert(resp != null, 'Response is not null.');
    }

}