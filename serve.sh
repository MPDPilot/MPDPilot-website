#!/bin/sh

rm -fr .bundle Gemfile.lock _site .sass-cache

docker run -p 4000:4000 -v $(pwd):/site bretfisher/jekyll-serve \
    bundle exec jekyll serve --force_polling -H 0.0.0.0 -P 4000 --incremental
