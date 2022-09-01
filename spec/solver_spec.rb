

describe "Write unit tests for the solver" do
    before(:each) do
        @solver = Solver.new
    end

    context "factorial" do
        it "should return 1 for 0!" do
            result = @solver.factorial(0)
            expect(result).to eq(1)
        end

        it "should return 120 for N equal 5" do
            result = @solver.factorial(5)
            expect(result).to eq(120)
        end

        it "should return 3628800 for N equal 10" do
            result = @solver.factorial(10)
            expect(result).to eq(3628800)
        end

        it "should retur an exception for N less than 0" do
            expect { @solver.factorial(-1) }.to match('N should be positive')
        end
    end

    context "reverse" do
        it "should return an empty string for an empty string" do
            result = @solver.reverse("")
            expect(result).to eq("")
        end

        it "should return a reversed string" do
            result = @solver.reverse("Hello")
            expect(result).to eq("olleH")
        end

        it "should return a reversed string" do
            result = @solver.reverse("Hello World")
            expect(result).to eq("dlroW olleH")
        end
    end

    context "FuzzBuzz" do
        it "should return fizz for 3" do
            result = @solver.fizzbuzz(3)
            expect(result).to eq("fizz")
        end

        it "should return buzz for 5" do
            result = @solver.fizzbuzz(5)
            expect(result).to eq("buzz")
        end

        it "should return fizzbuzz for 15" do
            result = @solver.fizzbuzz(15)
            expect(result).to eq("fizzbuzz")
        end

        it "should return string if N is not divisible by 3 or 5" do
            result = @solver.fizzbuzz(7)
            expect(result).to eq("7")
        end
    end

end

