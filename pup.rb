#!/usr/bin/ruby

require 'cgi'
require 'rubygems'
require 'mysql2'

cgi = CGI.new
puts cgi.header
puts "<html>
<head>
<style>
html {
    font-size: 40px;
}
table {
    font-size: 40px;
} 
</style>
</head>
<body>"

puts "This is a test"

client = Mysql2::Client.new(:host => "localhost", :username => "root", :database => "pup")
results = client.query("DESC users")

puts "<table>"
results.each do |row|
  puts "<tr>"
  puts "<td>#{row["Field"]}</td><td>#{row["Type"]}</td>" # row["id"].class == Fixnum
  puts "</tr>"
end
puts "</table>"

results = client.query("SELECT * FROM users WHERE first_name='lapin'")

puts "<img src='#{results.first['url']}'/>"

puts "</body></html>"
