FROM python:2.7

# set a directory for the app
WORKDIR /home

# copy all the files to the container
COPY * /home/

# install pip dependencies
RUN pip install bottle
RUN pip install openpyxl
RUN pip install cheroot
#RUN mv /usr/lib/python2.7/site-packages/cheroot/ssl /usr/lib/python2.7/site-packages/cheroot/ssl.bkup
RUN mv bottle.py /usr/local/lib/python2.7/site-packages/
# run the command to start bottle web server
CMD ["python2.7", "./lastname-bkup.py"]
# docker run -dit -p 8090:8090 -v /home/ubuntu/github/lookup/APAC_SE_Cluster_assignments.xlsx:/mnt/APAC_SE_Cluster_assignments.xlsx -e sheet_path=/mnt/APAC_SE_Cluster_assignments.xlsx --restart unless-stopped ariesbabu/luckychan
