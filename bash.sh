create_whitelines() {
    number=$1
for (( count=0; number>count; count++ ))
do
    printf "\n"
done
}

echo ========= JAVACC =========
javacc Lugosi.jj;

echo ========= JAVAC =========
javac *.java;

echo ========= INITIATING TESTS =========
create_whitelines 3
echo ========= EXAMPLE =========
java Lugosi example1.lug;
create_whitelines 2
echo ========= TEST 1 =========
java Lugosi example1.lug;
create_whitelines 2
echo ========= TEST 2 =========
java Lugosi example2.lug;
create_whitelines 2
echo ========= TEST 3 =========
java Lugosi example3.lug;