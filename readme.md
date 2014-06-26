# *TM* - Task Manager #

# Technologies

* Java 8
* Spring 4
* Backbone
* Handlebars 


# Import mongodump

    $  mongorestore --drop db/dev/tm_test

### Gradle related files ###
* **build.gradle** - main build file(names of artifacts, configuration plugins)
* **gradle.properties** - properties for gradle tool(run as daemon, jvm args, parallel mode)
* **setting.gradle** - for configuration project with multi modules
* **gradle** - gradle wrapper files
* **gradlew** and *gradlew.bat* - gradle wrapper. It allow build project without installation Grade

##Building project##

###Master project ###

*Unix*

     ./gradlew clean build

*Windows*

     gradlew.bat clean build

is the same as(versions of gradle can be different)

    gradle clean build

###Subproject###

	gradle :server:entity:clean :server:entity:build