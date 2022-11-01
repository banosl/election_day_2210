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

end