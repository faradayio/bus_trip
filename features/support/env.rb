require 'bundler'
Bundler.setup

require 'cucumber'
require 'cucumber/formatter/unicode'

require 'data_miner'
DataMiner.logger = Logger.new(nil)

require 'sniff'
Sniff.init File.join(File.dirname(__FILE__), '..', '..'), :earth => [:bus], :cucumber => true, :logger => 'log/test_log.txt'
