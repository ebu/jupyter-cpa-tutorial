FROM ebutech/jupyter-nodejs

WORKDIR /root/jupyter-nodejs

RUN pip install docker-compose
RUN npm install -g request-debug

ENV NODE_PATH /usr/local/lib/node_modules

CMD sh -c 'jupyter notebook --NotebookApp.port=8888 --no-browser --ip=* --debug'

EXPOSE 8888
