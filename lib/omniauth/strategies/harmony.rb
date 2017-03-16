# encoding: UTF-8

require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Harmony < OmniAuth::Strategies::OAuth2
      option :name, "harmony"

      option :client_options, {
        site: "https://home.myharmony.com/cloudapi",
        authorize_url: "https://home.myharmony.com/oauth2/authorize",
        token_url: "https://home.myharmony.com/oauth2/token"
      }
      option :scope, "remote"
      option :response_type, "code"

      def authorize_params
        params = super.merge(state: request.params["state"])
        session["omniauth.state"] = params[:state]
        params
      end

      def callback_url
        full_host + script_name + callback_path
      end

      def callback_phase
        session["omniauth.expected_state"] = session["omniauth.state"]
        super
      end
    end
  end
end
