require "base64_string/version"
require 'base64'

class String
  [:encode64, :decode64].each do |s|
    [nil, :strict, :urlsafe].each do |p|
      m = p.nil? ? s : "#{p}_#{s}"
      define_method(m) { Base64.send m, self }
      define_method("#{m}!") { replace self.send(m) }
    end
  end
end