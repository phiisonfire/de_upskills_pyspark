FROM quay.io/jupyter/pyspark-notebook:spark-4.2.0

ENV JUPYTER_ENABLE_LAB=yes \
    PYSPARK_PYTHON=python3 \
    PYSPARK_DRIVER_PYTHON=python3

WORKDIR /home/jovyan/work
