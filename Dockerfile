# Use a lightweight Node.js image as the base
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /docker-node-testing

# Copy the index.js file to the working directory
COPY . .

RUN npm install
RUN npm run build

# Expose port 7000
EXPOSE 3000

# Start the Node.js server
CMD ["npm", "start"]