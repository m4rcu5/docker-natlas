# Start off using a minimal Python 3.6 image
FROM python:3.6-alpine

# Install NATLAS OS dependencies
RUN apk add --no-cache graphviz git g++ font-bh-100dpi

# Clone the NATLAS repository.
RUN git clone https://github.com/MJL85/natlas.git

# Switch to NATLAS directory
WORKDIR natlas

# Install NATLAS including Python dependencies
RUN pip install -e .

# Copy NATLAS configuration file
COPY natlas.conf .

# Copy ENTRYPOINT
COPY entrypoint.sh /

# Execute the topology discovery by default
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "diagram" ]
