source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'spree', github: 'spree/spree', branch: 'master'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: 'master'
gem 'rspec-sqlimit'
gemspec
