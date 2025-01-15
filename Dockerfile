# Use the official Python image
FROM python:3.11.5-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current project files into the container
COPY . /app

# Install Python dependencies
RUN pip install --upgrade pip \
    && pip install mkdocs \
    && pip install -r requirements.txt

# Expose the MkDocs server port
EXPOSE 8000

# Default command to serve the MkDocs site
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
