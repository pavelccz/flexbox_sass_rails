# FlexboxSassRails

This ruby gem gives you a set of classes you can use to create your responsive flexbox grid in your rails application. It is very similar to [angular material](https://material.angularjs.org) flexbox classes. It's written in sass, you can specify breakpoints for different viewport widths.

Note that this project is still a work in progress. The released version contains only features that should work perfectly. There is just a basic set of flexbox classes, but more will be added soon.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flexbox_sass_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flexbox_sass_rails

## Usage

### Include

To use the stylesheet as it is, require flexbox_sass_rails in `application.css`. Simply add this line:
```
     *= require flexbox_sass_rails
```

To modify viewport width breakpoints, import flexbox_sass_rails in a scss file in your stylesheets and set width variables:

```
    $layout-sm: 768px;
    $layout-md: 1024px;

    @import 'flexbox_sass_rails'
```

### Viewport width breakpoints:

These are the preset breakpoints:

```
    $layout-sm: 600px;
    $layout-md: 960px;
    $layout-lg: 1280px;
    $layout-xl: 1920px;
```

Breakpoints define the lowest widths of each interval. There are five of them:

```
    Extra small [xs]:    0px -  599px
    Small       [sm]:  600px -  959px
    Medium      [md]:  960px - 1279px
    Large       [lg]: 1280px - 1919px
    Extra large [xl]: 1920px and more
```

Usage of breakpoints is very simple to make your project responsive. Each class containing the interval abbreviation will only add the styles to the element if the viewport width is within the interval.

**Exception!** There is one class excluded from the responsive classes, `fb-layout-fill` can only be set regardless of the viewport's width.

### Class names:

Class names allways begin with a `fb-` prefix to avoid conflicts with other class names in your project.

Class names consist of:

```
fb-layout-sm-row:

[prefix] - [name] - [interval] - [value]
                (optional)
   fb    - layout -     sm     -   row

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pavelccz/flexbox_sass_rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

