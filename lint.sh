#!/bin/bash

$TESTBENCH_FILE = "./testbench.sv"

# Run Verilator linting on the testbench file
verilator \
    --lint-only \
    --timing \
    -Wall \
    -Ioutput \
    -sv \
    util.sv \
    $TESTBENCH_FILE
