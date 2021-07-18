# this is going to be a sample test - not rspec theory 

class Actor
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3)
        true
    end

    def act
        "I love you, baby"
    end

    def fall_off_ladder
        "Call my agent! No way!"
    end

    def light_on_fire
        false
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            actor.act
            actor.fall_off_ladder
            actor.light_on_fire
        end
    end
end

# These 2 methods are connected. And the movie class depends on the actor class.
# But our goal in testing is to do some unit testing first, to know each object works at an individual level first and foremost.
# We will do it in this case with the Movie class that depends on the Actor class

RSpec.describe Movie do
    let(:stuntman) { double("Mr. Danger", ready?: true, act: 'Any string at all', fall_off_ladder: 'Sure, lets do it!', light_on_fire: true) }
    subject { described_class.new(stuntman) }

    describe '#start_shooting method' do
        it 'expects an actor to do 3 actions' do
            expect(stuntman).to receive(:ready?)
            expect(stuntman).to receive(:act)
            expect(stuntman).to receive(:fall_off_ladder)
            expect(stuntman).to receive(:light_on_fire)
            subject.start_shooting #we write the expectations first, and then we call the method on the subject. then it will run the method and check all those expectations we wrote before.
        end
    end
end
