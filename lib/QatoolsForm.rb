require 'selenium-webdriver'

class QatoolsForm

  PRACTICE_FORM_URL =  'https://www.toolsqa.com/automation-practice-form'

  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  SEX_FIELD_NAME = 'sex'
  YEARS_EXPERIENCE_FIELD_NAME = 'exp'
  PROFESSION_FIELD_NAME = 'profession'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name,FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_firstname_field_value
    @chrome_driver.find_element(:name,FIRST_NAME_FIELD_NAME)['value']
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_lastname_field_value
    @chrome_driver.find_element(:name,LAST_NAME_FIELD_NAME)['value']
  end

  def input_years_of_experience_field(number)
    @chrome_driver.find_elements(:name, YEARS_EXPERIENCE_FIELD_NAME)[number].click
  end

  def input_sex_field(number)
    @chrome_driver.find_elements(:name, SEX_FIELD_NAME)[number].click
  end

  def input_profession_field(number)
    @chrome_driver.find_elements(:name, PROFESSION_FIELD_NAME)[number].click
  end

  def current_url
    @chrome_driver.current_url
  end


end

