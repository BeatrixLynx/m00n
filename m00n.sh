#!/usr/bin/env bash

#  ____             _      
# |  _ \           | |     
# | |_) | ___  __ _| |     
# |  _ < / _ \/ _` | |     
# | |_) |  __/ (_| | |____ 
# |____/ \___|\__,_|______|

url="https://www.moongiant.com/phase/today"
key_word="Phase:"
bracket_start="span>"
bracket_end="<\/span"
phase="$(curl -s $url | grep $key_word | grep -oP "(?<=$bracket_start).*(?=$bracket_end)")"
echo $phase

case "$phase" in
   # 0/8
   "New Moon"        ) echo "H4sIAAAAAAAAA5XSMQrAIAwF0N1TFD78tR07Z8nq/U9TxLTVomn8m/AIicmxn1skqX+SsJBTSIjm
JirgAKJDD8YHjllLK5QZK5EXus5kgfBdzjD4U7CWLHA6yB1drRjuMTx1/B/jm4nveuF6Fu7RT7oA
LHxkcgsDAAA=
" | base64 -d | gzip -cd ;;
   # 1/8
   "Waxing Crescent" ) echo "H4sIAAAAAAAAA53SPQqAMAwF4N1TWAIdFQdRXIQugtNbXXoUz66lKf6lEn1by0fbNGnqvtSkuC6t
pRAHTJSFltyElNlXg1mcAOlAMV3YXdsbfLAkS48zdE+2x0cyHlB2WPjWLkGSHTCwBMPMgcDK0DAU
CokxDP3XE9VvVFet/0d9Z/S9DhGm5zRqf+bxPcUG5CSMmAsDAAA=
" | base64 -d | gzip -cd ;;
   # 2/8
   "First Quarter"   ) echo "H4sIAAAAAAAAA5XSMQqAMAwF0N1TRD50VBAK4iJkKThldelRPLu0FrWibfxb6KO0SYZ+JE2avDQG
AC/LKg6f0ICdhNhYdlO74gXiQBF25/FmH/DGMkjk5Q5Z5AsSzRfM3RMeMkBIGZIkyDXYJuhq0P+9
Uf1G9a/1fdRPhtSzDlFuT8KafSyn2QGUzmtECwMAAA==
" | base64 -d | gzip -cd ;;
   # 3/8
   "Waxing Gibbous"  ) echo "H4sIAAAAAAAAA5XSPQqAMAwG0N1TRAIddRBRXIQugUxZu/Qonl0pKf61Er8t8EibNkM/gyXNvXQO
KTBzEMIqdOhJOOayW9rgCxBJjrSPA7fxAV1iL3ckyhX6xISLY6wnVCdLEcKUIaoLZQcgCnPDtQY3
haRwqsH4t6P5juap7e9o/xkw/3XqatsexZZ9/E6zA86K21ELAwAA
" | base64 -d | gzip -cd ;;
   # 4/8
   "Full Moon"       ) echo "H4sIAAAAAAAAAzPRt1AgBnChcpXdAyK9gCAywF0Zp0KnSEUrPQRXz0ox0gmLQtM6bBbWmaIpDIjD
5ba4AGSF9riUISTBCs3xqYNKgxQG4FcHUQBSiNUbyKAOqhCnR2AgjlQTiXYj0b4mPhyJjxkFouMa
BIhMPRBAVHrED7gAVNkpuQsDAAA=
" | base64 -d | gzip -cd ;;
   # 5/8
   "Waning Gibbous"  ) echo "H4sIAAAAAAAAA5XSsQ6EIAwG4J2nKGnCqJPRuJiwNOnUlcVHuWc/UVTkepfevzX5Ai106CewxD1L
JEnMnAhD+Apj8nN3FisLRQwKHF7NXV62EDZQ1s+udikUario/fMuJd5wVB3MUskMRXcAqUgssB3j
ylIdmaEyyJGxQPr3RHOP5qnt72j/GTD/dY5xe46Y9vF33BufCRRnCwMAAA==
" | base64 -d | gzip -cd ;;
   # 6/8
   "Last Quarter"    ) echo "H4sIAAAAAAAAA53SOw6AIAwA0N1TYJow4oQaF5MuJE5dWTwKZzcIUesHq52AvEBL2za9kkTFt+DI
Tx4BQOtHiL4eTFwYSzEcgr6BNmxnGa4YTpDmwysHuNMER5YOg0S4w06VYJIRkipDggzDG8QM5zfo
vt4ozlFctfwfz51hhbDOKN7rK/szPSlE81iOagHKmYJRCwMAAA==
" | base64 -d | gzip -cd ;;
   # 7/8
   "Waning Crescent" ) echo "H4sIAAAAAAAAA5XSOwrAIAwG4N1TKAHHdiqWLgUXoVPWLh7Fs7chKX1ZSf9BED7iIwn9aDUx9y0k
xAgU7z9hXN3U5QWPpAi+AodCa8B7EjwgZltzF8pw5k15uz3xhEHKr1XIkiCKm+oOEQQW2zpZShLM
At0XTH8rqu+ofrX+H/Wd0feaopwejmoe2zEbdRsn2AsDAAA=
" | base64 -d | gzip -cd ;;
esac
