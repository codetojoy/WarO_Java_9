
MJARS=$PWD/mjars
MLIB=$PWD/mlib

cd waro.main

# compile
javac -d build \
--module-source-path src/main/java \
--module-path $MLIB:$MJARS \
`find src/main/java -name "*.java"`

cd build/waro.main

# jar
jar cfe $MLIB/waro.main.jar org.peidevs.waro.Main *
