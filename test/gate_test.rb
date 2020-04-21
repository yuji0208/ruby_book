require 'minitest/autorun'
require './ruby7/gate'
require './ruby7/ticket'

class GateTest < Minitest::Test
  # テストメソッドが実行される前にこのsetupメソッドが毎回呼び出される。
  # そのため毎回定義する必要がなくなる。
  # そこでGateオブジェクトはsetupメソッドで作成し、各Gateオブジェクトをインスタンス変数に格納する。
  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end
  def test_umeda_to_juso #シナリオ１
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    assert @juso.exit(ticket)
    # 「〇〇になること」をテスト成功条件とする、assert系メソッド
  end

  def test_umeda_to_mikuni_when_fare_is_not_enough #シナリオ２
    ticket = Ticket.new(150)
    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
    # 「◯◯にならないこと」をテスト成功条件とする、refute系メソッド <-> assert系メソッド
  end

  def test_umeda_to_mikuni_when_fare_is_enough
    ticket = Ticket.new(190)
    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_juso_to_mikuni
    ticket = Ticket.new(150)
    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end
end
