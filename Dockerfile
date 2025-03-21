FROM alpine:latest

# Install dependencies and stress-ng
RUN apk add --no-cache stress-ng bash coreutils

# Copy the stress script into the container
COPY stress-script.sh /usr/local/bin/stress-script.sh
RUN chmod +x /usr/local/bin/stress-script.sh

# Entry point
ENTRYPOINT ["/usr/local/bin/stress-script.sh"]
