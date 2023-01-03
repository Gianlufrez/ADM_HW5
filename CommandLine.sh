echo "The most popular pair of heroes (often appearing together in the comics): "
awk -F, '{if($1 != $2) print $0}' hero-network.csv | uniq -c | sort -nr| head -1 
echo "Number of comics per hero in ascending order: "
awk -F, '{print $1}' edges.csv | uniq -c | sort -nr | head -10
echo "The average number of heroes in comics: "
awk -F, '{heros[$2]++} END {for (i in heros){sum = sum + heros[i]; print i, sum/length(heros)}}' edges.csv | head -10
