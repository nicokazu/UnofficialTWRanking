source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Ruby
ruby '2.6.6'

####################
# 基本ツール ここから#
####################
# Webフレームワーク - Rails
gem 'rails', '6.0.3'
# データベース - MySQL
gem 'mysql2', '>= 0.4.4'
# メインサーバ - puma
gem 'puma', '~> 4.1'
# Sass高速化 - sassc
gem 'sassc-rails'
# JSON API - jbuilder
gem 'jbuilder', '~> 2.7'
# HAML
gem 'haml-rails'
# ページネーション - kaminari
gem 'kaminari'#, '~> 1.2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
# アカウント管理 - devise
gem 'devise', '4.7.1'
#gem 'devise-i18n'
#gem 'devise-i18n-views'
# Devise機能追加 - devise-security
gem 'devise-security'
# データベースログ - paper_trail
gem 'paper_trail'#, '~> 1.2', '>= 1.2.13'
# 管理画面
gem 'rails_admin'
# WebPack
gem 'webpacker'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds asup development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # エラーの表示形式を変更。さらに、インスタンスの中身を表示させる
  gem 'better_errors'
  gem 'binding_of_caller'

  # テスト用のgem
  # develop環境でもrails testで期待通りの動作ができているか確認する
  gem 'minitest-rails'

  # 実際にメールを送らなくてもアプリケーションから送られたメールを確認するためのgem
  gem 'letter_opener'
  gem 'letter_opener_web'

  # modelにschemaの情報を書き込むgem
  gem 'annotate'#, '~> 3.1', '>= 3.1.1'

  # 構文エラーチェッカー
  gem 'rubocop-rails'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
