# Sanal Pos Java Entegrasyonu:

## Sanal Pos Nedir?

Sanal POS, üye işyerinin bankanın otorizasyon sistemine entegre olarak işlem yapabilmesini sağlayan yapıdır.

## Iframe veya Uygulama İçi Ödeme Seçenekleri

Proje iframe ve uygulama içi ödeme seçenekleri ile sunulmaktadır.

Örnek projeye ulaşmak için lütfen [_**tıklayınız**_][projenin host edildiği adres].

## Cookie Configürasyonu

CSRF(Cross Site Request Forgery) tehlikesi sebebiyle tarayıcılar, _SameSite Cookie_'nin varsayılan değerini "_None_" yerine "_Lax_" olarak değiştirdiler. Bu değişiklik Sanal Pos uygulamalarının çalışmasını engelleyeceğinden "_None_" ve "_Secure_" olarak ayarlandı. 

## 3D Host

Güvenli Ödeme Sayfası veya Ortak Ödeme Sayfası olarak da bilinen bu model kredi kartının 3D Secure doğrulamasının ve üye işyeri anlaşmalı bankasına ödemenin yapıldığı, doğrulama ve ödeme sonuç bilgilerinin ise Sanal POS uygulamasına iletildiği modeldir. Ayıca üye işyerinin SSL sertifikası bulunmuyor veya kredi kart bilgilerini kendi sistemi üzerinden almak istemiyorsa da tercih etmesinin uygun olacağı modeldir.

## Ödeme Modeli

Bu modelde, üye işyerine ait Sanal POS uygulaması sadece alışveriş bilgilerini gönderir. Kredi kartının doğrulanması banka bazında özelleştirilmiş yeni bir güvenli pencere aracılığıyla yapılır.

**Örnek Akış Şeması**:   
![Örnek Akış Şeması](https://vpostest.qnbfinansbank.com//Help/assets/Images/3d1flow.png)

### PAYCORE tarafından hazırlanmıştır.

[projenin host edildiği adres]:(https://vpos-iframe-java.herokuapp.com/PaymentPOC.jsp)