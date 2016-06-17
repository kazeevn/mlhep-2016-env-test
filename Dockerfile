FROM yandex/rep:0.6.5
MAINTAINER Nikita Kazeev kazeevn@yandex-team.ru

RUN /bin/bash --login -c "\
    source activate rep_py2 && \
    pip install --upgrade pip && \
    pip install --upgrade jupyter && \
    pip install --upgrade https://github.com/Theano/Theano/archive/master.zip &&\
    pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip\
    "
RUN /bin/bash --login -c "\
    source activate jupyterhub_py3 && \ 
    pip install --upgrade pip && \
    pip install rep && \
    pip install root_numpy  && \
    pip install --upgrade https://github.com/Theano/Theano/archive/master.zip &&\
    pip install --upgrade https://github.com/Lasagne/Lasagne/archive/master.zip\
    "


#RUN /bin/bash --login -c "\
#    source activate jupyterhub_py3 && \ 
#    pip install --upgrade pip && \
#    pip install --upgrade jupyter 
#    "
