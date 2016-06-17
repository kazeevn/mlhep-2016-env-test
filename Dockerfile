FROM yandex/rep:0.6.5
MAINTAINER Nikita Kazeev kazeevn@yandex-team.ru

ADD environment.yml /tmp
ADD requirements.txt /tmp
RUN /bin/bash --login -c "conda install -n rep_py2 --file /tmp/environment.yml"
RUN /bin/bash --login -c "source activate rep_py2 && pip install -r /tmp/requirements.txt"
RUN /bin/bash --login -c "conda install -n jupyterhub_py3 --file /tmp/environment.yml"
RUN /bin/bash --login -c "source activate jupyterhub_py3 && pip install -r /tmp/requirements.txt"

ADD install_RISE.sh /tmp/install_RISE.sh
RUN /bin/bash --login -c /tmp/install_RISE.sh