FROM jpetazzo/dind

ENV HOME /root
ADD .docker /root/.docker
RUN echo '[ -f /root/.docker ] && source /root/.docker' >> /root/.bashrc

#CMD
