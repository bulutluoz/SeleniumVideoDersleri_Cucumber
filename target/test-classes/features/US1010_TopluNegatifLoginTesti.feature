
  Feature: US1010 Belirlenen bilgilerle giris yapilamadigi kontrol edilir

    Scenario Outline: TC17 belirlenen gecersiz bilgilerle giris yapilamamali

      Given kullanici "toUrl" anasayfaya gider
      Then account linkine basar
      When email olarak "<verilenEmail>" girer
      And password olarak "<verilenPassword>" girer
      And kodlari 1 saniye bekletir
      And signIn butonuna basar
      Then sisteme giris yapilamadigini test eder
      And sayfayi kapatir

      Examples:
        |verilenEmail    		|verilenPassword    |
        |toGecerliMail   		|toGecersizPassword |
        |toGecersizMail   		|toGecersizPassword |
        |toGecersizMail2   		|toGecersizPassword2|
        |toGecersizMail   		|toGecersizPassword2|
        |toGecersizMail   		|toGecerliPassword  |
        |toGecersizMail2   		|toGecersizPassword |