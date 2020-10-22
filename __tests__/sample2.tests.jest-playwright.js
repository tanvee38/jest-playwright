const playwright = require('playwright');

describe(`UI Tests with Playwright`, () => {
  let browser;
  let page;

  beforeAll(async () => {
    browser = await playwright["chromium"].launch({ headless: false, slowMo: 300 });

    page = await browser.newPage();
  
    await page.goto('https://www.athabascau.ca/');
  })
  
  test('sample test 1', async () => {
    const title = await page.$('#content-title');
  
    const titleText = await page.evaluate(title => title.textContent, title);
    
    expect(titleText).toBe("How AU Works Athabasca University");

    const howAUWorksLink = await page.$('.link-block.local-link');

    await Promise.all([
      page.waitForNavigation(),
      page.evaluate(howAUWorksLink => howAUWorksLink.click(), howAUWorksLink)
    ]);

    const formSubmitButton = await page.$('#submit');

    const formSubmitButtonText = await page.evaluate(formSubmitButton => formSubmitButton.textContent, formSubmitButton);

    expect(formSubmitButtonText).toBe("Submit");
  })

  test('sample test 2', async () => {
    const contentTitle = await page.$('#content-title');
  
    const contentTitleText = await page.evaluate(contentTitle => contentTitle.textContent, contentTitle);

    expect(contentTitleText).toBe('How AU Works');
  })

  afterAll(async () => {
    await browser.close();
  });
})