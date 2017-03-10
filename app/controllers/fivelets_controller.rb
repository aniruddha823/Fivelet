class FiveletsController < ApplicationController
def new 
	if user_signed_in? == true
		@fivelet = current_user.fivelets.build
	else
		@fivelet = Fivelet.new
	end
end

def create
	if user_signed_in? == true

		@fivelet = current_user.fivelet.build(fivelet_params)

	else
		@fivelet = Fivelet.new(fivelet_params)
	end
	if @fivelet.save
	redirect_to @fivelet
	else
	end
end

def show
	@fivelet = Fivelet.find(params[:id])
end


def recommendArtist(artist)
	dbArtist = RSpotify::Artist.search(artist).first 
	related_artistsArr = dbArtist.related_artists
	related_artistsArr.shuffle!
	newArtist = related_artistsArr.first
	return newArtist
end
helper_method :recommendArtist

private
def fivelet_params
params.require(:fivelet).permit(:artist1,:artist2, :artist3, :artist4, :artist5)
end

end






