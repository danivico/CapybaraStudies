describe 'Botões de Radio', :radio do
  before(:each) do
    visit '/radios' 
  end

  it 'seleção por ID' do
    choose('cap')
    # quando tem um ID
  end

  it 'seleção por find e css selector' do
    find('input[value=guardians]').click
  end

  after(:each) do
    sleep 3
  end
end
