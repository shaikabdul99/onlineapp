# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Build the React application (you can adjust this based on your setup)
RUN npm run build

# Expose a port (e.g., 80) that the application will listen on
EXPOSE 80

# Define the command to start the application (serve the build folder)
CMD ["npm", "start"]
