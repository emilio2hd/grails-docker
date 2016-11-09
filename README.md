# grails-docker #

Docker image for Grails application with Gradle, installed by sdkman.

More info about [Grails](https://grails.org), [Gradle](http://gradle.org/) and [SDKMAN](http://sdkman.io).

## What you will find in this image:
- Java JDK 8 
- SDKMAN latest
- Grails 3.0.10
- Gradle 2.3

## Using in a Dockerfile
```
FROM carmosantiago/grails

# Copy code to /app directory
COPY . /app
WORKDIR /app

EXPOSE 8080

RUN grails clean
RUN grails compile
RUN gradle run
```
