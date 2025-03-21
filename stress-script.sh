#!/bin/bash

while true; do
  # Random CPU workers: 1-4
  CPU_LOAD=$((1 + RANDOM % 4))
  # Random memory allocation: 100-500MB
  MEM_LOAD=$((100 + RANDOM % 400))

  echo "Stress-ng starting: CPU=${CPU_LOAD}, MEM=${MEM_LOAD}MB"

  stress-ng --cpu "$CPU_LOAD" \
            --vm 1 \
            --vm-bytes "${MEM_LOAD}M" \
            --timeout 30s \
            --metrics-brief

  sleep 10
done
