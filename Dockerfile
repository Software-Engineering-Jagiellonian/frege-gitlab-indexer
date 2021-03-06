FROM python:3.8-buster

WORKDIR /app

RUN pip3 install fregeindexerlib==0.4.0 && pip3 install requests

COPY app.py .
COPY gitlab_indexer.py .
COPY gitlab_indexer_parameters.py .

CMD ["python3", "app.py"]
