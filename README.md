# liftoffConfig
Setup for liftoff CLI for creating and configuring new Xcode projects in Swift

## Setup

1) Instalation
```
  brew tap liftoffcli/formulae
  brew install liftoff
```
2) Add the Swift 3 and Xcode 8 compatibility

You need to edit the file named project.rb located in `/usr/local/Cellar/liftoff/{lastest version}/rubylib/liftoff/`
And add theses lines in function named 'new_app_target' :
  - configuration.build_settings['SWIFT_VERSION'] = '3.0'
  - configuration.build_settings['PRODUCT_BUNDLE_IDENTIFIER'] = 'fr.' + 'maximelc' + '.' + @name

3) Enjoy liftoff 🍻
