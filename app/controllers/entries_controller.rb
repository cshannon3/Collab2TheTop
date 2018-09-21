class EntriesController < ApplicationController
    def create
        @challenge = Challenge.find(params[:challenge_id])
        @entry = @challenge.entries.create(entry_params)
        @entry.score = 0
        @entry.githubusername = current_user.username
        @entry.creatorentry = @challenge.githubusername==@entry.githubusername ? 1 : 0 end
        @entry.save!
        redirect_to challenge_path(@challenge)
    end

    def destroy
        @challenge = Challenge.find(params[:challenge_id])
        @entry = @challenge.entries.find(params[:id])
        @entry.destroy
        redirect_to challenge_path(@challenge)
    end
     
    private
        def entry_params
          params.require(:entry).permit(:title, :url1, :url2)
        end
end
