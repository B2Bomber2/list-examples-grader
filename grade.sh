set -e

CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

if [ -f  ./student-submission/ListExamples.java]
then
  echo 'Clone successful'
else 
  echo 'Clone unsuccessful'
  exit 1
fi

cd grading-area

javac *.java

java -cp TestListExamples CPATH

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
