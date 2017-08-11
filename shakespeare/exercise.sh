grep -wi "love" complete_works.txt > love.txt
grep -wi "death" complete_works.txt > death.txt
grep -wi "war" complete_works.txt > war.txt

wc -l love.txt
wc -l death.txt
wc -l war.txt

head -1 love.txt
head -1 death.txt
head -1 war.txt
