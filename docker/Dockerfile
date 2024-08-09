# Use an official image as a parent image
FROM alpine:3.15

# Install necessary packages
RUN apk add --no-cache curl

# Use the secret directly from the file that Docker creates
RUN --mount=type=secret,id=mySecret \
    sh -c 'cat /run/secrets/mySecret'

# Optionally, use the secret in an environment variable
RUN --mount=type=secret,id=mySecret \
    sh -c 'export MY_SECRET=$(cat /run/secrets/mySecret) && echo "The secret is: $MY_SECRET"'
