# a verifying double checks that the methods that we put in our double matches the methods that the real object has
# it is preferred over the normal double

class Person
    def a(num) 
        sleep(num)
        "Hello"
    end
end

RSpec.describe Person do
    describe 'regular double' do
        it 'can implemente any method' do
            person = double(a: "Hello", b: 20) #this is the normal double
            expect(person.a).to eq("Hello")
        end
    end

    describe 'instance double' do
        it 'can only implement methods that are defined on the class' do
            # person = instance_double(Person, a: 'Hello', b: 20)
            # person = instance_double(Person, a: 'Hello')
        
        person = instance_double(Person) #we pass the class from which we will create the instance double
        allow(person).to receive(:a).with(3).and_return("hey")
        expect(person.a(3)).to eq("hey")
        
        end
    end
end