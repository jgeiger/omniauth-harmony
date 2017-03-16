# OmniAuth Harmony Strategy

Strategy to authenticate with Harmony via OAuth2 in OmniAuth

For more details, read the [Harmony authorization documentation][auth-docs].

## Install

Add this to your `Gemfile`:

``` ruby
gem "omniauth-harmony"
```

then

``` sh
bundle install
```


## Usage

In Rails add the following to `config/initializers/omniauth.rb`

``` ruby
use OmniAuth::Builder do
  provider :harmony, ENV["HARMONY_CLIENT_KEY"], ENV["HARMONY_SECRET_KEY"]
end
```

This will enable the route `/auth/harmony` which will start the OAuth2 flow.

NOTE: The Harmony OAuth2 service only returns authorization tokens for the Harmony API, not user identification.

## Contributing

Contributions are always welcome and highly encouraged.

## License

MIT - See [LICENSE](LICENSE) for more information.

[auth-docs]: https://www.myharmony.com/en-us/harmony-api?ab-ux=5
