# Use a Node.js base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the default Vue.js dev server port
EXPOSE 8080

# Start the Vue.js development server
CMD ["npm", "run", "dev"]
