# liftoffConfig
Setup for liftoff CLI for creating and configuring new Xcode projects in Swift

## Setup

1) Instalation
```
  brew tap liftoffcli/formulae
  brew install liftoff
```
2) Add the Swift 4 and Xcode 9 compatibility

You'll need to go to the directory located at `/usr/local/Cellar/liftoff/{lastest version}/rubylib/liftoff/`

Edit the file named *project.rb*, in function named 'new_app_target' add this line
```configuration.build_settings['SWIFT_VERSION'] = '4.0'```

Edit the file named *project_builder.rb*, replace the data of function named 'resource_file' by
```
def resource_file?(name)
 name.end_with?('xcassets', 'bundle', 'xib', 'storyboard', 'xml')
end
```

3) Enjoy liftoff 🍻
