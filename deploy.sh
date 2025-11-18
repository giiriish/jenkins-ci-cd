#!/usr/bin/env bash
set -euo pipefail
ENV=${1:-staging}
ARTIFACT=${2:-target/*.jar}
echo "Uploading ${ARTIFACT} to S3 for ${ENV}"
BUCKET="my-app-${ENV}-bucket"   # change to your bucket
aws s3 cp ${ARTIFACT} s3://${BUCKET}/releases/ --acl private
echo "Uploaded to s3://${BUCKET}"
