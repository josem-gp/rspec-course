#check that our program has an exception working correctly to handle an error

RSpec.describe 'raise_error matcher' do

    def some_method
        x
    end

    class CustomError < StandardError; end #to customize the errors message

    it 'can check for any error' do
        expect { some_method }.to raise_error #since this one is too general, RSpec will warn us saying it is too broad and we risk catching errors we didnt mean to
    end

    it 'can check for a specific error' do
        expect { some_method }.to raise_error(NameError)
    end

    it 'can check another specific error' do
        expect { 10/0 }.to raise_error(ZeroDivisionError) 
    end

    it 'can check that a user-created error works properly' do
        expect { raise CustomError }.to raise_error(CustomError)
    end
end