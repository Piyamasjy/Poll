require "rails_helper"

describe "poll features", :type => :feature do
  before :each do
    #User.make(:email => 'user@example.com', :password => 'password')
  end

  it "I can create and choice" do
    before = Poll.count

    visit '/poll/index'
    click_button 'Create Poll'

    #within("#session") do
      fill_in 'poll_name', :with => 'My first poll'
      fill_in 'poll_choices_attributes_0_name', :with => 'My Choice1'
      fill_in 'poll_choices_attributes_1_name', :with => 'My Choice2'
      fill_in 'poll_choices_attributes_2_name', :with => 'My Choice3'
      fill_in 'poll_choices_attributes_3_name', :with => 'My Choice4'
      
      click_button 'Create'
      #fill_in 'Password', :with => 'password'
    
    #click_button 'Sign in'
    expect(Poll.count).to eq(before +1)
    poll = Poll.last
    expect(poll.name).to eq('My first poll')
    expect(poll.choices.length).to eq(4)

  end


  it "I can vote" do
    before = Poll.count

    visit '/poll/index'
    click_button 'Create Poll'

    #within("#session") do
      fill_in 'poll_name', :with => 'My first poll'
      fill_in 'poll_choices_attributes_0_name', :with => 'My Choice1'
      fill_in 'poll_choices_attributes_1_name', :with => 'My Choice2'
      fill_in 'poll_choices_attributes_2_name', :with => 'My Choice3'
      fill_in 'poll_choices_attributes_3_name', :with => 'My Choice4'
      click_button 'Create'
      #fill_in 'Password', :with => 'password'
    
    #expect{
     choose("radio_#{Choice.last.id}")
     click_button 'Vote' 
    #}.to_not raise_error
    poll = Poll.last
    expect(poll.selected_choice_id).to eq (Choice.last.id)

    

  
  end
end