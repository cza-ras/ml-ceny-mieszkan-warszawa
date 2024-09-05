#Machine Learning (ML) - Ceny mieszkań Warszawa

##Model (ML) regresji liniowej (linear regression) w BigQuery przewidujący ceny mieszkań w Warszawie na podstawie danych zescrapowanych z serwisu otodom.pl

**Dane**
Dane pochodzą z codziennego scrape'ingu ogłoszeń dla Warszawy z serwisu otodom.pl i zapisywane są w tabeli w BiqQuery przy pomocy dedykowanego skryptu w Python. Zestaw danych zawiera: _Datę scrape'ingu, cenę z oferty, dzielnicę_. Dane następnie agregowane są do widoku ze średnimi cenami ofertowymi dla dzielnicy i dnia ("vw_for_model")

**Tworzenie modelu**
Proces uczenia maszynowego na danych z powyższego widoku za pomocą skryptu "create_model.sql"

**Ewaluacja modelu**
Sprawdzenie statystyk modelu za pomocą skryptu "evaluate_model.sql"

**Wykorzystanie modelu**
Za pomocą próbki danych w tabeli "ml_sample_data" zawierających kilka dat z przyszłości, kilka z przeszłości oraz nazwy dzielnic wykorzystujemy utworzony model "ceny_mieszkan_wwa" do przewidywania ceny w danym dniu, danej dzielnicy - skrypt "use_model.sql"
