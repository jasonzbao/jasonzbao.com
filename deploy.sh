#!/bin/bash

# Simple S3 deployment script for personal website
# Deploys to the existing jasonzbao-personal-website bucket

BUCKET_NAME="jasonzbao-personal-website"

# Upload index.html with proper content type and caching headers
aws s3 cp index.html s3://$BUCKET_NAME/ \
    --content-type "text/html" \
    --cache-control "max-age=3600" \
    --metadata-directive REPLACE

# Invalidate CloudFront cache
aws cloudfront create-invalidation \
    --distribution-id E10RWLZ1M7EU6D \
    --paths "/*" \
    --profile zero \
    --region us-west-2 \
    --query 'Invalidation.Id' \
    --output text