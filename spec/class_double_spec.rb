# it mocks the actual class itself, not the instance of a card like the instance_double or double does
# a class_double can only implement class methods that are defined on a class

# when two classes are interconnected we can use class_double or instance_double (depending on the type of connection - if it is through a class method or an instance method) to test that connection

class Deck 
    def self.build
        #Logic inside which we dont really care about when testing
    end
end

class CardGame
    attr_reader :cards

    def start
        @cards = Deck.build
    end
end

RSpec.describe CardGame do
    it 'can only implement class methods that are defined on a class' do
        deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const # we need to use .as_stubbed_const to maintain "deck klass" in the example

        expect(deck_klass).to receive(:build)
        subject.start
        expect(subject.cards).to eq(['Ace', 'Queen'])
    end
end