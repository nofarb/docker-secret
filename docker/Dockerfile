# Use an official image as a parent image
FROM alpine:3.15

# Install necessary packages
RUN apk add --no-cache curl

# Use the secret as an environment variable in the build process
RUN --mount=type=secret,id=mySecret \
    sh -c 'echo $MY_SECRET > /root/my_secret_from_env.txt'

# Verify that the secret was correctly accessed
RUN cat /root/my_secret_from_env.txt
