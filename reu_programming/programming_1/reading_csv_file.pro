
; CD to this this location:
cd, FILE_DIRNAME(ROUTINE_FILEPATH())

; Read the data into an IDL structure
data = READ_CSV('data/test_data.csv', HEADER=hdr)

; Print the first 5 lines:
print, hdr
for i=0, 4 do begin
  print, data.field1[i], data.field2[i]
endfor

; Print the last 5 lines:
; Note the use of negative indices, and the negative for-loop increment.
print, hdr
for i=-1, -5, -1 do begin
  print, data.field1[i], data.field2[i]
endfor

; Selecting a column
print, data.field1
; Or:
print, data.(0)

; Print the min and max of a column
print, max(data.field1)
print, min(data.field1)

; Converting a struct to a Hash()
h = hash()
foreach column, hdr, i do begin
  h[column] = data.(i)
endforeach

; Print the column names in the Hash()
print, 'Column names: '
print, h.keys()

; Add a new column
h['cos(x)'] = cos(h['x'])

; Print the first 5 lines:
print, 'x  :  ', 'sin(x)  :  ', 'cos(x)'
for i=0, 4 do begin
  print, h['x', i], h['sin(x)', i], h['cos(x)', i]
endfor

; Indexing into a struct:
print, data.field1[42]

; Indexing into a Hash():
print, h['x', 42]

; Plot the data
p1 = plot(h['x'], h['sin(x)'], color='blue', linestyle='-', thick=3, name='$sin(x)$')
p2 = plot(h['x'], h['cos(x)'], color='green', linestyle='--', thick=3,  name='$cos(x)$', /OVERPLOT)
!null = legend(target=[p1, p2])

end