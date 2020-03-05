require "application_system_test_case"

class ButtonsTest < ApplicationSystemTestCase
  test "home#index has the button" do
    visit "/"

    assert_button page, "What is the answer to the ultimate question of life, the universe and everything?"
    assert_select "div#answer-almighty", { count:0, text: "42"}, "This page must not contain the answer"

    click_button "What is the answer to the ultimate question of life, the universe and everything?"
    assert_css "div#answer-almighty", { count:1, text: "42"}, "This page must contain the answer"
  end
end
