#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'rake/testtask'

task :default => [:test]

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/unit/**/*_test.rb']
  t.verbose = true
end

desc "Starts a pry console with the gem laoded"
task :pry_console do
  exec "bundle exec pry -r ./lib/restulicious.rb"
end

desc "Starts a console with the gem laoded"
task :console do
  exec "bundle exec irb -r ./lib/restulicious.rb"
end

