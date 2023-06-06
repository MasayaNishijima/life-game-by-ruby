# life-gameにおいて1つの生物を表わすクラス
class Cell
  def initialize(life)
    @life = life
  end

  def alive?
    @life == :alive
  end
end
