require 'spec_helper'

describe 'Manage Dogs' do
  it 'User can create and view list of dogs' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Dog'
    fill_in 'Dog name', with: 'Trixie'
    fill_in 'Dog color', with: 'white'
    click_on 'Create Dog'
    expect(page).to have_content 'Trixie'
    expect(page).to have_content 'white'
  end
end