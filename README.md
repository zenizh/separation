# separate_views

[![Build Status](https://travis-ci.org/kami30k/separate_views.svg)](https://travis-ci.org/kami30k/separate_views)
[![Gem Version](https://badge.fury.io/rb/separate_views.svg)](http://badge.fury.io/rb/separate_views)

separate_views renders separate views depending on the user device type for Rails.
This feature is realized by Action Pack Variants.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'separate_views'
```

And then execute:

```
$ bundle
```

## Usage

Once you added to Gemfile, you can use specific views depending on the user device type, such as `phone`, `tablet`, and `desktop`.

The relation between user device type and file name is as follows:

| User Device Type | File Name Example | Device Example |
| --- | --- | --- |
| Phone | show.html+phone.erb | iPhone, Android |
| Tablet | show.html+tablet.erb | iPad, Android Tablet |
| Desktop | show.html+desktop.erb | PC |
| (Default) | show.html.erb | - |

If you don't prepare specific view, Rails application renders default view (e.g. `show.html.erb`).

## Contributing

1. Fork it ( https://github.com/kami30k/separate_views/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
