FROM python:3.7-buster

RUN apt update
RUN pip install 'cellphonedb>=2.1.0,<2.2.0'
RUN apt install dirmngr apt-transport-https ca-certificates software-properties-common gnupg2 -y
RUN apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'
RUN add-apt-repository 'deb http://cloud.r-project.org/bin/linux/debian buster-cran35/'
RUN apt update
RUN apt install r-base -y
RUN R --version

RUN echo 'install.packages("pheatmap")' | R --no-save
RUN echo 'install.packages("ggplot2")' | R --no-save
WORKDIR /root/