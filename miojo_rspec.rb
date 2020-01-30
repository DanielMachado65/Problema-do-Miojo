require "./miojo"

RSpec.describe 'Problema do Miojo' do
  
  before do
    @miojo = Miojo.new
  end

  describe "Cozimento de 1 min" do
    let(:cooking_time){ 1 }

    it "O tempo das ampulhetas: [2] min e [3] min, o minino de cozimento deve ser: [3]" do
      expect(@miojo.calculate_minimum_time(cooking_time, 2, 3)).to eq 3  
    end

    it "O tempo das ampulhetas: [3] min e [4] min, o minino de cozimento deve ser: [4]" do
      expect(@miojo.calculate_minimum_time(cooking_time, 3, 4)).to eq 4
    end

    it "Não é possivel a solução, com os seguintes tempos: [2] min e [4] min" do
      expect(@miojo.calculate_minimum_time(cooking_time, 2, 4)).to eq false
    end
  end

  describe "Cozimento de 3 min" do
    let(:cooking_time){ 3 }

    it "O tempo das ampulhetas: [5] min e [7] min, o minino de cozimento deve ser: [10]" do
      expect(@miojo.calculate_minimum_time(cooking_time, 5, 7)).to eq 10  
    end
  end

  describe "Cozimento de 10 min" do
    let(:cooking_time){ 10 }

    it "O tempo das ampulhetas: [110] min e [20] min, o minino de cozimento deve ser: [110]" do
      expect(@miojo.calculate_minimum_time(cooking_time, 110, 20)).to eq 110  
    end
  end

  describe "Cozimento de 30 min" do
    let(:cooking_time){ 30 }

    it "O tempo das ampulhetas: [50] min e [60] min, o minino de cozimento deve ser: [150]" do
      expect(@miojo.calculate_minimum_time(cooking_time, 50, 60)).to eq 150  
    end
  end
end



