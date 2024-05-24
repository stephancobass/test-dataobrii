FROM python:3.12
COPY requirement.txt .
RUN pip install -r requirement.txt
