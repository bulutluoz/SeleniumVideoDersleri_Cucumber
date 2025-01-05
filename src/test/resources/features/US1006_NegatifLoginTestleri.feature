

  Feature: US1006 kullanici yanlis bilgilerle giris yapamaz

    Scenario: TC11 kullanici gecerli email ve gecersiz password ile giris yapamamali
      Given kullanici testotomasyonu anasayfaya gider
      Then account linkine basar
      And email olarak "toGecerliMail" girer
      And password olarak "toGecersizPassword" girer
      Then signIn butonuna basar
      When sisteme giris yapilamadigini test eder



    Scenario: TC12 kullanici gecersiz email ve gecerli password ile giris yapamamali
      Given kullanici testotomasyonu anasayfaya gider
      Then account linkine basar
      And email olarak "toGecersizMail" girer
      And password olarak "toGecerliPassword" girer
      Then signIn butonuna basar
      When sisteme giris yapilamadigini test eder



    Scenario: TC13 kullanici gecersiz email ve gecersiz password ile giris yapamamali
      Given kullanici testotomasyonu anasayfaya gider
      Then account linkine basar
      And email olarak "toGecersizMail" girer
      And password olarak "toGecersizPassword" girer
      Then signIn butonuna basar
      When sisteme giris yapilamadigini test eder

