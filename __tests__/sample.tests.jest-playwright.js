const playwright = require('playwright');

describe(`UI Tests with Playwright`, () => {
  let browser;
  let page;

  beforeAll(async () => {
    browser = await playwright["chromium"].launch({ headless: false });
  
    page = await browser.newPage();
  
    await page.goto('https://www.athabascau.ca/');
  })
  
  test('sample test 1', async () => {
    const title = await page.$('#content-title');
  
    const titleText = await page.evaluate(title => title.textContent, title);
    
    expect(titleText).toBe("How AU Works Athabasca University");
  })

  test('sample test 2', async () => {
    const copyright = await page.$('#copyright');
  
    const copyrightText = await page.evaluate(copyright => copyright.textContent, copyright);
    
    expect(copyrightText).toBe("© 2020 Athabasca University is a world-class leader in online and distance education. Based in Alberta and available online around the world, we are Canada's Open, Online University. Privacy Policy");
  })

  afterAll(async () => {
    await browser.close();
  });
})