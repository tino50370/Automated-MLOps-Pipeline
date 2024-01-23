# Use an official TensorFlow runtime as a parent image
FROM tensorflow/tensorflow:latest

# Set the working directory in the container
WORKDIR /app

# Copy the Python code from GitHub into the container
RUN git clone https://github.com/tino50370/Automated-MLOps-Pipeline.git .

# Install required Python packages
RUN pip install pandas scikit-learn numpy keras

# Define environment variable
ENV NAME World

# Command to run your Python script
CMD ["python", "main_code.py"]
