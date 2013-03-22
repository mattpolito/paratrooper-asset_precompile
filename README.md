# Paratrooper - Asset Precompile

[![Gem Version](https://badge.fury.io/rb/paratrooper-asset_precompile.png)](http://badge.fury.io/rb/paratrooper-asset_precompile)
[![Code Climate](https://codeclimate.com/github/mattpolito/paratrooper-asset_precompile.png)](https://codeclimate.com/github/mattpolito/paratrooper-asset_precompile)

Sometimes you need to run Asset Precompilation manually. This will add the process into the mix when using [Paratrooper][].

## Installation

Add this line to your application's Gemfile:

    gem 'paratrooper-asset_precompile'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install paratrooper-asset_precompile

## Usage

When initializing `Paratrooper::Deploy` a `notifiers` option can be passed

```ruby
Paratrooper::Deploy.new('app_name',
  notifiers: [
    Paratrooper::AssetPrecompile::Notifier.new
  ]
)
```

For more information on `notifiers`, see [Paratrooper][] documentation.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks

* [Brandon Farmer][]

[Paratrooper]: https://github.com/mattpolito/paratrooper
[Brandon Farmer]: https://github.com/bthesorceror
