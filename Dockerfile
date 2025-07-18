# Step 1: Use official Python image
FROM python:3.10

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy all project files
COPY . .

# Step 4: Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose the port Flask runs on
EXPOSE 5000

# Step 6: Run the Flask app
CMD ["python", "app.py"]
