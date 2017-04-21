
JARS=$PWD/jars
MJARS=$PWD/mjars
LIB=$PWD/mlib 

CLASSPATH=
CLASSPATH=$CLASSPATH:$PWD/waro.function/test_build
CLASSPATH=$CLASSPATH:$LIB/waro.base.jar
CLASSPATH=$CLASSPATH:$LIB/waro.function.jar
CLASSPATH=$CLASSPATH:$JARS/*
CLASSPATH=$CLASSPATH:$MJARS/*

cd waro.function

# compile
javac -d test_build \
-classpath $CLASSPATH \
`find src/test/java -name "*.java"`

cd test_build

# test
java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.function.impl.GameTest

java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.function.impl.RoundTest

java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.function.TourneyTest

java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.table.DealerTest
