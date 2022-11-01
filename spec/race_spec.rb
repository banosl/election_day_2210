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



end