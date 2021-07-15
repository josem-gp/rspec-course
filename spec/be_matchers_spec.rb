RSpec.describe 'be matchers' do #in this file we will be testing for truthiness or falsiness (also if a value is nil)
    it 'can test for truthiness' do
        expect(true).to be_truthy
        expect(3.19).to be_truthy
    end

    it 'can test for falsiness' do
        expect(false).to be_falsy
        expect(nil).to be_falsy
    end

    it 'can test for nil' do
        expect(nil).to be_nil

        my_hash = { a: 5}
        expect(my_hash[:b]).to be_nil
    end
end