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
        candidate_array.flatten
    end

    def vote_counts
        result = @races.map do |race|
            race.candidates.map do |candidate|
                {candidate.name => candidate.votes}
            end
        end
        result.flatten
        require 'pry';binding.pry
    end
end
