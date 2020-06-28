FROM jupyter/minimal-notebook

USER 0

# RUN apt-get update && apt-get install -y openssh-client && \
#    rm -rf /var/lib/apt/lists/*

USER 1000

ADD requirements.txt ./
RUN pip --no-cache-dir install -r requirements.txt && rm -f requirements.txt
