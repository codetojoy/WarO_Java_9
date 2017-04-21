
JARS=$PWD/jars
MJARS=$PWD/mjars

CLASSPATH=$PWD/waro.base/build/waro.base
CLASSPATH=$CLASSPATH:$JARS/*
CLASSPATH=$CLASSPATH:$MJARS/*
CLASSPATH=$CLASSPATH:$PWD/waro.base/test_build

cd waro.base

# compile
javac -d test_build \
-classpath $CLASSPATH \
`find src/test/java -name "*.java"`

cd test_build

# test
java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.player.HandTest

java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.player.PlayerTest

java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.strategy.impl.MaxCardTest

java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.strategy.impl.MinCardTest

java -cp $CLASSPATH org.junit.runner.JUnitCore \
org.peidevs.waro.strategy.impl.NextCardTest
