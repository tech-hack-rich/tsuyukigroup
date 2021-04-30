require 'rails_helper'

RSpec.describe Information, type: :model do
  describe '求人フォーム送信' do
    before do
      @information = FactoryBot.build(:information)
    end

    context 'フォームが送信できるとき' do
      it '正しくフォームが入力できていれば送信できること' do
        expect(@information).to be_valid
      end
    end

    context 'フォームが送信できないとき' do
      it 'nameが空白だと送信できないこと' do
        @information.name = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("名前を入力してください")
      end
      
      it 'name_spellが空白では送信できない' do
        @information.name_spell = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("フリガナを入力してください")
      end

      it 'name_spellがカタカナでないと送信できない（漢字）' do
        @information.name_spell = 'テスト太郎'
        @information.valid?
        expect(@information.errors.full_messages).to include("フリガナはカタカナで入力してください")
      end
      it 'name_spellがカタカナでないと送信できない（ローマ字）' do
        @information.name_spell = 'tesuto tarou'
        @information.valid?
        expect(@information.errors.full_messages).to include("フリガナはカタカナで入力してください")
      end

      it 'birthdateが空白では送信できない' do
        @information.birthdate = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("生年月日を入力してください")
      end

      it 'emailが空白では送信できない' do
        @information.email = nil
        @information.valid?
        expect(@information.errors.full_messages).to include("メールアドレスを入力してください")
      end

      it 'motivationが空白では送信できない' do
        @information.motivation = nil
        @information.valid?
        expect(@information.errors.full_messages).to include('志望動機を入力してください')
      end
    end
  end
end
