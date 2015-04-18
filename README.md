# Variauto

[![Build Status](https://travis-ci.org/kami30k/variauto.svg)](https://travis-ci.org/kami30k/variauto)
[![Gem Version](https://badge.fury.io/rb/variauto.svg)](http://badge.fury.io/rb/variauto)

Variauto set request.variant to user device type automatically for Rails.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'variauto'
```

And then execute:

```
$ bundle
```

## Usage

Once you added to Gemfile, you can use specific views according to user device type, such as `phone`, `tablet`, and `desktop`.

The relation between user device type and file name is as follows:

| User Device Type | File Name Example | Device Example |
| --- | --- | --- |
| Phone | show.html+phone.erb | iPhone, Android |
| Tablet | show.html+tablet.erb | iPad, Android Tablet |
| Desktop | show.html+desktop.erb | PC |
| (Default) | show.html.erb | - |

If you don't prepare specific view, Rails application renders default view (e.g. `show.html.erb`).

## Contributing

1. Fork it ( https://github.com/kami30k/variauto/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
