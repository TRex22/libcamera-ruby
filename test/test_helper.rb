$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'libcamera'

require 'minitest/autorun'
require 'minitest/focus'
require 'minitest/reporters'
require 'mocha/minitest'

require 'timecop'

Minitest::Reporters.use!(
  [Minitest::Reporters::DefaultReporter.new(color: true)],
  ENV,
  Minitest.backtrace_filter
)

Timecop.safe_mode = true

# Quick and dirty rails style testing with minitest
# alias test describe
def test(description, &block)
  describe description do
    it "" do
      block
    end
  end
end
