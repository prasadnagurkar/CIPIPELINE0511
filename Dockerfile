FROM ubuntu
ENV ORA_CLOUD_CLUSTER="ASHBURN"
ARG LICENSE_KEY="123-1111"
LABEL MAINTAINER prasad.nagurkar@oracle.com
#RUN mkdir /code
COPY sample.sh /code/sample.sh
COPY testfile1 /code/testfile1
RUN chmod +x /code/sample.sh
RUN echo "license keyis ........"$LICENSE_KEY
WORKDIR /code
# by below command only default testfile1 will be executed
#CMD sh sample.sh testfile1

#ENTRYPOINT ["sh","sample.sh"]
#what ever we put in the [] is default value
CMD ["testfile1"]
