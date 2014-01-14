require 'spec_helper'

describe 'editing restaurants' do

  before do
    Restaurant.create(name: 'McDonalds', description: 'Blah blah blah blah blah blah blah')
    visit '/restaurants'
  end

  it 'can change the name of a restaurant' do

    click_link 'Edit this restaurant'
    fill_in 'Name', with: 'Burger King'
    click_button 'Update Restaurant'

    expect(page).to have_content 'Burger King'

  end

  it 'can delete a restaurant' do
    click_link 'Delete this restaurant'
    expect(page).not_to have_content 'McDonalds'
  end

end