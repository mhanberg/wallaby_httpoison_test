defmodule WallabyHttpoisonTest.Overwhelm_Chromedriver169Test do
 use WallabyHttpoisonTest.FeatureCase, async: true

 @tests [1]

 for n <- @tests do
   test "test ##{n}", %{session: session} do
     session
     |> visit("/")
     |> find(Query.css(".phx-hero > p"), fn el ->
       assert Element.text(el)  =~ "productive web framework"
     end)
     |> find(Query.link("Source"), fn el ->
       assert Element.attr(el, "href") == "https://github.com/phoenixframework/phoenix"
     end)
     |> fill_in(Query.text_field("Name"), with: "Mitch")
     |> click(Query.option("California"))
     |> fill_in(Query.text_field("Description"), with: "This is a bunch of text that goes in the textarea")
     |> click(Query.button("Submit"))
     |> assert_has(Query.text("DONE"))
   end
 end
end
