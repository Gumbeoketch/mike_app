#!/bin/bash

# Secret scanning


# Build Docker image
docker build -t mike-app .

# Tag Docker image for Google Container Registry
docker tag mike-app gcr.io/[PROJECT_ID]/mike-app:latest

# Push Docker image to Google Container Registry
docker push gcr.io/[PROJECT_ID]/mike-app:latest

# Deploy Docker image to App Engine Flexible Environment
gcloud app deploy --image-url=gcr.io/[PROJECT_ID]/mike-app:latest --service=[APP-ENGINE-NAME]