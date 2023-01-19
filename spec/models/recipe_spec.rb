require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before do
    @recipe = FactoryBot.build(:recipe)
    @recipe.image = fixture_file_upload("/wallpaperbetter.jpg")
  end

  describe 'レシピ投稿の保存' do
    context 'レシピが投稿できる場合' do
      it '画像とタイトルと材料と作り方を投稿できる' do
        expect(@recipe).to be_valid
      end
    end
    context 'レシピが投稿できない場合' do
      it '画像がないと投稿できない' do
        @recipe.image = nil
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Image can't be blank")
      end
      it 'タイトルが空では投稿できない' do
        @recipe.title = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Title can't be blank")
      end  
      it '材料が空では投稿できない' do
        @recipe.material = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Material can't be blank")
      end  
      it '作り方が空では投稿できない' do
        @recipe.make = ''
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include("Make can't be blank")
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do
        @recipe.user = nil
        @recipe.valid?
        expect(@recipe.errors.full_messages).to include('User must exist')
      end
    end
  end
end
