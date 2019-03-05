# 課題2-1 speed_upメソッドの修正
# 課題2-2 TrackCarクラスの実装

class Car
  # 定数を追加
  UP_SPEED = 10
  DOWN_SPEED = 20

  @@count = 0
  attr_accessor :number, :color
  # speedは外部から設定しないのでreaderで定義
  # @speedが使えるようになる
  attr_reader :speed

  def initialize(number, color)
    @number = number
    @color = color
    # @speedを初期化
    @speed = 0
    @@count += 1
  end

  # 加速用のメソッド追加
  def speed_up
    @speed += UP_SPEED
    #2-1  Carクラスのspeedが50以上になった場合、以下の減速アラートを出し、speed_downメソッドを使用して減速します。
    #2-1   [ALERT]スピードが50になりました。減速します。
    if @speed >= 50
      puts "[ALERT]スピードが#{@speed}になりました。減速します。"
      self.speed_down

    #2-1  Carクラスのspeedが30以上になった場合、以下のアラートを出します。
    #2-1   [ALERT]スピードが30になりました。
    elsif @speed >= 30
      puts "[ALERT]スピードが#{@speed}になりました。"
    end
  end

  # 減速用のメソッド追加
  def speed_down
    # ifの結果を変数に代入する場合は以下の記述でOK
    @speed = if @speed - DOWN_SPEED < 0
               0
             else
               @speed - DOWN_SPEED
             end
  end

  def self.count
    @@count  # return @@countの略
  end
end

class TrackCar < Car
#2-2 TrackCarクラスにload_weightというアクセサメソッド(ゲッター)を追加して下さい。
  attr_reader :load_weight
#2-2 initializeメソッドを実装して下さい。引数はnumber、color、load_weightです。
#2-2 TrackCarのインスタンスを生成する際、
#2-2 load_weightを指定しない場合、 デフォルトで500になるようにデフォルト引数を設定して下さい。
  def initialize(number, color, load_weight=500)
    @load_weight = load_weight
  end
end