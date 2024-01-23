echo 'enter x cordinates for point 1 for line 1'
read x1
echo 'enter y cordinates for point 1 for line 1'
read y1
echo 'enter x cordinates for point 2 for line 1'
read x2
echo 'enter y cordinates for point 2 for line 1'
read y2
x=$((x2-x1))
y=$((y2-y1))
a1=$((x*x + y*y))
echo $a1
#echo $x
#echo $y
#d=$(echo "sqrt($a)"|bc -l)

d1=$(echo "$a1" | awk '{print sqrt($1)}')
echo "distance between the points: $d1"

echo 'enter x cordinates for point 1 for line 2'
read x1
echo 'enter y cordinates for point 1 for line 2'
read y1
echo 'enter x cordinates for point 2 for line 2'
read x2
echo 'enter y cordinates for point 2 for line 2'
read y2
x=$((x2-x1))
y=$((y2-y1))
a2=$((x*x + y*y))


d2=$(echo "$a2" | awk '{print sqrt($1)}')
echo "distance between the points: $d2"

if [ d2 -gt d1 ] 
then 
     echo "l2 is longer line $d2"
else 
	echo "l1 is longer $d1"
fi
