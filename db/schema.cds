namespace com.esegura;

using {
    cuid,
    managed
} from '@sap/cds/common';

type Address {
    street     : String;
    city       : String;
    state      : String(2);
    postalCode : String(5);
    country    : String(3);
};

entity Customer : cuid, managed {
    name     : String(100);
    lastName : String(100);
    phone    : String;
    email    : String;
    address  : Address;
    payment  : Association to many Payment
                   on payment.customer = $self;
};

entity Payment : cuid, managed {
    amountPaid : Double;
    currency   : String;
    datePaid   : Date;
    customer   : Association to Customer;
};
