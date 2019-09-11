FROM python:3.7-alpine3.10 as build
RUN apk add --no-cache R subversion gfortran gcc musl-dev libffi-dev
RUN apk --no-cache --update-cache add build-base wget freetype-dev libpng-dev openblas-dev
RUN apk --no-cache add cython
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
RUN pip install cython
RUN pip install numpy
RUN pip install cellphonedb
CMD ["sh", "-c", "tail -f /dev/null"]
