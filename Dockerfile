FROM ebutech/jupyter-nodejs

WORKDIR /root/jupyter-nodejs

RUN pip install docker-compose

CMD sh -c 'jupyter notebook --NotebookApp.port=8888 --no-browser --ip=* --debug'

EXPOSE 8888