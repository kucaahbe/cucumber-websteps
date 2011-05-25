require 'sinatra/base'
class TestApp < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/congratulations' do
    @redirected = params.has_key?("redirected")
    erb :congratulations
  end

  get '/other/page' do
    redirect to('/congratulations?redirected=true')
  end

  template :layout do
    <<EOF
<!DOCTYPE html>
<html>
<head>
  <title>test app</title>
</head>
<body>
  <%= yield %>
</body>
</html>
EOF
  end

  template :home do
    <<EOF
    <a href="/congratulations">some link</a>
EOF
  end

  template :congratulations do
    <<EOF
    <% if @redirected %>
      <h1>You was really redirected!</h1>
    <% end %>
    <h1>Great, you can click links!</h1>
EOF
  end
end

TestApp.run! unless defined?(Cucumber)
