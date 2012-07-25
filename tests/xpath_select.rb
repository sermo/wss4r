require "rexml/document"
include REXML

doc = REXML::Document.new(File.read("../xml/wse-answer.xml"))

e = REXML::XPath.first(doc, "//soap:Envelope//soap:Header//wsse:Security//wsu:Timestamp")

puts(e.to_s())

puts("---------------------------------------------------------------------------------------------------------------")

s = REXML::XPath.match(e, "//xenc:CipherValue")
puts(s[0])