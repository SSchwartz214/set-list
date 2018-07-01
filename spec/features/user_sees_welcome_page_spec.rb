=begin
As a vistor
When I visit the home page of the app
Then I should see a welcome message
=end

RSpec.describe 'a visitor' do
  context 'visting /' do
    it 'should show a welcome message' do

      visit '/'

      within("#greeting") do
        expect(page).to have_content("Welcome!")
      end

    end
  end
end
