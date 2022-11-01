require './lib/candidate'
require 'pry'

RSpec.describe Candidate do

    it 'candidate exists and has a name' do
        diana = Candidate.new ({name: "Diana D", party: :democrat})
        
        expect(diana.name).to eq("Diana D")
    end

    it 'candidate has a party' do
        diana = Candidate.new ({name: "Diana D", party: :democrat})

        expect(diana.party).to eq(:democrat)
    end

end