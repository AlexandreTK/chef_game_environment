# Cofiguration file:
# - Tell it where the cookbooks are located
# - Get the attributes from the specified json file. Could use the -j flag instead.

cookbook_path File.expand_path("../cookbooks", __FILE__)
json_attribs File.expand_path("../node.json", __FILE__)
