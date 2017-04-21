FROM ppottie/docker-grunt-compass

RUN apk add --update build-base openssl libffi-dev ruby ruby-dev ruby-rdoc ruby-irb
RUN npm install -g --save gifsicle jpegtran
RUN apk del build-base libffi-dev openssl ruby-dev \
    && rm -rf /var/cache/apk/*
    
CMD ["node"]