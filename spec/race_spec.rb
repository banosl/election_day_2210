require './lib/race'
require './lib/candidate'
require 'pry'

RSpec.describe Race do

    it 'race exists' do
        race = Race.new("Texas Governor")

        expect(race).to be_instance_of(Race)
    end
    



end