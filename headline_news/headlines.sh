# read the xml file and save it as raw.xml
curl http://www.cbc.ca/cmlink/rss-$1 > raw.xml

# get all lines that contain <title> and then take
# the last lines starting with the third
grep "<title>" raw.xml | tail -n +3 > temp.txt

# cut using delimter [ and take column 2
# cut using delimter ] and take columb 1
# output to text file with user specified title
cut -d [ -f 3 temp.txt | cut -d ] -f 1 > $2.txt

# remove temporary file
rm raw.xml temp.txt
