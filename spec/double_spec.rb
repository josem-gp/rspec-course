# creates a testable (objects that respond to any methods that we define on it).
# we use these doubles to stand in for other real objects we are using in the program

RSpec.describe 'a random double' do
    it 'only allows defined methods to be invoked' do
        stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to eq(true)
    end
end