**String**
1. Print the following string \x52\x75\x62\x79\x46\x75 as it is, it should NOT be resolved to characters.
```ruby
"\x52\x75\x62\x79\x46\x75".unpack("H*").pack("H*")
```

2. You have string `RubyFu` convert this string to an array:
```ruby
"RubyFu".chars
```

**Arrays**
1. You have the following array `["R", "u", "b", "y", "F", "u"]` convert it to string:
```ruby
["R", "u", "b", "y", "F", "u"].join
```

2. You have the following array `["1", "2", "3", "4"]`, calculate the sum of all elements:
```ruby
["1", "2", "3", "4"].map{|i| i.to_i}.reduce(:+)
```

**Files and Folder**
1. Find all files ends with `.jpg`, `pdf`, `docx` or `zip` in your `Downloads` folder. Create folder `ruby-testfu` and copy all found files. into it.
```ruby
Dir.chdir ENV["HOME"] + "/Downloads"
files = []
%w{*.jpg *.pdf *.docx *.zip }.each do |file|
  files += Dir[file]
end
files
Dir.mkdir "ruby-testfu"
files.each {|file| FileUtils.cp file, "ruby-testfu"}
Dir["ruby-testfu/*"]
```
