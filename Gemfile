source 'https://rubygems.org'

gemspec

# This is here instead of gemspec so that we can
# override which Chef gem to use when we do testing
# Possibilities in the future include using environmental
# variables, thus allowing us to to have Travis support

# Examples you can use in Gemfile.local
# gem 'chef', '~> 10.28'
# gem 'chef' # latest
# gem 'chef', git: 'git://github.com/mal/chef.git', branch: 'CHEF-3307'
gem 'chef', :path => '../chef'
gem 'chef-dk', :path => '../chef-dk'
# If you want to load debugging tools into the bundle exec sandbox,
# # add these additional dependencies into Gemfile.local
eval(IO.read(__FILE__ + '.local'), binding) if File.exists?(__FILE__ + '.local')
