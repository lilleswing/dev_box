#!/bin/bash
ip link set docker0 down
brctl delbr docker0
