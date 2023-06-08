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

    describe 'セル生成の異常系' do
      it '生死を指定していない場合エラーになること' do
        expect { Cell.new }.to raise_error ArgumentError
      end

      it '文字列ではエラーになること' do
        expect { Cell.new('alive') }.to raise_error ArgumentError
      end

      it '数字ではエラーになること' do
        expect { Cell.new(1) }.to raise_error ArgumentError
      end

      it ':alive, :death以外のシンボルでエラーになること' do
        expect { Cell.new(:life_game) }.to raise_error ArgumentError
      end

      it ':alive, :deathを同時に与えられたときエラーになること' do
        expect { Cell.new(:alive, :death) }.to raise_error ArgumentError
      end
    end
  end
end
