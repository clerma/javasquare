# frozen_string_literal: true

source "https://rubygems.org"


# Hello! This is where you manage which Jekyll version is used to run.
# When you want to use a different version, change it below, save the
# file and run bundle install. Run Jekyll with bundle exec, like so:
#
#     bundle exec jekyll serve
#
gem "jekyll", "~> 4.3.1"
gem 'liquid', '~> 4.0', '>= 4.0.4'
# ffi 1.15.x fails to build on newer Xcode / macOS SDKs (the vendored
# libffi aarch64 asm uses CFI directives modern clang rejects). 1.17+
# ships the fix.
gem 'ffi', '~> 1.17'
# logger 1.6+ (bundled with Ruby 3.3.11) breaks Jekyll 4.3.2's
# log_adapter: `@level_override` is nil until `local_level=` is called,
# so `level` raises NoMethodError. Pin logger back to 1.5.x until we
# upgrade Jekyll to 4.4+.
gem 'logger', '~> 1.5.3'
# If you have any plugins, put them here!
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
group :jekyll_plugins do
    gem 'jekyll-feed'
    gem 'jekyll-sitemap'
    gem 'jekyll-paginate'
    gem 'jekyll-seo-tag'
    gem 'jekyll-archives'
end