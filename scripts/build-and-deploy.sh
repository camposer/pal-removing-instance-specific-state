#!/usr/bin/env bash

mvn clean package -DskipTests
cf push remove-session-state -p target/remove-session-state-lab.war -i 2 --random-route

