
MJARS=$PWD/mjars
MLIB=$PWD/mlib

cd waro.base

# compile
javac -d build \
--module-source-path src/main/java \
--module-path $MJARS \
`find src/main/java -name "*.java"`

cd build/waro.base

# jar
jar cf $MLIB/waro.base.jar *
