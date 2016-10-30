require 'string_calculator'
describe StringCalculator do

  describe ".add" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eql(0)
      end
    end

    context "ginven '10'" do
      it "returns 10" do
        expect(StringCalculator.add("10")).to eql(10)
      end
    end

    context "two numbers" do
      context "given '2,100'" do
        it "returns 102" do
          expect(StringCalculator.add("2,100")).to eql(102)
        end
      end
    end
  end
end