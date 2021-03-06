require 'spec_helper'

describe 'testing the demo qatesting auto form' do

  before(:all) do
    @driver = QatoolsForm.new
    @driver.visit_practice_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @name = Generator.new.random_form.name
    @lastname = Generator.new.random_form.last_name

    
  end
  context 'testing the positive paths for the form' do

    it 'should land on regi demo form page' do
      expect(@driver.current_url).to eq @url
    end

    it 'should accept a first name ' do
      @driver.input_firstname_field(@name)
      expect(@driver.input_firstname_field_value).to eq @name
    end

    it 'should accept a last name ' do
      @driver.input_lastname_field(@lastname)
      expect(@driver.input_firstname_field_value).to eq @name
    end

    it 'should be able to accept experience field' do 
      @driver.input_years_of_experience_field(7)
      expect(@driver.input_firstname_field_value).to eq 7
    end
    

  end
end