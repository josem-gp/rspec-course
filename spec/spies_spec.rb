# they are testing doubles but a normal double places the expectation BEFORE the action while a spy does it AFTER the action
# we can use spies or doubles. it is up to us


RSpec.describe 'spies' do
    let(:animal) { spy('animal') } #we dont need to explicitly define the methods that the spy will have

    it 'confirms that a message has been received' do
        animal.eat_food
        expect(animal).to have_received(:eat_food) #we pass the action before the expectation so when running the expectation is has to be "have_received" instead of "receive"
        expect(animal).not_to have_received(:eat_human)
    end

    it 'resets between examples' do
        expect(animal).not_to have_received(:eat_food)
    end

    it 'retains the same functionality of a regular double' do
        animal.eat_food
        animal.eat_food
        animal.eat_food('Sushi')

        expect(animal).to have_received(:eat_food).exactly(3).times
        expect(animal).to have_received(:eat_food).at_least(2).times
        expect(animal).to have_received(:eat_food).with('Sushi')
        expect(animal).to have_received(:eat_food).once.with('Sushi')
    end
end