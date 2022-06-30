FROM ubuntu:20.04
# LABEL maintainer="example@example.com"

# Timezone setting
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

# Install something
RUN apt-get update && apt-get install -y --no-install-recommends bash curl fish git nano sudo

# OpenCV
RUN apt-get update && apt-get install -y --no-install-recommends libopencv-dev

# Install Python
ENV PYTHON_VERSION 3.8
RUN apt-get update && apt-get install -y --no-install-recommends python${PYTHON_VERSION}

# Install pip
RUN curl -kL https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python${PYTHON_VERSION} get-pip.py
RUN rm get-pip.py
RUN pip install --upgrade pip

# or 
RUN pip install hydra-core --upgrade
RUN pip install pandas matplotlib opencv-python scikit-learn jupyterlab tensorboard tqdm einops seaborn flake8 autopep8 