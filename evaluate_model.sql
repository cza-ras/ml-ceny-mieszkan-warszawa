SELECT
  *
FROM
  ML.EVALUATE(MODEL `datafreak.ceny_mieszkan_wwa`,
    (
    SELECT
      Cena,
      Dzielnica,
      DataOferty
    FROM
      `datafreak.vw_for_model`))