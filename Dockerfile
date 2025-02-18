FROM nvcr.io/nvidia/pytorch:22.08-py3
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENV GRADIO_SERVER_PORT=7860
ENV GRADIO_SERVER_NAME=0.0.0.0
EXPOSE 7860
ENTRYPOINT ["python3", "server.py"]
