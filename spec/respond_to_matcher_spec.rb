#verify that an object can respond to a given method

class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        'PLOP!'
    end

    def purchase(number)
        "Awesome, I just purchased #{number} more hot chocolate beverages!"
    end
end

class Coffee
    def drink; end
    def discard; end
    def purchase(number); end
end