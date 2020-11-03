FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime

LABEL maintainer="gourisankar@iitg.ac.in"
LABEL version="0.1"
LABEL description="Image for PyTorch Cuda 10.1, transformers and other required libraries for NLP and deep learning "

RUN apt-get update

#
RUN apt-get install -y wget vim htop fish datamash graphviz libgraphviz-dev

RUN pip3 --no-cache-dir install ipython pandas numpy

RUN pip3 --no-cache-dir install docopt joblib natsort scipy

RUN pip3 --no-cache-dir install tqdm keras matplotlib librosa scikit-learn

RUN pip3 --no-cache-dir install dill bleach namedtupled

RUN pip3 --no-cache-dir install PyEMD

RUN pip3 --no-cache-dir install tensorflow

RUN pip3 --no-cache-dir install networkx pathlib pygraphviz

RUN pip3 --no-cache-dir install transformers

RUN apt-get install -y git

# 
RUN apt-get install -y python3-venv

# Install locales
RUN apt-get install -y locales locales-all
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
 
