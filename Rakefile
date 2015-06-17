require "bundler/gem_tasks"

require 'rake/extensiontask'
Rake::ExtensionTask.new do |ext|
  ext.name    = 'linux_block_device'
  ext.ext_dir = 'ext/linux_block_device'
  ext.lib_dir = 'lib/linux_block_device'
end

require "rspec/core/rake_task"
RSpec::Core::RakeTask.new(:spec => :compile)

task :default => :spec
