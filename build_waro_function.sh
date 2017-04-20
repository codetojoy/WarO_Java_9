
MJARS=$PWD/mjars
MLIB=$PWD/mlib

cd waro.function

# compile
javac -d build \
--module-source-path src/main/java \
--module-path $MLIB:$MJARS \
`find src/main/java -name "*.java"`

cd build/waro.function

# jar
jar cf $MLIB/waro.function.jar *
