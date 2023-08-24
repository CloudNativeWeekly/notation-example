FROM alpine
ARG SLEEP="30m"
ARG TEXT="demo image"
RUN echo $TEXT 'now sleeping for' $SLEEP 'at:' >message.txt
RUN echo $SLEEP >sleep.txt
CMD cat message.txt && date && sleep $(cat sleep.txt)
