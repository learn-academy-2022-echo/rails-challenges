class TeamController < ApplicationController

    def member 
        render 'team/member'
    end
    def lists
        render 'team/lists'
    end
    def dlists
        render 'team/dlists'
    end
end
