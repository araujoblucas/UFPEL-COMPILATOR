create_whitelines() {
    number=$1
for (( count=0; number>count; count++ ))
do
    printf "\n"
done
}

echo ========= JAVACC =========
javacc Simple.jj;

echo ========= JAVAC =========
javac *.java;
echo ========= JAVAC COMPLETED =========

create_whitelines 3
echo ========= INITIATING TESTS =========
create_whitelines 3
echo ========= EXAMPLE =========
java Simple example.sim;
create_whitelines 2
echo ========= TEST 1 =========
java Simple example1.sim;
create_whitelines 2
echo ========= TEST 2 =========
java Simple example2.sim;
create_whitelines 2
echo ========= TEST 3 =========
java Simple example3.sim;
create_whitelines 2
echo Deleting compiled files
rm -rf *.java
rm -rf *.class
create_whitelines 2