Hello!  Thank you for the opportunity to apply.  Here is the Rails API half of the assignment.

I have used RSpec and factory_girl for the testing portion, located in the spec/ directory.  If unfamilar, you can run all tests using the 'rspec' command from the project root, after the bundle install.  We have model tests, controller tests, routing tests, and a functional test in spec/requests to ensure the API response is providing the product list correctly.

I've also used seeds.rb to generate some random sample content for the database - it generates 15 sequentially named advertisers, and then 100 products which are randomly assigned to one of the 15 advertisers.  

We have controller logic for all the resource actions, although the API only makes use of the Index call. The index query is set to include advertisers initially and prevent an additional query from being run for every product's advertiser.  I've left the basic views generated for the Product resource, but they are not fleshed out since the scope of the assignment only includes the JSON interactions.

Let me know if you have any questions or concerns, and have a great day.