[![Stories in Ready](https://badge.waffle.io/willnet/honobono.png?label=ready&title=Ready)](https://waffle.io/willnet/honobono)
# Honobono

## WARNING

This gem is NOT implemented yet.

## やりたいこと

案です。[Issues](https://github.com/willnet/honobono/issues)でどんな感じで設計するか詰めていきます。

* rake タスクのログが簡単に取れる
  * 開始時間、終了時間を出力
  * デフォルトだと log/rake.log に出す
    * 設定で変更できるように
  * 全部出力するのはアレなので、出し分けできるようにする
    * prerequisition で設定する
    * `log do ... end` みたいなブロックも使えるようにする
  * エラー時にもログ吐く
    * 設定で airbrake などに投げることもできるようにしたい
    * 普通にログだした後にエラーを再度 raise させるのでもよい？→独自の設定書いたりする需要あるはずなので、うまく設定できるようにしたい

## Usage

* You can use `honobono` command instead of `rake`.
  * `hnbn` is alias
* `honobono` write log.
* default log file path is `/tmp/honobono.log`.
* You can set path with `config/honobono.yml`.

e.g.

```yaml
log_dir: /your/log/path.yml
```

## Installation

Add this line to your application's Gemfile:

    gem 'honobono'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install honobono

## Contributing

1. Fork it ( https://github.com/[my-github-username]/honobono/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
