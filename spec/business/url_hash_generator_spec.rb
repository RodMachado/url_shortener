require 'rails_helper'

describe UrlHashGenerator do

  subject { described_class.new(url: 'http://valid.com') }

  describe '#generate' do
    it 'generates a 6 digit hash' do

      expect(subject.generate.url_hash.size).to eq(6)
    end

    it 'stores the url' do
      expect(subject.generate.url).to eq('http://valid.com')
    end


  end
end