json.short_url request.base_url + '/' + url.short_url
json.extract! url, :long_url, :created_at, :updated_at
json.url url_url(url, format: :json)
