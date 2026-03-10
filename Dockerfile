FROM node:18-alpine

# Install 9router globally
RUN npm install -g 9router

# Port for both API and Dashboard
EXPOSE 20128

# Persistence: 9router usually stores config in ~/.9router
# We create it to ensure permissions are correct
RUN mkdir -p /root/.9router

# Start 9router
# --host 0.0.0.0 is critical for UI access from the host
CMD ["9router", "--no-browser", "--host", "0.0.0.0"]
