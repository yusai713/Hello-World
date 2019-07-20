class IntroController < ApplicationController #クラス名は大文字から始める。
  def index
    @message = 'Hello World！'
  end
end
