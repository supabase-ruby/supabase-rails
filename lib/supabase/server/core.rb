# frozen_string_literal: true

module Supabase
  module Server
    Credentials = Struct.new(:token, :apikey, keyword_init: true)

    module Core
      module_function

      def extract_credentials(headers)
        Credentials.new(
          token: extract_bearer_token(lookup_header(headers, "authorization")),
          apikey: stringify(lookup_header(headers, "apikey"))
        )
      end

      def lookup_header(headers, name)
        return nil if headers.nil?

        target = name.downcase

        if headers.respond_to?(:each_pair)
          headers.each_pair do |key, value|
            return value if key.to_s.downcase == target
          end
        elsif headers.respond_to?(:each)
          headers.each do |key, value|
            return value if key.to_s.downcase == target
          end
        end

        nil
      end

      def extract_bearer_token(authorization)
        return nil if authorization.nil?

        str = authorization.to_s
        return nil if str.length < 7
        return nil unless str[0, 6].casecmp("Bearer").zero?
        return nil unless str[6] == " "

        token = str[7..].to_s.strip
        token.empty? ? nil : token
      end

      def stringify(value)
        return nil if value.nil?

        str = value.to_s
        str.empty? ? nil : str
      end
    end
  end
end
