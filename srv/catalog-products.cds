using {com.esegura as schema} from '../db/schema';

define service CustomerPayments {

    entity CustomerSrv as projection on schema.Customer;

    @readonly
    entity PaymentSrv  as projection on schema.Payment;

}
