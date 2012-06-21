When /^my credentials are invalid$/ do
	@alert_btn = frankly_map("view:'UIButtonLabel' marked:'Login'", "text")
	@alert_btn.should == ["Login"]
end

When /^I choose to correct my credentials$/ do
	touch("alertView button marked:'Login'")
  wait_for_nothing_to_be_animating
end

When /^I navigate backwards$/ do
	touch( "view:'UINavigationItemButtonView'" )
end
