# 課題2-5 Dog,Catクラスの追加と実装

class Animal
  attr_reader :name, :voice

  def initialize(name)
    @name = name
    @voice = '...'
  end

  def cry
    "#{self.name}: #{voice}!"
  end
end

#2-5 Dogクラスの定義（Animalクラスの継承）
class Dog < Animal
  def initialize(name)
    # 親クラスのnameの定義を継承する
    super name
    # cryメソッドのvioceの呼び出す値を変更する
    @voice = "ワンワン"
  end
end

#2-5 Catクラスの定義（Animalクラスの継承）
class Cat < Animal
  def initialize(name)
    # 親クラスのnameの定義を継承する
    super name
    # cryメソッドのvioceの呼び出す値を変更する
    @voice = "ニャー"
  end
end