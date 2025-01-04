
  Feature: US1004 Kullanici parametre kullanarak istedigi kelimeyi aratir


    Scenario: TC08 Kullanici istedigi kelimeyi aratabilmeli

      Given kullanici testotomasyonu anasayfaya gider
      When arama kutusuna "bag" yazip aratir
      Then arama sonucunda urun bulunabildigini test eder
      And kodlari 5 saniye bekletir
      And sayfayi kapatir


    Scenario: TC09 kullanici bazi kelimeleri bulamamali

      Given kullanici testotomasyonu anasayfaya gider
      When arama kutusuna "Cokoprens" yazip aratir
      Then arama sonucunda urun bulunamadigini test eder
      And kodlari 1 saniye bekletir
      And sayfayi kapatir
