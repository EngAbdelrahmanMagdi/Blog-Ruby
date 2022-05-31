class PostsController < ApplicationController
    before_action :unauthenticated_user
end 