# frozen_string_literal: true

source "https://rubygems.org"

gemspec

# Sibling client monorepo — provides Supabase::Client used at runtime.
# Becomes a published runtime dep once supabase-rb hits RubyGems.
if File.exist?(File.expand_path("../supabase-rb/lib/supabase.rb", __dir__))
  gem "supabase-rb", path: "../supabase-rb"
else
  gem "supabase-rb",
      git: "https://github.com/supabase-ruby/supabase-rb.git",
      branch: "main"
end

group :development, :test do
  gem "rspec", "~> 3.13"
end
