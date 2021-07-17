#lets you join more than one expectations in a single line

RSpec.describe 25 do
    it 'can test for multiple matchers' do
        expect(subject).to be_odd and be > 20
    end

    it { is_expected.to be_odd and be > 20 }
end

