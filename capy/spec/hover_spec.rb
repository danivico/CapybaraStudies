# frozen_string_literal: true

describe 'Mouse Hover', :hovers do
  before(:each) do
    visit 'http://training-wheels-protocol.herokuapp.com/hovers'
  end

  it 'quando passo o mouse sobre o blade' do
    card = find('img[alt=Blade]')
    card.hover

    expect(page).to have_content 'Nome: Blade'
  end

  it 'quando passo o mouse sobre o pantera negra' do
    # colocar dentro de "String" por conter espaço ou caracter especial
    #card = find('img[alt="Pantera Negra"]')
    # utilizando [alt^=Pantera] busca um elemento que começa com Pantera
    card = find('img[alt^=Pantera]')
    card.hover

    expect(page).to have_content 'Nome: Pantera Negra'
  end

  it 'quando passo o mouse sobre o Homem Aranha' do
    # colocar dentro de "String" por conter espaço ou caracter especial
    # card = find('img[alt="Homem Aranha"]')
    # utiliznado [alt$=Aranha] busca um elemento que termina com Aranha
    card = find('img[alt$=Aranha]')
    card.hover

    expect(page).to have_content 'Nome: Homem Aranha'
  end

  after(:each) do
    sleep 1 # temporario para verificacao
  end
end
