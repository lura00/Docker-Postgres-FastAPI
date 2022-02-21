# import default image frmo docker-hub
FROM python:3.9.7
# The default dir to work from
WORKDIR C:\Users\Ludvig Ravelin\Documents\U0-chasAcademy\u05
# /usr/src/app
# copy requirements from requirements.txt
COPY requirements.txt ./
# run pip install requirements
RUN pip install -r requirements.txt
# Copy code from local folder if code where written.
COPY . .
# Then start the image
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8000"]
