# VPOS Java Implementation:

## What is VPOS?

VPOS (Virtual Point of Sale) is a structure that enables merchants to operate in integration with the bank's authorization system.

## Iframe or in-App Payment Options

This project comes with an iframe and in-App Payment options.

To view example project, please [_**click**_][host address].

## Cookie Configuration

Due to the danger of CSRF (Cross Site Request Forgery), browsers changed the default value of _SameSite Cookie_ from "_None_" to "_Lax_". Since this change will prevent Virtual Pos applications from running, it has been set to "_None_" and "_Secure_".

## 3D Host

This model, which is also known as Secure Payment Page or Mutual Payment Page, is the model in which the credit card 3D Secure verification and the payment to the merchant contracted bank are made, and the verification and payment result information is transferred to the Virtual POS application. Besides, it is the appropriate model to be selected if the merchant does not have an SSL certificate or does not want to receive the credit card information through its own system.

## Payment Model

In this model, the Virtual POS belonging to the merchant only sends the shopping information. The verification of the credit card is done via a new, secure window, which has been customized according to the bank.

**3D Host Model and Sample Flowchart**:   
![Sample Flowcharth](https://vpostest.qnbfinansbank.com/Help\assets\Images\3d1flow.png)

### Made by PAYCORE.

[host address]:(https://vpos-iframe-java.herokuapp.com/PaymentPOC.jsp)