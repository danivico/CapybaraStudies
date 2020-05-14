describe 'IDs Dinâmicos', :ids_dinamicos do

  before(:each) do
    visit '/access'      
  end

  it 'cadastro' do
    find('input[id$=UsernameInput]').set 'boris'
    find('input[id^=PasswordInput]').set '123456'
    find('a[id*=GetStartedButton]').click

    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    sleep 2
  end
end
