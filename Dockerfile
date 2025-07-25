# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy dependencies
RUN cd ..
RUN cd ..
COPY ./terraform-project-task-1-main/terraform-project-task-1-main/package*.json ./
RUN npm install

# Copy source files
RUN cd ./terraform-project-task-1-main/terraform-project-task-1-main/
COPY . .

# Expose app port (e.g., 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
