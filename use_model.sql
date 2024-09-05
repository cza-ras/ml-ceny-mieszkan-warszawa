SELECT
*
FROM
  ML.PREDICT(MODEL `datafreak.ceny_mieszkan_wwa`,
  (
  select 
  UNIX_DATE(CAST(DataOferty as DATE)) as DataOferty, 
  Dzielnica,
  DataOferty as DataCzytelna
  FROM `datafreak.ml_sample_data`
  ))