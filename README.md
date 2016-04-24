[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

# Messenger Platform Demo

By [Tinkerbox Studios](https://www.tinkerbox.com.sg).

This is an accompanying demo app to the [messenger platform gem](https://github.com/tinkerbox/messenger_platform). It showcases how to use Facebook's messenger platform](https://developers.facebook.com/products/messenger/) into your rails app, allowing you to create bots to facilitate conversations with people on Facebook Messenger. It includes a mountable rails engine to handle [webhooks](https://developers.facebook.com/docs/messenger-platform/webhook-reference), and a simple client to talk to the [Send API](https://developers.facebook.com/docs/messenger-platform/send-api-reference) and hook it up to to [Wit.ai](https://wit.ai/).


## Installation

Clone the repository, and copy the the sample environment variables:

    git clone git@github.com:tinkerbox/messenger_platform_demo.git
    cp .env.sample .env

Run the migrations, and the server:

    rake db:setup
    rails server webrick

We are using WEBrick locally as it supports HTTPS connections pretty easily.
