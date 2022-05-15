create_whitelines() {
    number=$1
for (( count=0; number>count; count++ ))
do
    printf "\n"
done
}

echo ========= JAVACC =========
javacc Lugosi.jj;
create_whitelines 3

echo ========= JAVAC =========
javac *.java;
create_whitelines 3
echo ========= JAVAC COMPLETED =========
create_whitelines 3

echo ========= INITIATING TESTS =========
create_whitelines 3

echo ========= EXAMPLE =========
java Lugosi example.lug;
create_whitelines 2

# echo ========= TEST 1 =========
# java Lugosi example1.lug;
# create_whitelines 2

# echo ========= TEST 2 =========
# java Lugosi example2.lug;
# create_whitelines 2

# echo ========= TEST 3 =========
# java Lugosi example3.lug;
# create_whitelines 2

echo ========= Deleting compiled files... =========
rm -rf *.java
rm -rf *.class
create_whitelines 2