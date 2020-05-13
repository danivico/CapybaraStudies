# frozen_string_literal: true

describe 'Caixa de opção', :dropdown do
  it 'item especifico simples' do
    visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
    select('Loki', from: 'dropdown')
    # select('opcao do dropdown', from: 'id do dropdown')
    sleep 5 # temporario
  end

  it 'item especifico com o find' do
    visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3 # temporario
  end

  it 'qualquer item', :sample do
    visit 'http://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample.select_option
  end
end
