#!/bin/bash
for i in {1..5}; do
	curl -s http://localhost/
	sleep 1
done
