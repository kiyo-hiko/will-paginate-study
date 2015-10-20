Paginate::App.controllers do
  configure do
    WillPaginate.per_page = 20 # 評価されてない。書き方悪いのかな
  end

  get :index do
    @shops = Shop.where(name: '支店500').paginate(page: params[:page], per_page: 50)
    haml :'main/list'
  end
end
