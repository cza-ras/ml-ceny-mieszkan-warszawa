# Machine Learning (ML) - Ceny mieszkań Warszawa

## Model (ML) regresji liniowej (linear regression) w BigQuery przewidujący ceny mieszkań w Warszawie na podstawie danych zescrapowanych z serwisu otodom.pl

**Dane**

Dane pochodzą z codziennego scrape'ingu ogłoszeń dla Warszawy z serwisu otodom.pl i zapisywane są w tabeli w BiqQuery przy pomocy dedykowanego skryptu w Python. Zestaw danych zawiera: _Datę scrape'ingu, cenę z oferty, dzielnicę_. Dane następnie agregowane są do widoku ze średnimi cenami ofertowymi dla dzielnicy i dnia ("vw_for_model")

**Tworzenie modelu**

Proces uczenia maszynowego na danych z powyższego widoku za pomocą skryptu "create_model.sql"

**Ewaluacja modelu**

Sprawdzenie statystyk modelu za pomocą skryptu "evaluate_model.sql"

**Wykorzystanie modelu**

Za pomocą próbki danych w tabeli "ml_sample_data" zawierających kilka dat z przyszłości, kilka z przeszłości oraz nazwy dzielnic wykorzystujemy utworzony model "ceny_mieszkan_wwa" do przewidywania ceny w danym dniu, danej dzielnicy - skrypt "use_model.sql"

**Przykładowy wynik w formacie JSON**
```
[{
  "predicted_Cena": "935136.17004370689",
  "DataOferty": "20076",
  "Dzielnica": "Bemowo",
  "DataCzytelna": "2024-12-19"
}, {
  "predicted_Cena": "813765.94010324776",
  "DataOferty": "20440",
  "Dzielnica": "Bemowo",
  "DataCzytelna": "2025-12-18"
}, {
  "predicted_Cena": "1128097.9788708687",
  "DataOferty": "19977",
  "Dzielnica": "Żoliborz",
  "DataCzytelna": "2024-09-11"
}, {
  "predicted_Cena": "1139434.758590579",
  "DataOferty": "19943",
  "Dzielnica": "Żoliborz",
  "DataCzytelna": "2024-08-08"
}, {
  "predicted_Cena": "1129997.0517688394",
  "DataOferty": "20077",
  "Dzielnica": "Mokotów",
  "DataCzytelna": "2024-12-20"
}, {
  "predicted_Cena": "1148770.9301244617",
  "DataOferty": "19915",
  "Dzielnica": "Żoliborz",
  "DataCzytelna": "2024-07-11"
}]
```
