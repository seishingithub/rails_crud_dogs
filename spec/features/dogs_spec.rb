require 'spec_helper'

describe 'Manage Dogs' do
  it 'User can create and view list of dogs' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Dog'
    fill_in 'Dog name', with: 'Trixie'
    fill_in 'Dog color', with: 'white'
    click_on 'Create dog'
    expect(page).to have_content 'Trixie'
    expect(page).to have_content 'white'
  end

  it 'User can edit and update list of dogs' do
    visit '/'
    click_on 'Add Dog'
    fill_in 'Dog name', with: 'Trixie'
    fill_in 'Dog color', with: 'white'
    click_on 'Create dog'
    expect(page).to have_content 'Trixie'
    expect(page).to have_content 'white'
    click_on 'Trixie'
    click_on 'Edit dog'
    fill_in 'Dog name', with: 'Lowden'
    fill_in 'Dog color', with: 'black'
    click_on 'Update dog'
    expect(page).to have_no_content 'Trixie'
    expect(page).to have_no_content 'white'
    expect(page).to have_content 'Lowden'
    expect(page).to have_content 'black'
  end

  it 'User can delete dogs from list' do
    visit '/'
    click_on 'Add Dog'
    fill_in 'Dog name', with: 'Trixie'
    fill_in 'Dog color', with: 'white'
    click_on 'Create dog'
    expect(page).to have_content 'Trixie'
    expect(page).to have_content 'white'
    click_on 'Trixie'
    click_on 'Delete dog'
    expect(page).to have_no_content 'Trixie'
    expect(page).to have_no_content 'white'
  end
end