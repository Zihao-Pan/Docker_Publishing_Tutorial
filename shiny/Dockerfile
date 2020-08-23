FROM rocker/shiny


RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean

RUN apt-get update && apt-get install -y \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev

# basic shiny functionality
RUN R -e "install.packages(c('shiny','rmarkdown'), repos='https://mirrors.tuna.tsinghua.edu.cn/CRAN/')"


# copy the app to the image
RUN mkdir /root/euler
COPY euler /root/euler


EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/root/euler/shinyapp.R')"]
