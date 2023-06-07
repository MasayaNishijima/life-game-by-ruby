require 'cell'

RSpec.describe Cell do
  describe 'セルの生死について' do
    context 'セル死んでいるとき' do
      let(:cell) { Cell.new(:death) }

      it 'alive?がfalseになること' do
        expect(cell.alive?).to be false
      end
    end

    context 'セルが生きているとき' do
      let(:cell) { Cell.new(:alive) }

      it 'alive?がtrueになること' do
        expect(cell.alive?).to be true
      end
    end

    describe '異常系のテスト' do
      it '生死を指定していないセルが生成できないこと' do
        expect { Cell.new }.to raise_error ArgumentError
      end
    end
  end
end
