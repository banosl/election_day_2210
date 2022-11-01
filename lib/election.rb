class Election
    attr_reader :year,
                :races

    def initialize (year)
        @year = year
        @races = []
    end

    def add_race(race)
        @races << race
    end

    def candidates
        candidate_array = @races.map do |race|
            race.candidates
        end
        require 'pry';binding.pry
        candidate_array.flatten
    end
end
