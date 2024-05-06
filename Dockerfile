FROM pretix/standalone:stable
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-fontpack-free
RUN pip3 install pretix-zugferd
USER pretixuser
RUN cd /pretix/src && make production
