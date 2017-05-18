FROM ppottie/docker-grunt-compass:node-4.8

RUN apk add --update build-base openssl libffi-dev ruby ruby-dev ruby-rdoc ruby-irb autoconf make
RUN npm install -g  gifsicle jpegtran

RUN  rm -rf /var/cache/apk/*
    
CMD ["node"]