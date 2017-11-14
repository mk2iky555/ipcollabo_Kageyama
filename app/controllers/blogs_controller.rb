class BlogsController < ApplicationController

    def index #一覧画面 #お客さんに渡す
        @blogs = Blog.all
    end
    
    def new   #注文を受ける人
        @blog = Blog.new
    end
    
    def create #作る人
        @blog = Blog.new(blog_params)
        @blog.save
        redirect_to "/blogs" #商品渡しをお願いする
    end
    
    private #すべてが影響される
    
    def blog_params #ストロングパラメータ
        params.require(:blog).permit(:title, :body, :author)
    end


end
