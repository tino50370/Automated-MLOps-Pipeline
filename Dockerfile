# Use an official TensorFlow runtime as a parent image
FROM tensorflow/tensorflow:latest

# Install git, bash and nano
RUN apt-get update && apt-get install -y git bash nano

# Set the working directory in the container
WORKDIR /app

# Install required Python packages
RUN pip install pandas scikit-learn numpy keras

# Copy the Python code from GitHub into the container
RUN git clone https://github.com/tino50370/Automated-MLOps-Pipeline.git .

# Define environment variable
ENV NAME World

# Command to run your Python script
#CMD ["python", "main_code.py"]
ENTRYPOINT ["tail", "-f", "/dev/null"]