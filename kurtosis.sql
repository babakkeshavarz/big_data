 -- Since the kurtosis of a normal distribution is 3, kurtosis can be defined as kurtosis - 3 to signify its deviation from the normal distribution 
 SELECT
  POW(SUM(Column - AVG), 4) OVER(Group) / (N * POW(STD, 4)) OVER(GROUP) AS KURTOSIS,
  POW(SUM(Column - AVG), 4) OVER(Group) / (N * POW(STD, 4)) OVER(GROUP) - 3 AS KURTOSIS_NORMALIZED,
 FROM
  INPUT_TABLE