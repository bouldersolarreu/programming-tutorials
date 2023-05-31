
; CD to this this location:
cd, FILE_DIRNAME(ROUTINE_FILEPATH())

; Read the data into an IDL structure
data = READ_CSV('data/noaa_goes12_xrs_1m.csv', HEADER=hdr)

; Check the header information
print, hdr
help, hdr

; Check the data
help, data, /STRUCTURES

; Print the first 5 lines:
print, hdr
for i=0, 4 do begin
  print, data.field1[i], data.field2[i], data.field3[i]
endfor

; Print the last 5 lines:
; Note the use of negative indices, and the negative for-loop increment.
print, hdr
for i=-1, -5, -1 do begin
  print, data.field1[i], data.field2[i], data.field3[i]
endfor

; Convert the dates for plotting:
TIMESTAMPTOVALUES, data.field1 + 'Z', DAY=day, HOUR=hour, MINUTE=minute, MONTH=month, OFFSET=offset, SECOND=second, YEAR=year
julian_dates = JULDAY(month, day, year, hour, minute, second)

; Formatter for the axes labels
!null = LABEL_DATE(DATE_FORMAT=['%Y-%N-%D !C %H:%I:%S'])

; Hint 1: Why the suspicious value at -100000
p = plot(julian_dates, data.field2, xtitle=hdr[0], ytitle=hdr[1], $
  XTICKFORMAT='LABEL_DATE') ; Use the axis formatter here.
  
; How to get rid of the bad value?
w = where(data.field2 ne -100000)
p = plot(julian_dates[w], data.field2[w], xtitle=hdr[0], ytitle=hdr[1], $
  XTICKFORMAT='LABEL_DATE')

; Try a ylog axis
p = plot(julian_dates[w], data.field2[w], xtitle=hdr[0], ytitle=hdr[1], $
  XTICKFORMAT='LABEL_DATE', /YLOG)

end