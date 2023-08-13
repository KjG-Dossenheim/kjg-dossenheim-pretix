FROM pretix/standalone:stable
USER root
RUN pip3 install pretix-passbook
RUN pip3 install pretix-fontpack-free
RUN pip3 install pretix-pages
RUN pip3 install pretix-sepadebit
RUN pip3 install pretix-servicefees
RUN pip3 install pretix-sofort
RUN pip3 install pretix-zugferd
RUN pip3 install pretix-automated-orders
RUN pip3 install pretix-public-registrations
USER pretixuser
RUN cd /pretix/src && make production