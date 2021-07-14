RSpec.describe 'before and after hooks' do
    
    before(:context) do
        puts "Runnig before context"
    end

    after(:context) do
        puts "Runnig after context"
    end   
    
    before(:example) do
        puts "Runnig before example"
    end

    after(:example) do
        puts "Runnig after example"
    end

    it 'is just a random example' do
        expect(5 * 4).to eq(20)
    end

    it 'is another random example' do
        expect(5 - 4).to eq(1)
    end
end