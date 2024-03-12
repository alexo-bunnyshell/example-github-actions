from alpine as build

RUN apk add --no-cache sed

RUN mkdir /work
WORKDIR /work

COPY app/ app/
RUN ls -alh app

COPY build.sh build.sh
RUN chmod +x build.sh
RUN ./build.sh


from nginx:alpine as prod


COPY --from=build /work/build /usr/share/nginx/html


