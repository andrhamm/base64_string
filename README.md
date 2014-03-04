# base64_string

Adds Base64 methods to Ruby's String class.

## Installation

Add this line to your application's Gemfile:

    gem 'base64_string'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install base64_string

## Usage

```ruby
"hello world".encode64        # => "aGVsbG8gd29ybGQ=\n"
"aGVsbG8gd29ybGQ=\n".decode64 # => "hello world"

s = "hello world"
s.encode64
s                             # => "hello world"
s.encode64!
s                             # => "aGVsbG8gd29ybGQ=\n"
```

Adds all the same methods that [Base64](http://ruby-doc.org/stdlib-2.1.1/libdoc/base64/rdoc/Base64.html) class has:

```
decode64
decode64!
encode64
encode64!
strict_decode64
strict_decode64!
strict_encode64
strict_encode64!
urlsafe_decode64
urlsafe_decode64!
urlsafe_encode64
urlsafe_encode64!
```

The only difference is that Base64's methods take an argument. The String version of the method will pass itself as the argment when it calls the Base64 method.