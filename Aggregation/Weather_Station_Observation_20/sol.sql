/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
Weather station observation 20
 */
SELECT round(AVG(dd.lat_n),4) as median_val
FROM (
SELECT d.lat_n, @rownum:=@rownum+1 as `row_number`, @total_rows:=@rownum
  FROM station d, (SELECT @rownum:=0) r
  WHERE d.lat_n is NOT NULL
  -- put some where clause here
  ORDER BY d.lat_n
) as dd
WHERE dd.row_number IN ( FLOOR((@total_rows+1)/2), FLOOR((@total_rows+2)/2) );
