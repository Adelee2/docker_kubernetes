FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app

## Step 3:
RUN python3 -m venv ~/.devops 
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN . ~/.devops/bin/activate && pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt
## Step 4:
EXPOSE 80

## Step 5:
# Run app.py at container launch

CMD . ~/.devops/bin/activate && exec python app.py