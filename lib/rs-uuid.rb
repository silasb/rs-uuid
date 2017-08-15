require "helix_runtime"

begin
  require "rs-uuid/native"
rescue LoadError
  warn "Unable to load rs-uuid/native. Please run `rake build`"
end
