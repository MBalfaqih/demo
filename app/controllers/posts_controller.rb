class PostsController < ApplicationController


    def create
        params = {
                post: {
                    title: "1title",
                    content: "1content",
                    comments_attributes: { 
                        first: { content: "1comment content" },
                        second:  { content: "Another content" }
                    }
                }
        }
        post = Post.create(params[:post])

        render json: { data: post }
    end

    def update
        # debugger
        params = {
            post: {
                title: "params[:title]",
                comments_attributes: [
                    { id: 10, content: "Edited comment"}
                ]
            }
        }
        post = Post.find(10)
        post.update(params[:post])

        render json: { data: post }
    end

    private
    def post_params
        params.permit(:title)
    end

end
