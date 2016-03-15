# SpaceStation

A toy gem dedicated to clients and project managers who request silly and unrealistic requirements.
It provides simple Rack middleware that prints an ascii figure before every request.

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

There are multiple middlewares to use:
- SpaceShuttle
- Airplane
- F16
- UFO
- Apollo
- Darth Vader
- MiddleFinger

## Example

```ruby
  use SpaceStation::UFO
```

![UFO Example](/ufo_example.png)

## ASCII Art Sources
- http://xcski.com/~ptomblin/planes.txt
- http://www.chris.com/ascii/joan/www.geocities.com/SoHo/7373/transp.html
- http://ascii.co.uk/art
- http://www.asciiartfarts.com/
- http://www.ascii-middle-finger.com/

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aasare/space_station. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

