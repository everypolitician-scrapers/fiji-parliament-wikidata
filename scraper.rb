require 'wikidata/fetcher'
require 'pry'

names = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/wiki/House_of_Representatives_of_Fiji',
  after: '//h2/span[@id="Open_Electorates"]',
  before: '//h2/span[@id="See_also"]',
  xpath: '//table//td[2]//a[not(@class="new")]/@title',
) 

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names }, output: false)
warn EveryPolitician::Wikidata.notify_rebuilder
