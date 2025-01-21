 -- Since the kurtosis of a normal distribution is 3, kurtosis can be defined as kurtosis - 3 to signify its deviation from the normal distribution.
 -- Higher kurtosis corresponds to greater extremity of deviations (or outliers). The more positive the value, the more outliers in the data.
 -- A dataset with positive Kurtosis may indicate that the data is clustered around a specific value, suggesting a fundamental characteristic of the data.
 --  -- in this case, median might be a more appropriate value compared to the mean to mitigate the effect of the outliers.
 SELECT
  POW(SUM(Column - AVG), 4) OVER(Group) / (N * POW(STD, 4)) OVER(GROUP) AS KURTOSIS,
  POW(SUM(Column - AVG), 4) OVER(Group) / (N * POW(STD, 4)) OVER(GROUP) - 3 AS KURTOSIS_NORMALIZED,
 FROM
  INPUT_TABLE