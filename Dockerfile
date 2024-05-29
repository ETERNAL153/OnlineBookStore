# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json from your local machine to the filesystem of the container at the working directory
COPY package*.json ./

# Install any needed packages specified in package.json
RUN npm install

# Copy the current directory contents from your local machine to the working directory in the container
COPY . .

# Change into the frontend directory and install any needed packages specified in package.json there
WORKDIR /app/frontend
RUN npm install

# Change back to the root directory
WORKDIR /app

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NODE_ENV production

# Run npm run dev when the container launches
CMD ["npm", "run", "dev"]
