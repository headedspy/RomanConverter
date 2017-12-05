require_relative '../lib/rome_converter.rb'

describe RomeConverter do
	describe "Int -> Roman" do
		context "Given the num 1" do
			it "returns I" do
				expect(RomeConverter.new.to_rome(1)).to eql "I"
			end
		end
		context "Given the num 4" do
			it "returns IV" do
				expect(RomeConverter.new.to_rome(4)).to eql "IV"
			end
		end
		context "Given the num 9" do
			it "returns IX" do
				expect(RomeConverter.new.to_rome(9)).to eql "IX"
			end
		end
		context "Given the num 11" do
			it "returns XI" do
				expect(RomeConverter.new.to_rome(11)).to eql "XI"
			end
		end

		context "Given the num 14" do
			it "returns XIV" do
				expect(RomeConverter.new.to_rome(14)).to eql "XIV"
			end
		end

		context "Given the num 16" do
			it "returns XVI" do
				expect(RomeConverter.new.to_rome(16)).to eql "XVI"
			end
		end

		context "Given the num 40" do
			it "returns XL" do
				expect(RomeConverter.new.to_rome(40)).to eql "XL"
			end
		end

		context "Given the num 80" do
			it "returns LXXX" do
				expect(RomeConverter.new.to_rome(80)).to eql "LXXX"
			end
		end

		context "Given the num 99" do
			it "returns XCIX" do
				expect(RomeConverter.new.to_rome(99)).to eql "XCIX"
			end
		end
		
		context "Given the num 600" do
			it "returns DC" do
				expect(RomeConverter.new.to_rome(600)).to eql "DC"
			end
		end

		context "Given the num 2003" do
			it "returns MMIII" do
				expect(RomeConverter.new.to_rome(2003)).to eql "MMIII"
			end
		end
	end	
	describe "Roman -> Int" do
		context "Given the rom I" do
			it "returns 1" do
				expect(RomeConverter.new.to_dec("I")).to eql 1
			end
		end
		context "Given the rom IV" do
			it "returns 4" do
				expect(RomeConverter.new.to_dec("IV")).to eql 4
			end
		end
		context "Given the rom IX" do
			it "returns 9" do
				expect(RomeConverter.new.to_dec("IX")).to eql 9
			end
		end
		context "Given the rom XI" do
			it "returns 11" do
				expect(RomeConverter.new.to_dec("XI")).to eql 11
			end
		end

		context "Given the rom XIV" do
			it "returns 14" do
				expect(RomeConverter.new.to_dec("XIV")).to eql 14
			end
		end

		context "Given the rom XVI" do
			it "returns 16" do
				expect(RomeConverter.new.to_dec("XVI")).to eql 16
			end
		end

		context "Given the rom XL" do
			it "returns 40" do
				expect(RomeConverter.new.to_dec("XL")).to eql 40
			end
		end

		context "Given the rom LXXX" do
			it "returns 80" do
				expect(RomeConverter.new.to_dec("LXXX")).to eql 80
			end
		end

		context "Given the rom XCIX" do
			it "returns 99" do
				expect(RomeConverter.new.to_dec("XCIX")).to eql 99
			end
		end

		context "Given the rom DC" do
			it "returns 600" do
				expect(RomeConverter.new.to_dec("DC")).to eql 600
			end
		end

		context "Given the rom MMIII" do
			it "returns 2003" do
				expect(RomeConverter.new.to_dec("MMIII")).to eql 2003
			end
		end
	end

	describe "Unusual chars" do
		context "Given empty" do
			it "returns nil" do
				expect(RomeConverter.new.to_rome()).to eql nil
				expect(RomeConverter.new.to_dec()).to eql nil
			end
		end
		context "Given zero" do
			it "returns nil" do
				expect(RomeConverter.new.to_rome(0)).to eql nil
				expect(RomeConverter.new.to_dec(0)).to eql nil
			end
		end

		context "Given negative" do
			it "returns nil" do
				expect(RomeConverter.new.to_rome(-4)).to eql nil
			end
		end

		context "Given random chars" do
			it "returns nil" do
				expect(RomeConverter.new.to_dec("asdf")).to eql nil
				expect(RomeConverter.new.to_rome("xivcm")).to eql nil
			end
		end

		context "Given fractions" do
			it "returns nil" do
				expect(RomeConverter.new.to_rome(2.5)).to eql nil
			end
		end
	end
end
