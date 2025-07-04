
# ⚠️ Obsolete and insecure base image
FROM node:8

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Install dependencies (no lockfile used)
RUN npm install

# Run as root (default)
USER root

# Expose port without security configuration
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
