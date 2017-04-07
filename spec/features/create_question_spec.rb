require 'rails_helper'


feature 'User creates question' do
  it 'they see the foobar on the page', js: true do
    visit '/questions/new'
    fill_in 'question[title]', with: 'What is Rspec?'
    fill_in 'question[description]', with: 'Explain definition of Rspec'
    click_button 'Create Question'

    expect(page).to have_text 'Question was successfully created.'
    visit root_path
    sleep 10
  end
end