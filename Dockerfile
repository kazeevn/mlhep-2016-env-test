FROM yandex/rep:0.6.5
MAINTAINER Nikita Kazeev kazeevn@yandex-team.ru


RUN /bin/bash --login -c "\
    source activate jupyterhub_py3 && \ 
    pip install --upgrade pip && \
    pip install rep && \
    pip install root_numpy
    "
