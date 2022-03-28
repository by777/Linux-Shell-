#!/usr/bin/env bash
cat chengji.txt | awk -F " " '{sum+=$2} END{print sum}'