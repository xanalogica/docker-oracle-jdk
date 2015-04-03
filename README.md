# docker-oracle-jdk
Docker Image Definition for an Oracle JDK Base Image under CentOS6

# Supported tags and `Dockerfile` links

- [`7u75`, `7`, `latest` (*Dockerfile*)](https://github.com/xanalogica/docker-oracle-jdk/blob/master/Dockerfile)

# What is Java?

Java is a concurrent, class-based, object-oriented language specifically designed to have as few implementation dependencies as possible. It is intended to allow application developers to "write once, run anywhere", meaning that code that runs on one platform does not need to be recompiled to run on another.

Java is a registered trademark of Oracle and/or its affiliates.

> [wikipedia.org/wiki/Java_(programming_language)](http://en.wikipedia.org/wiki/Java_%28programming_language%29)


# What is this?

This is a packaging of the Oracle JDK on the CentOS Linux platform.
I've run into a number of Java applications that aren't supported
on the OpenJDK and I needed this one for a project.

The dockerfile will:
* Use `wget` to pull the official JDK distribution RPM from the Oracle website.
* Install the RPM into the container in the location standard for the RPM.
* Set the `JAVA_HOME` environmental variable.
* Remove the original RPM distribution file, to save space.
* Expose no ports.
* Define no start-up script.

# How to use this image
* To pull: `docker pull zeomega/oracle-jdk`
* To build: `docker build --rm -t your_image_name github.com/zeomega/oracle-jdk`
* To run: `docker run --rm --name your_container_name your_image_name`

# Supported Docker versions

This image is officially supported on Docker version 1.5.0.

# User Feedback

# Issues

Please report issues on the [GitHub project](https://github.com/xanalogica/docker-oracle-jdk).
