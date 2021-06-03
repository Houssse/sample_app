class ApplicationController < ActionController::Base
    def hello
        render plain: "test heroku"
    end
end
