#creating a folder assignment

mkdir /home/bishal/projects/loop_assignment/assignment
cd /home/bishal/projects/loop_assignment/assignment



#creating 9 folders test 1 to 9 inside folder assignment

for ((i=1; i<=9; i++))
do
mkdir test$i




#writing output of free memory in mem.txt

top -n 1 -b >/home/bishal/projects/loop_assignment/assignment/test$i/mem.txt

#writing output of cpu info in all cpu.txt file

cat /proc/cpuinfo >/home/bishal/projects/loop_assignment/assignment/test$i/cpu.txt


echo "Folder created are: test$i"
done

echo -e "\n"




#creating file1.sh and file2.sh inside 9 different folders.

cd /home/bishal/projects/loop_assignment/assignment


for ((k=1; k<=9; k++)) 
do
cd test$k

touch file1.sh file2.sh



 md5sum file1.sh
 md5sum file2.sh

echo -e "\n"

cd /home/bishal/projects/loop_assignment/assignment



done

echo "file1.sh and file2.sh has been created in each folder."

echo -e "\n"







#directory structure 

tree /home/bishal/projects/loop_assignment


echo -e "\n"



#printing tree structure to a file a.txt

cd /home/bishal/projects/loop_assignment
tree > a.txt

#writing serial number each line on the a.txt file with output in b.txt

cat -n a.txt > b.txt
