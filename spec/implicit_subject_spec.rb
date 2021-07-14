RSpec.describe Hash do

    it 'should start off empty' do
        puts subject
        puts subject.class
        expect(subject.length).to eq(0)
        subject[:some_key] = 'Some value'
        expect(subject.length).to eq(1)
    end

    it 'is isolated from each example' do
        expect(subject.length).to eq(0)
    end
end

RSpec.describe Array do

    it 'should start off empty' do
        puts subject
        expect(subject.length).to eq(0)
        subject.push(1)
        expect(subject.length).to eq(1)
    end
end