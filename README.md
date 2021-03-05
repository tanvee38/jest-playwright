# e2e-test-framework
End-to-End test framework built with Jest & Playwright. It includes set up procedures and simple examples on how to run UI tests.

## Clone this repository
```git clone https://github.com/tanvee38/jest-playwright.git```

```cd jest-playwright```

## To run test locally:

1. install packages: ```npm install```
2. install playwright: ```npm i -D playwright```
3. Run test: ```npm run test-firefox-headless```
4. Run single test file: ```npm run test-firefox-headless SomeTestFileToRun``` e.g: ```npm run test-firefox-headless ./__tests__/sample1.tests.jest-playwright.js```

To run tests with other supported browsers check differnt package.json scripts.

## Generate allure report:
2. Show allure report in browser: ```npm run report```


## To run test on docker container

1. Build docker image: ```docker build -t jest-playwright .```
2. Run test with firefox on docker container: ```docker run jest-playwright npm run test-firefox-headless```
3. Run test with chromium on docker container: ```docker run jest-playwright npm run test-chromium-headless```

## To run test on CI environment

will add later
