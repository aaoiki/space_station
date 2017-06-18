# SpaceStation

A toy gem dedicated to clients and project managers who make silly and unrealistic requirements sometimes.
It provides a set of Rack middleware that prints an ascii figure with every response.
It could also be useful for debugging.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'space_station'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install space_station

## Usage

Just put this line in your `config.ru` file and replace MiddlewareName with the middleware of your choice

```ruby
  use SpaceStation::MiddlewareName
```

There are multiple middleware to use:
- Airplane
- Apollo
- DarthVader
- F16
- MiddleFinger
- SpaceShuttle
- UFO
- Unicorn

## Example

```ruby
  #config.ru
  use SpaceStation::UFO
```

You can also pass a `:msg` option with the middleware name to print a custom message instead of the ascii art.

```ruby
  #config.ru
  use SpaceStation::Station, msg: "Print This Message"
```

![UFO Example](/ufo_example.png)

## ASCII Art Sources
- http://xcski.com/~ptomblin/planes.txt
- http://www.chris.com/ascii/joan/www.geocities.com/SoHo/7373/transp.html
- http://ascii.co.uk/art
- http://www.asciiartfarts.com/
- http://www.ascii-middle-finger.com/
- http://www.ascii-art.de/ascii/uvw/unicorn.txt


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
