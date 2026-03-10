FROM node:18-alpine

# Install 9router
RUN npm install -g 9router

# Port and Config setup
EXPOSE 20128
RUN mkdir -p /root/.9router

# This command starts 9router, waits 2 seconds, then sends a newline (Enter)
CMD sh -c "(sleep 2; echo '') | 9router --no-browser --host 0.0.0.0"
