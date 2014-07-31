OnePage::App.controllers  do
  get '/*' do
    @page = Page[uri: "/#{params[:splat]}"]
    render @page.template
  end

  post '/*', params: [:title, :template, :data] do
    Page.create(uri: "/#{params[:splat]}", title: params[:title], template: params[:template], data: params[:data])
    redirect "/#{params[:splat]}"
  end
end
