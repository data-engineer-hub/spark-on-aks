# Use the official Spark image as the base image
FROM bitnami/spark:3.5.3
USER root
# Install the required Python packages
RUN pip install fastavro \
    pyspark \
    azure-eventhub==5.10.1 \
    azure-storage-blob==12.14.1 \
    azure-eventhub-checkpointstoreblob-aio \
    azure-mgmt-resource \
    azure-mgmt-datalake-store \
    azure-datalake-store \
    avro \
    avro-python3
USER 1001
# Set the entrypoint to the Spark entrypoint
ENTRYPOINT ["/opt/bitnami/scripts/spark/entrypoint.sh"]