# rs-uuid
Ruby bindings for the Rust crate [`uuid`](https://doc.rust-lang.org/uuid/uuid).

# Examples

```ruby
  require 'rs-uuid'

  uuid = RsUuid.uuidv4()
  => "30386a39-14fb-4431-aba1-422ca1f649ee"
```

# Benchmark results

Comparing to [`uuid`](https://github.com/assaf/uuid) and [`SecureRandom`](https://ruby-doc.org/stdlib-2.1.2/libdoc/securerandom/rdoc/SecureRandom.html),
using benchmark/ips:

```
$ cd benchmark && bundle i && ruby benchmark.rb
Warming up --------------------------------------
            rs-uuid:    43.615k i/100ms
       SecureRandom:    18.950k i/100ms
               uuid:    36.000  i/100ms
Calculating -------------------------------------
            rs-uuid:    515.433k (± 3.6%) i/s -      2.617M in   5.083582s
       SecureRandom:    198.874k (± 4.7%) i/s -      1.004M in   5.061855s
               uuid:      8.062k (±43.5%) i/s -     14.472k in   5.010423s

Comparison:
            rs-uuid::   515432.6 i/s
       SecureRandom::   198874.0 i/s - 2.59x  slower
               uuid::     8061.7 i/s - 63.94x  slower
```