from alpine as build

RUN apk add --no-cache sed
COPY app/ /app
RUN ls -alh /app
RUN echo "test"
RUN VERSION=$(cat /app/version.txt) \
    #&& echo  "version: $VERSION xxx" > /app/outversion.txt \
    && sed -i'' "s/--version--/$VERSION/g" /app/index.html


from nginx:alpine as prod


COPY --from=build /app /usr/share/nginx/html


