#!/bin/bash

# Ensure that the Maven build command is executed in the correct directory
echo "Running Maven Build and Test..."

# Pull in the repository from the GitHub runner
cd $GITHUB_WORKSPACE

# Run Maven clean, install, and test
mvn clean install

# Run the unit tests
mvn test

echo "Build and Test complete!"
