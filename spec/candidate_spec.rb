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

    it 'candidate has 0 votes as default' do
        diana = Candidate.new ({name: "Diana D", party: :democrat})

        expect(diana.votes).to eq(0)
    end

    describe '#vote_for!' do
        it 'candidate can receive votes' do
            diana = Candidate.new ({name: "Diana D", party: :democrat})

            diana.vote_for!
            diana.vote_for!
            diana.vote_for!

            expect(diana.votes).to eq(3)

            diana.vote_for!

            expect(diana.votes).to eq(4)
        end
    end

end