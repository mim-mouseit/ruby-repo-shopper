class AdminController < ApplicationController
    def index
        @adminTitle = 'Admin page title';
        @content = 'This is about Admin';
    end
end
