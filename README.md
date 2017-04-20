### WarO_Java_9

WarO is a code kata based on a simple card game. Rules are documented [here](https://github.com/peidevs/WarO_Java/blob/master/README.md).

### Java 9 Features 

* This example contains 3 modules. They are somewhat arbitrary, as this project was
written without modules in mind.
* waro.base
    * requires Spring "automatic modules"
    * exports several utility packages
    * see [module-info.java](https://github.com/codetojoy/WarO_Java_9/blob/master/waro.base/src/main/java/waro.base/module-info.java)
* waro.function
    * requires `waro.base` and Guava automatic module
    * exports functional packages 
    * see [module-info.java](https://github.com/codetojoy/WarO_Java_9/blob/master/waro.function/src/main/java/waro.function/module-info.java)
* waro.main
    * requires `waro.base` and `waro.function`
    * see [module-info.java](https://github.com/codetojoy/WarO_Java_9/blob/master/waro.main/src/main/java/waro.main/module-info.java)

### Set Up Instructions 

* These instructions work for Mac OS X. Tweak as appropriate
* Install Docker from [here](https://www.docker.com/) 
* Open 'Docker Quick Start Terminal'
* set `MY_SRC_HOME` to be appropriate directory on your computer
* execute in terminal:

<pre>
cd $MY_SRC_HOME
docker build -t="apr_b161_jdk9" . 
docker run --rm -i -t -v $(pwd):/data apr_b161_jdk9 
</pre>

### Build Instructions 

* outside Docker container:
    * to prepare jars: `gradle prepare` 
* inside Docker container:
    * to build: `./build.sh`
    * to run tests: build, then `./test.sh`
    * to run app: build, then `./run_waro_main.sh`


