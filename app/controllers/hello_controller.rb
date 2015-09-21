class HelloController < ApplicationController
    def index
        render text:'こんにちわ、世界!'
    end
    
    def view
        @msg = 'こんにちわ、日本!'
        
    end
    
    def list
        @books = Book.all
    end
    
    #TODP: エラーが出るNoMethodError in HelloController#app_var
    def app_var
        render text: MY_APP['logo']['source']
    end
end
