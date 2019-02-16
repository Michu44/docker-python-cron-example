FROM python:3.6

# Set the WORKDIR for clean structure
WORKDIR /python-cron-example

# Install all prerequisites
RUN apt-get update
RUN apt-get install -y cron

# Add crontab file in the cron directory
ADD crontab /etc/cron.d/simple-cron

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python -V