require './test/test_helper'

class HomepageTest < CapybaraTestCase

  def test_user_can_see_the_homepage
    visit '/'

    # require 'pry'; binding.pry
    # save_and_open_page
    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_user_gets_an_error_message
    visit '/test'

    assert_equal 404, page.status_code
    assert page.has_content?("Page not found.")
  end

  def test_user_can_see_about_page
    visit '/about'

    assert_equal 200, page.status_code
    assert page.has_content?("Here's some stuff to know.")
  end

end
