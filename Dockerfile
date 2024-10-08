# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory in the container
WORKDIR /algotrader-v2

# Copy the current directory contents into the container at /algotrader-v2
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run the Python script
CMD ["python", "./trading.py"]