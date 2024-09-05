CREATE MODEL datafreak.ceny_mieszkan_wwa OPTIONS(
  model_type='LINEAR_REG',
  input_label_cols=['Cena']) AS
    SELECT 
    Dzielnica, 
    Cena, 
    DataOferty
    FROM `datafreak-pl.datafreak.vw_for_model`