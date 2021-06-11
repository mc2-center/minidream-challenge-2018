FROM rocker/tidyverse:4.0.5

RUN R -e 'install.packages("argparse")'

WORKDIR /

COPY R/score.R .
COPY modules .
COPY data .

