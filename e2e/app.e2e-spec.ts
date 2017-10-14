import { DaapProjectPage } from './app.po';

describe('daap-project App', function() {
  let page: DaapProjectPage;

  beforeEach(() => {
    page = new DaapProjectPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
