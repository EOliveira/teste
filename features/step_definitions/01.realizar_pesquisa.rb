Dado('que eu acesse o site do E-commerce') do
    visit 'http://automationpractice.com/'
end
  
Quando "preencho o campo de busca com o produto {string}" do |string|
    fill_in 'search_query_top', :with => "Printed Chiffon Dress"

end

Quando "preencho o campo de busca com o produto inexistente {string}" do |string|
    fill_in 'search_query_top', :with => "xxxxxxxx"
end

E "clico no botão Buscar" do
    click_button('Search')
end

Então "visualizo o resultado da busca" do
    expect(page).to have_content "Printed Chiffon Dress"
end