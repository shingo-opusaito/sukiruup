# frozen_string_literal: true

class Brave
    #ゲッター
attr_reader:name,:offense,:defense
 #hpは数値が極ため、セッターもゲッターも設定する。initializeで設定しているのでセッターがないため、数値が変更できない。なのでセッターを入れる。
 attr_accessor:hp

def initialize(**params) #ここの引数名はわかりやすいやつでいい。
    @name = params[:name]
    @hp =params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
end
end

  brave = Brave.new(name:"テリー",hp:500 , offense:150 ,defense:100)
  brave2 = Brave.new(name:"魔道士",hp: 200 ,offnse: 200 ,defense:200) #表示されていない


puts <<~TEXT
NAME:#{brave.name}
HP:#{brave.hp}
OFFENSE:#{brave.offense}
DEFENSE:#{brave.defense}
TEXT

brave.hp -= 30

puts "#{brave.name}はダメージを受けた！残りHPは#{brave.hp}だ"
