# Separation

[![Build Status](https://travis-ci.org/kami-zh/separation.svg)](https://travis-ci.org/kami-zh/separation)
[![Gem Version](https://badge.fury.io/rb/separation.svg)](http://badge.fury.io/rb/separation)

Separation renders separate views depending on the user device type for Rails.
This feature is realized by Action Pack Variants.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'separation'
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

1. Fork it ( https://github.com/kami-zh/separation/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
