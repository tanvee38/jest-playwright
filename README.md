# e2e-test-framework
End-to-End test framework built with Jest & Playwright. It includes set up procedures and simple examples on how to run UI tests.

## Install node.JS.
1. Node version 12.x.x or latest
2. NPM version 6.14.4 or latest

## Clone this repository
```git clone git@git.athabascau.ca:6617/e2e-test-framework.git```

```cd jest-playwright```

## To run test locally:

1. install packages: ```npm install```
2. Run test: ```BROWSER=chromium npm test```
3. Run single test file: ```BROWSER=chromium npm test SomeTestFileToRun``` e.g: ```BROWSER=chromium npm test ./__tests__/sample1.tests.jest-playwright.js```

To run tests with firefox, or any other supported browser you can set browser name using an environment variable.

## project hierarchy

Will add later

## Debugging

Threre are multiple ways to debug your tests.

1. VS Code debugger can be used to pause and resume execution with breakpoints.
2. Tests can be run in headful mode by adding environment variable ```HEADLESS``` as false which helps you see what is going on. E.g: ```BROWSER=chromium HEADLESS=false npm test```.

## Configuration

Configuration options can be specified using a jest.config.js file at the root of your project:

// jest.config.js

module.exports = {
  // Options...
}

E.g:

// jest.config.js

module.exports = {
  setupFilesAfterEnv: ['./jest.setup.js'],
  verbose: true,
  bail: false
}

## To run test on docker container

1. Build docker image: docker build -t jest-playwright .
2. Run test on docker container: docker run jest-playwright npm test

## To run test on CI environment

will add later
