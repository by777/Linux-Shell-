#!/usr/bin/env bash
awk '/^$/{print NR}' /etc/passwd