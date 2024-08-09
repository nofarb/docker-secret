# Use an official image as a parent image
FROM alpine:3.15

# Install necessary packages
RUN apk add --no-cache curl

# Create a directory to hold the secret
RUN mkdir -p /run/secrets

# Docker secret: Use --secret flag to mount the secret during the build
# Assuming secret file is named "my_secret.txt"
RUN --mount=type=secret,id=my_secret.txt \
    sh -c 'cat /run/secrets/my_secret.txt > /root/my_secret.txt'

# Verify the secret is there
RUN cat /root/my_secret.txt
