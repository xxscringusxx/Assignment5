# Builder stage
FROM alpine:latest AS builder
COPY data.txt /tmp/data.txt

# Final stage
FROM fedora:latest
COPY --from=builder /tmp/data.txt /
