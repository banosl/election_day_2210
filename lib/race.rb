class Race
    attr_reader :office,
                :candidates

    def initialize (office)
        @office = office
        @candidates = []
    end

    def register_candidate!(attributes)
        new_candidate = Candidate.new(attributes)
        @candidates << new_candidate
        new_candidate
    end
end
