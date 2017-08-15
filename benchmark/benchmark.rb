require 'benchmark/ips'
require 'helix_runtime'

require 'uuid'
require 'securerandom'

$: << '../lib'
require 'rs-uuid'

Benchmark.ips do |x|
  x.report("rs-uuid:")   { RsUuid.uuidv4 }
  x.report("SecureRandom:") { SecureRandom.uuid }
  x.report("uuid:") { uuid = UUID.new; uuid.generate }

  x.compare!
end
