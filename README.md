# flexbox_sass_rails

This ruby gem gives you a set of classes you can use to create a responsive flexbox grid in your rails application. It is very similar to [angular material](https://material.angularjs.org) flexbox classes. It's written in sass, you can specify breakpoints for different viewport widths.

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

### Including flexbox stylesheet in a project:

To use the stylesheet as it is, require flexbox_sass_rails in `application.css`. Simply add this line:

``` css
/*
*= require flexbox_sass_rails
*/
```

To modify viewport width breakpoints, instead of requiring it in `application.css`, import flexbox_sass_rails in a scss file in your stylesheets and set width variables:

``` scss
$layout-sm: 768px;
$layout-md: 1024px;

@import 'flexbox_sass_rails';
```

### Viewport width breakpoints:

These are the preset breakpoints:

``` scss
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
                (optional)
[prefix]-[name]-[interval]-[value]

// fb-flex-xs-20
[fb]-[flex]-[xs]-[20]

// fb-layout-sm-row:
[fb]-[layout]-[sm]-[row]

// fb-layout-align-md-center-center:
[fb]-[layout-align]-[md]-[center-center]
```

**Exception!** There is one class that doesn't have a value part, `fb-flex` (or `fb-flex-sm` etc)

### Set of style classes:

Description will be added soon

```
fb-layout-fill

fb-layout-row (fb-layout-md-row)
fb-layout-column (fb-layout-md-column)

fb-layout-wrap (fb-layout-md-wrap)

fb-layout-align-start-stretch (fb-layout-align-md-start-stretch)
fb-layout-align-start-start
fb-layout-align-start-center
fb-layout-align-start-end

fb-layout-align-center-stretch
fb-layout-align-center-start
fb-layout-align-center-center
fb-layout-align-center-end

fb-layout-align-end-stretch
fb-layout-align-end-start
fb-layout-align-end-center
fb-layout-align-end-end

fb-layout-align-space-around-stretch
fb-layout-align-space-around-start
fb-layout-align-space-around-center
fb-layout-align-space-around-end

fb-layout-align-space-between-stretch 
fb-layout-align-space-between-start
fb-layout-align-space-between-center
fb-layout-align-space-between-end

fb-flex (fb-flex-md)
fb-flex-5 (fb-flex-md-5)
fb-flex-10
...
fb-flex-95
fb-flex-100

fb-flex-33
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pavelccz/flexbox_sass_rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

