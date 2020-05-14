# frozen_string_literal: true

describe 'Select2', :select2 do
  
  describe('single', :single) do
    
    before(:each) do
      visit '/apps/select2/single.html'
    end

    it 'seleciona ator por nome' do
      find('.select2-selection--single').click
      sleep 3 # temporario 
      find('.select2-results__option', text: 'Adam Sandler').click
      sleep 3 # temporario
    end

    it 'busca e clica no ator' do
      find('.select2-selection--single').click
      sleep 3 # temporario
      find('.select2-search__field').set 'Chris Rock'
      sleep 1 # temporario
      find('.select2-results__option').click
    end

  end

  describe('multiple', :mult) do
    
    before(:each) do
      visit '/apps/select2/multi.html'
    end

    def selecione(ator)
      find('.select2-selection--multiple').click
      find('.select2-search__field').set ator
      find('.select2-results__option').click

    end
    it 'seleciona atores' do
      atores = ['Jim Carrey', 'Owen wilson', 'Kevin James']

      atores.each do |a|
        selecione(a)
      end
      # selecione('Jim Carrey')
      # selecione('Owen Wilson')
      sleep 3 # temporario
    end

  end
end
