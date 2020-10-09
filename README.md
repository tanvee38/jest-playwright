# jest-playwright
Simple example on how to run UI tests built with Jest & Playwright on docker container.

## Clone this repository
```git clone https://github.com/tanvee38/jest-playwright.git```

```cd jest-playwright```

## To run test locally:

1. install packages: ```npm install```
2. Run test: ```npm test```

## To run test on docker container:

1. Build docker image:  ```docker build -t jest-playwright .```
2. Run test on docker container: ```docker run jest-playwright npm test```

