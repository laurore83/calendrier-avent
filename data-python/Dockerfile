FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/streamlit/streamlit-example.git .

RUN pip3 install -r requirements.txt

# API
RUN pip3 install simplejson
RUN pip3 install requests

# Dataviz
RUN pip3 install seaborn
RUN pip3 install matplotlib
RUN pip3 install plotly
RUN pip3 install sweetviz

# Machine Learning
RUN pip3 install -U scikit-learn

# SQL
RUN pip3 install SQLAlchemy

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8501", "--server.address=0.0.0.0"]
