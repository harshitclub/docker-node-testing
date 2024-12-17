# Use a lightweight Node.js image as the base
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /docker-node-testing

# Copy the index.js file to the working directory
COPY . .

RUN npm install

# Expose port 7000
EXPOSE 7000

# Start the Node.js server
CMD ["node", "index.js"]