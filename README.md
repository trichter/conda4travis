[![build status master](https://travis-ci.org/trichter/conda4travis.svg?branch=master)](https://travis-ci.org/trichter/conda4travis) for master branch

[![build status latest](https://travis-ci.org/trichter/conda4travis.svg?branch=latest)](https://travis-ci.org/trichter/conda4travis) for latest branch

Use it in your `.travis.yml` file:

```
before_install:
  - wget https://raw.githubusercontent.com/trichter/conda4travis/latest/conda4travis.sh -O conda4travis.sh
  - source conda4travis.sh
```

"Latest" branch will always point to the latest tag.
For a full `.travis.yml` configuration see my other repositories.