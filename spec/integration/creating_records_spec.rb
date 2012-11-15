require 'spec_helper'
feature 'Creating Record File' do
    scenario "can create a record file" do
	visit '/'
	click_link 'New Record'
	fill_in 'Doctor', :with => 'TextMate 2'
	fill_in 'Specialty', :with => 'TextMate 2'
	fill_in 'Reason for the visit', :with => "A text-editor for OS X"
	click_button 'Create Record'
	page.should have_content('Record has been created.')
	
	record = Record.find_by_specialty("TextMate 2")
	page.current_url.should == record_url(record)
	title = "TextMate 2-Records-RecordMaster"
	find("title").should have_content(title)
    end
end
