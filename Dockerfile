FROM everware/base
LABEL maintainer "kazeevn@yandex-team.ru"
USER root
RUN apt-get update
RUN apt-get install --yes libgl1-mesa-glx
RUN conda install --yes numpy scipy scikit-learn pandas
RUN pip install seaborn==0.7.1 matplotlib==2.0.2 
USER jupyter
WORKDIR /home/jupyter/
EXPOSE 8888
