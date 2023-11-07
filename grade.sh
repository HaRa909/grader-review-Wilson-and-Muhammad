CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

cd student-submission


if [[ -f ListExamples.java ]]
then
    cp -r ListExamples.java ../grading-area
    cd ..
    pwd

    cp -r *.java grading-area
    # cp -r *.class /grading-area

    cd grading-area

    pwd

    cd .. 
    javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" *.java
    java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore 
    cd grading-area
    java TestListExamples.java

else
    echo 'resubmit with proper file'
fi



# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
