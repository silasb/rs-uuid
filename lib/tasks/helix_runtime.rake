require 'helix_runtime/build_task'

HelixRuntime::BuildTask.new("rs-uuid")

task :default => :build
