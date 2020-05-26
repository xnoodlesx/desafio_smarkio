Dado("efetuo uma busca de um produto") do
  visit(CONFIG['url_padrao'])
  User.new.buscar_no_site
end

Dado("verifico se a busca foi feita com sucesso") do
  cont = 0 
  qnt_produtos = all("a[class='sc-fzoLsD gnrNhT item-nome']").length

  while cont < qnt_produtos
    if all("a[class='sc-fzoLsD gnrNhT item-nome']")[cont].text.include?('Mouse') && all("a[class='sc-fzoLsD gnrNhT item-nome']")[cont].text.include?('Logitech')
      cont +=1
    else
      raise "Produto nao seria da logitech, ou nao seria um mouse"
    end
  end
  p "todos os produtos sao relacionados ao mouse e da logitech"
  User.new.tirar_foto('valida mouse', 'sucesso')
end

Dado("que eu selecione um produto na lista") do
  assert_selector("a[class='sc-fzoLsD gnrNhT item-nome']", visible: true, wait:10)
  all("a[class='sc-fzoLsD gnrNhT item-nome']")[0].click
end

Quando("clico em compra-lo") do
  find('img[src="https://static.kabum.com.br/conteudo/temas/001/imagens/icones/comprar_detalhes.png"]').click
end

Então("valido se o produto foi adicionado ao carrinho") do
  page.assert_text(text, 'ESTE PRODUTO FOI ADICIONADO AO CARRINHO')
  page.has_text?('ESTE PRODUTO FOI ADICIONADO AO CARRINHO')
  have_text('ESTE PRODUTO FOI ADICIONADO AO CARRINHO')
  User.new.tirar_foto('valida produto no carrinho', 'sucesso')
end