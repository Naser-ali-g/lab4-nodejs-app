#!/bin/sh
docker build -t solar-system:$CI_PIPELINE_ID .
docker images solar-system:$CI_PIPELINE_ID
mkdir image
docker save solar-system:$CI_PIPELINE_ID > image/solar-system-image-$CI_PIPELINE_ID.tar
