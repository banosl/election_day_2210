require './lib/candidate'
require './lib/race'
require './lib/election'
require 'pry'

RSpec.describe Election do
    it 'election exists' do
        election = Election.new('2022')

        expect(election).to be_instance_of(Election)
    end

    it 'elections have a year' do
        election = Election.new('2022')

        expect(election.year).to eq('2022')
    end

    it 'elections have defaults races to []' do
        election = Election.new('2022')

        expect(election.races).to eq([])
    end

    describe '#add_race' do
        it 'an election can add races' do
            election = Election.new('2022')
            race1 = Race.new("Virginia District 4 Representative")
            race2 = Race.new("Texas Governor")

            election.add_race(race1)
            election.add_race(race2)

            expect(election.races).to eq([race1, race2])
        end
    end

    describe '#candidates' do
        it 'an election can list all candidates in its races' do
            election = Election.new('2022')
            race1 = Race.new("Virginia District 4 Representative")
            race2 = Race.new("Texas Governor")

            election.add_race(race1)
            election.add_race(race2)
        
            candidate1 = race1.register_candidate!({name: "Diana D", party: :democrat})
            candidate2 = race1.register_candidate!({name: "Roberto R", party: :republican})
            candidate3 = race2.register_candidate!({name: "Diego D", party: :democrat})
            candidate4 = race2.register_candidate!({name: "Rita R", party: :republican})
            candidate5 = race2.register_candidate!({name: "Ida I", party: :independent})

            expect(election.candidates).to eq([candidate1, candidate2, candidate3, candidate4, candidate5])
        end
    end

    describe '#vote_counts' do
        it 'an election can relay the number of votes each candidate has' do
            election = Election.new('2022')
            race1 = Race.new("Virginia District 4 Representative")
            race2 = Race.new("Texas Governor")

            election.add_race(race1)
            election.add_race(race2)
        
            candidate1 = race1.register_candidate!({name: "Diana D", party: :democrat})
            candidate2 = race1.register_candidate!({name: "Roberto R", party: :republican})
            candidate3 = race2.register_candidate!({name: "Diego D", party: :democrat})
            candidate4 = race2.register_candidate!({name: "Rita R", party: :republican})
            candidate5 = race2.register_candidate!({name: "Ida I", party: :independent})

            4.times {candidate1.vote_for!}
            1.times {candidate2.vote_for!}
            10.times {candidate3.vote_for!}
            6.times {candidate4.vote_for!}
            6.times {candidate5.vote_for!}

            expect(election.vote_counts).to eq({"Diana D"=>4, "Roberto R"=>1, "Diego D"=>10, "Rita R"=>6, "Ida I"=>6})
        end
    end
end