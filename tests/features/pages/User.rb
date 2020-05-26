class User < SitePrism::Page
    element :buscatexto, 'input[class="sprocura"]'
    element :buscar, 'input[id="bt-busca"]'

    def buscar_no_site
        buscatexto.set 'Mouse Logitech'
        buscar.click
    end

    def tirar_foto(nome_arquivo, resultado)
        caminho_arquivo = "C:/Users/User/Documents/SMARKIOTESTE/tests/report/screenshots/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        save_screenshot("#{foto}")
    end
end