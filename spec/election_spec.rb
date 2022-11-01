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
end