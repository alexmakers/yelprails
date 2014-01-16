require 'spec_helper'

describe 'editing restaurants' do

  before do
    create(:restaurant)
    visit '/restaurants'
  end

  it 'can change the name of a restaurant' do

    click_link 'Edit this restaurant'
    fill_in 'Name', with: 'Burger King2'
    click_button 'Update Restaurant'

    expect(page).to have_content 'Burger King2'

  end

  it 'can delete a restaurant' do
    click_link 'Delete this restaurant'
    expect(page).not_to have_content 'Burger King'
  end

end