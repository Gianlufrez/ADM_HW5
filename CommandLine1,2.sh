echo "The most popular pair of heroes (often appearing together in the comics): "
sort  hero-network.csv | uniq -cd | sort -nr| head -1
echo "Number of comics per hero in ascending order: "
awk -F, '{print $1}' edges.csv | uniq -c | sort -n
echo "The average number of heroes in comics: "
awk -F, '{print $2}' edges.csv | uniq -cd | sort -n
awk -F, '{print $2}' edges.csv | uniq -cd | sort -n > heros.csv
cat heros.csv | wc -l
