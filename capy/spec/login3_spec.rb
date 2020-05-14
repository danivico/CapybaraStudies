# frozen_string_literal: true
describe 'Login com Cadastro', :login3 do
  before(:each) do
    visit '/access'
  end

  it 'login com sucesso' do

    # login_form = find('#login')

    # login_form.find('input[name=username]').set 'stark'
    # login_form.find('input[name=password]').set 'jarvis!'

    within('#login')do
      find('input[name=username]').set 'stark'
      find('input[name=password]').set 'jarvis!'
      click_button 'Entrar'
    end

    expect(find('#flash').visible?).to be true
  end

  it 'cadastro com sucesso' do
    within('#signup') do
      find('input[name=username]').set 'boris'
      find('input[name=password]').set '123456'
      click_link 'Criar Conta'
    end
    expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
  end
end
