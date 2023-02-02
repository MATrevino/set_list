require 'rails_helper'

RSpec.describe "Song Index Page", type: :feature do
#  As a user, 
# when I visit '/songs' 
# I see each song's title and play count
  describe "as a user" do
    describe "when I visit '/songs'" do
      it "I see each song's title and play count" do
        song_1 = Song.create!(title: "I Really Like You", length: 341, play_count: 35135)
        song_2 = Song.create!(title: "Call Me Maybe", length: 361, play_count: 325135)

        visit '/songs'
        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Play count: #{song_1.play_count}")
        expect(page).to have_content(song_2.title)
        expect(page).to have_content("Play count: #{song_2.play_count}")
      end
    end
  end
end