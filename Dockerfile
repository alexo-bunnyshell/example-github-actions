from alpine as build

RUN apk add --no-cache sed
COPY app/ /app
RUN ls -alh /app
RUN echo "test"
RUN export version=$(cat /app/version.txt) && echo $version
RUN sed -i'' "s/--version--/$version/g" /app/index.html


from nginx:alpine as prod


COPY --from=build /app /usr/share/nginx/html


