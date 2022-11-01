require './lib/candidate'
require 'pry'

RSpec.describe Candidate do

    it 'candidate exists' do
        diana = Candidate.new ({name: "Diana D", party: :democrat})
        
        expect(diana.name).to eq("Diana D")
    end


end