FROM granatumx/gbox-py-sdk:1.0.0

COPY . .

COPY ./zgsea ./zgsea
RUN cd ./zgsea && pip install -e .

RUN ./GBOXtranslateVERinYAMLS.sh
RUN tar zcvf /gbox.tgz package.yaml yamls/*.yaml
