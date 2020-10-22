# jest-playwright
Simple example on how to run UI tests built with Jest & Playwright on docker container.

## Install node.JS.
Node version 12.x.x or latest
NPM version 6.14.4 or latest

## Clone this repository
```git clone https://github.com/tanvee38/jest-playwright.git```

```cd jest-playwright```

## To run test locally:

1. install packages: ```npm install```
2. Run test: ```BROWSER=chromium npm test```
3. Run test files sequentially: ```BROWSER=chromium npm run test-serial```
4. Run single test file: ```npm test SomeTestFileToRun``` e.g: ```BROWSER=chromium npm test ./__tests__/sample.tests.jest-playwright.js```

To run tests with firefox, or any other supported browser you can set browser name using an environment variable.

## project hierarchy

## To run test on docker container