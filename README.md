# SpreeTerms

## Installation

1. Add this extension to your Gemfile with this line:

        gem 'spree_terms', github: 'mrbrdo/spree_terms'

2. Install the gem using Bundler:

        bundle install

3. Add a 'code' (string) column to cms_pages, set terms and conditions page code to 'terms-and-conditions'.

4. Add javscript file

        //= require spree/frontend/spree_terms

5. Restart your server

        If your server was running, restart it so that it can find the assets properly.
