# creates a testable (objects that respond to any methods that we define on it). Used for unit testing.
# we use these doubles to stand in for other real objects we are using in the program

RSpec.describe 'a random double' do
    it 'only allows defined methods to be invoked' do
        # stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true) #this lets us create a testable object with 2 methods and we just put what do we want those methods to return.
        # expect(stuntman.fall_off_ladder).to eq('Ouch')
        # expect(stuntman.light_on_fire).to eq(true)
        
        # stuntman = double("Mr. Danger") # another way of writting it and giving a method that returns a value. this is more dynamic
        # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
        # expect(stuntman.fall_off_ladder).to eq('Ouch')
        
        stuntman = double("Mr. Danger") #third way of doing it
        allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to eq(true)
    end
end

RSpec.describe 'doubles' do
    it "tests the student's knowledge of the course's content" do
        database = double("Database Connection", connect: true, disconnect: 'Goodbye')
        expect(database.connect).to eq(true)
        expect(database.disconnect).to eq('Goodbye')
    end

    it "tests the student's knowledge of the course's content" do
        fs = double("File System")
        allow(fs).to receive_messages(read: 'Romeo and Juliet', write: false)
        expect(fs.read).to eq('Romeo and Juliet')
        expect(fs.write).to eq(false)
    end
end