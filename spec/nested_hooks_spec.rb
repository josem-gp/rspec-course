RSpec.describe 'nested hooks' do
    before(:context) do
        puts "Before outer context"
    end

    before(:example) do
        puts "Before outer example"
    end

    it 'does basic math' do
        expect(1 + 2).to eq(3)
    end

    context 'with condition A' do
        before(:context) do
            puts "Before inner context"
        end
    
        before(:example) do
            puts "Before inner example"
        end

        it 'does basic math' do
            expect(1 + 1).to eq(2)
        end

        it 'does basic substraction' do
            expect(1 - 2).to eq(-1)
        end
    end
end