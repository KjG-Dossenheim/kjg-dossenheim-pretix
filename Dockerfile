FROM pretix/standalone:latest
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-fontpack-free
RUN pip3 install pretix-zugferd
RUN pip3 install pretix-sepadebit
RUN pip3 install pretix-servicefees
RUN pip3 install pretix-sofort
USER pretixuser
RUN cd /pretix/src && make production
