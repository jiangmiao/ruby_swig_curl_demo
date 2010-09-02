#!/usr/bin/env ruby
require 'curl'
include Curl

url = ARGV[0] || 'http://www.google.com'

p curl_global_init(CURL_GLOBAL_ALL);
p curl =  curl_easy_init();
p curl_easy_setopt(curl, CURLOPT_URL, url)
p curl_easy_perform(curl)
p curl_easy_cleanup(curl)
p curl_global_cleanup()

