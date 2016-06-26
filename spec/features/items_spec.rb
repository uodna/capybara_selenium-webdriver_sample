require 'rails_helper'

feature 'Item management' do
  scenario 'show all items' do
    items = create_list(:item, 3)
    visit items_path
    expect(page).to have_css('h1', text: 'Listing Items')
    items.each do |item|
      expect(page).to have_content(item.name)
    end
  end
end
