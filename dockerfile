# Docker-hubのRuby 2.6.6のイメージを使う
FROM ruby:2.6.6

# apt-getにyarnのリポジトリを追加する
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# apt-getのアップデート
RUN apt-get update -qq && apt-get install -y nodejs yarn
# Rails credentialsを設定するためにvim導入
RUN apt-get install -y vim
# railsフォルダを作成
RUN mkdir /twranking

# 作業ディレクトリをAPP_ROOTに割り当て
ENV APP_ROOT /twranking
# 作業ディレクトリをrailsフォルダに設定
WORKDIR $APP_ROOT
# ローカルのGemfile, Gemfile.lockをコンテナ上にコピー
ADD ./Gemfile $APP_ROOT/Gemfile

# bundle install実行
RUN bundle install

ADD . $APP_ROOT

# コンテナ起動毎に実行するシェルファイルをコンテナ内にコピーする
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT [ "entrypoint.sh" ]

# コンテナのポート3000を開放
EXPOSE 3000