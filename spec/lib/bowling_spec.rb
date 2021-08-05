require "Bowling"
describe "ボウリングのスコア計算" do
    # インスタンスの生成を共通化
    before do
        @game = Bowling.new
    end
    describe"全体の合計" do
        context "すべての投球がガターだった場合" do
            it "0になること" do
                add_many_scores(20,0)
                expect(@game.total_score).to eq 0
            end
        end
#                @game = Bowling.new
#                20.times do
#                   @game.add_score(0)
#              end
#                expect(@game.total_score).to eq 0
#           end
#       end
    context"すべての投球で1ビンずつ倒した場合" do
        it "20になること" do
            add_many_scores(20,1)
            expect(@game.total_score).to eq 20
        end
    end
end
end
private
# 複数回のスコア追加をまとめて実行する
def add_many_scores(count,pins)
    cont.times do
        @game.add_score(pins)
    end
end
#            @game = Bowling.new
#            20.times do
#                @game.add_score(1)
#            end
#            expect(@game.total_score).to eq 20
#        end
#    end
#end
#end