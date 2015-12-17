Paginate::App.controllers do
  configure do
    WillPaginate.per_page = 20 # 評価されてない。書き方悪いのかな
  end

  get :index do
    @shops = Shop.all.paginate(page: params[:page], per_page: 50)
    haml :'main/list'
  end

  get :array do
    @ns = (1..100).to_a.paginate(page: params[:page])
    haml :'array/list'
  end
end
