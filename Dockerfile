FROM node:18-alpine

# Install 9router
RUN npm install -g 9router

# Ensure the configuration directory exists
RUN mkdir -p /root/.9router

# Expose UI/API port
EXPOSE 20128

# CMD Explanation:
# yes '' -> sends infinite Enter keys
# | -> pipes those Enters into the 9router process
# --no-browser -> prevents trying to open a GUI window
# --host 0.0.0.0 -> allows you to see the UI at http://localhost:20128
CMD sh -c "yes '' | 9router --no-browser --host 0.0.0.0"
