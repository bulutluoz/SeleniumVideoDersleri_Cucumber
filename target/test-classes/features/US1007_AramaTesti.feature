
  Feature: US1007 kullanici arama yaptigi urunun bulundugunu test eder
    
    Scenario: TC14 kullanici aradigi kelimeyi barindiran urun bulabildigini test eder
      
      Given kullanici "toUrl" anasayfaya gider
      When arama kutusuna config dosyasindaki toAranacakKelime yazip aratir
      And kodlari 10 saniye bekletir
      Then ilk urunu tiklar
      And acilan sayfadaki urun isminde case sensitive olmadan config dosyasindaki toAranacakKelime oldugunu test eder
      And sayfayi kapatir