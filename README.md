# e2e-test-framework
End-to-End test framework built with Jest & Playwright. It includes set up procedures and simple examples on how to run UI tests.

## Clone this repository
```git clone git@git.athabascau.ca:6617/e2e-test-framework.git```

```cd jest-playwright```

## To run test locally:

1. install packages: ```npm install```
2. Run test: ```BROWSER=chromium npm test```
3. Run single test file: ```BROWSER=chromium npm test SomeTestFileToRun``` e.g: ```BROWSER=chromium npm test ./__tests__/sample1.tests.jest-playwright.js```

To run tests with firefox, or any other supported browser you can set browser name using an environment variable.

## Generate allure report: ```
2. Show allure report in browser: ```npm run report```


## To run test on docker container

1. Build docker image: docker build -t jest-playwright .
2. Run test on docker container: docker run jest-playwright npm test

## To run test on CI environment

will add later
