#!/bin/bash

if [ "$1" == "" ]; then
    echo "Proporciona argumento: hardware o memory"
    exit 1
fi

if [ "$1" == "hardware" ]; then
    echo "informacion de hardware"
    date
    pwd
    uptime
    whoami
    uname -a
    cat /proc/meminfo
    cat /proc/cpuinfo
    df
    du
    ls

    for i in {1..10}; do
    echo "Repeticion $i:"
    df -h
    sleep 5
    done

elif [ "$1" == "memory" ]; then
    echo "informacion de memoria"
    cat /proc/meminfo
    cat /proc/cpuinfo
    df
    du

    for i in {1..10}; do
    echo "Repeticion $i:"
    df -h
    sleep
    done
fi
