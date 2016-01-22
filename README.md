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

#Yeah, you need to run them using "bash -lc" to load sdkman's config and load the default grails and gradle
RUN bash -lc "grails clean"
RUN bash -lc "grails compile"
RUN bash -lc "gradle run"
```