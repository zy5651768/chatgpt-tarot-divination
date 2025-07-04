FROM python:3.11-slim

COPY requirements.txt requirements.txt

# RUN python -m pip install --no-cache-dir -r requirements.txt
RUN python -m pip install --no-cache-dir -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY . /app
WORKDIR /app
EXPOSE 8000
ENTRYPOINT [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]
