#!/bin/bash
set -e

URL="https://github.com/DataTalksClub/nyc-tlc-data/releases/download/fhv/fhv_tripdata_2019-10.csv.gz"

LOCAL_PREFIX="data/raw/fhv/2019/10"
LOCAL_FILE="fhv_tripdata_2019_10.csv.gz"
LOCAL_PATH="${LOCAL_PREFIX}/${LOCAL_FILE}"

echo "downloading ${URL} to ${LOCAL_PATH}"
mkdir -p ${LOCAL_PREFIX}
wget ${URL} -O ${LOCAL_PATH}