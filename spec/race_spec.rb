require './lib/race'
require './lib/candidate'
require 'pry'

RSpec.describe Race do

    it 'race exists' do
        race = Race.new("Texas Governor")

        expect(race).to be_instance_of(Race)
    end
    
    it 'race is for the office of Texas governor'do
        race = Race.new("Texas Governor")

        expect(race.office).to eq("Texas Governor")
    end 

    it 'a race has an empty array for candidates as default' do
        race = Race.new("Texas Governor")

        expect(race.candidates).to eq([])
    end

    describe '#register_candidate' do
        it 'a candidate can be added to @candidates in Race instance' do
            race = Race.new("Texas Governor")
            candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

            expect(candidate1).to be_instance_of(Candidate)
            expect(candidate1.class).to eq(Candidate)
        end
    
        it 'registered candidate has a name' do
            race = Race.new("Texas Governor")
            candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

            expect(candidate1.name).to eq("Diana D")
        end

        it 'registered candidate has a party' do
            race = Race.new("Texas Governor")
            candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

            expect(candidate1.party).to eq(:democrat)
        end
    
        it 'a race can register more than one candidate' do
            race = Race.new("Texas Governor")
            candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
            candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
            candidate3 = race.register_candidate!({name: "James P", party: :green_party})

            expect(race.candidates).to eq([candidate1, candidate2, candidate3])
        end
    end



end