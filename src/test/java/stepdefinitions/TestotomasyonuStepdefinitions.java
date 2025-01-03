package stepdefinitions;

import io.cucumber.java.en.*;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.Keys;
import pages.TestotomasyonuPage;
import utilities.ConfigReader;
import utilities.Driver;

public class TestotomasyonuStepdefinitions {

    TestotomasyonuPage testotomasyonuPage = new TestotomasyonuPage();

    @Given("kullanici testotomasyonu anasayfaya gider")
    public void kullanici_testotomasyonu_anasayfaya_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("toUrl"));
    }

    @When("arama kutusuna phone yazip aratir")
    public void arama_kutusuna_phone_yazip_aratir() {
        testotomasyonuPage.aramaKutusu.sendKeys("phone" + Keys.ENTER);
    }

    @Then("arama sonucunda urun bulunabildigini test eder")
    public void arama_sonucunda_urun_bulunabildigini_test_eder() {

        String bulunamadiYazisi = ConfigReader.getProperty("toBulunamadiYazisi");
        String actualAramaSonucu = testotomasyonuPage.aramaSonucElementi.getText();

        Assertions.assertNotEquals(bulunamadiYazisi,actualAramaSonucu);
    }

    @Then("sayfayi kapatir")
    public void sayfayi_kapatir() {
        Driver.quitDriver();
    }

    @When("arama kutusuna dress yazip aratir")
    public void aramaKutusunaDressYazipAratir() {
        testotomasyonuPage.aramaKutusu.sendKeys("dress" + Keys.ENTER);
    }

    @When("arama kutusuna travel yazip aratir")
    public void aramaKutusunaTravelYazipAratir() {
        testotomasyonuPage.aramaKutusu.sendKeys("travel" + Keys.ENTER);
    }

    @Then("ilk urunu tiklar")
    public void ilk_urunu_tiklar() {
        testotomasyonuPage.bulunanUrunElementleriList.get(0).click();
    }

    @Then("acilan sayfadaki urun isminin case sensitive olmadan phone icerdigini test eder")
    public void acilan_sayfadaki_urun_isminin_case_sensitive_olmadan_phone_icerdigini_test_eder() {

        String expectedIsimIcerik = "phone";
        String actualUrunIsmi = testotomasyonuPage.ilkUrunSayfasindakiIsimElementi
                                                    .getText()
                                                    .toLowerCase();

        Assertions.assertTrue(actualUrunIsmi.contains(expectedIsimIcerik));

    }




}
