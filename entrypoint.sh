#!/bin/bash
echo "Running Maven Build and Test..."
cd $GITHUB_WORKSPACE  # Move to the repository workspace
mvn clean install     # Build the Java project
mvn test              # Run tests
echo "Build and Test complete!"
