# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'minitest' do
  # with Minitest::Unit
  watch(%r|^test/(.*)\/?test_(.*)\.rb|)
  watch(%r|^lib\/restulicious\/(.*).rb|)     { |m| "test/unit/#{m[1]}_test.rb" }
  watch(%r|^test/test_helper\.rb|)    { "test" }
end
