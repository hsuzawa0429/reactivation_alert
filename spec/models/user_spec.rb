require 'rails_helper'
RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    it 'facility_codeが空だと登録できない' do
      @user.facility_code = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Facility code can't be blank", "Facility code is not included in the list")
    end

    it 'user_nameが空だと登録できない' do
      @user.user_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("User name can't be blank", "User name is invalid")
    end

    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank", "Password is invalid", "Password confirmation doesn't match Password")
    end

    it 'password_confirmationが空では登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'affiliationが空では登録できない' do
      @user.affiliation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Affiliation can't be blank")
    end

    it 'メールアドレスに@を含まない場合登録できない' do
      @user.email = 'hogehuga.com'
      @user.valid?
      expect(@user.errors.full_messages).to include("Email is invalid")
    end

    it 'パスワードとパスワード（確認用）の値が一致しない場合登録できない' do
      @user.password = 'abc000'
      @user.password_confirmation = 'def111'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'パスワードが６文字以上でないと登録できない' do
      @user.password = 'abc00'
      @user.password_confirmation = 'abc00'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it 'パスワードが英語のみでは登録できない' do
      @user.password = 'abcdef'
      @user.password_confirmation = 'abcdef'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
    end

    it 'パスワードが数字のみでは登録できない' do
      @user.password = '000000'
      @user.password_confirmation = '000000'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
    end

    it 'パスワードが半角でないと登録できない' do
      @user.password = 'aｂc０００'
      @user.password_confirmation = 'aｂc０００'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is invalid")
    end

    it '重複したメールアドレスの場合登録できない' do
      another_user = FactoryBot.build(:user)
      another_user.email = '＠user.email'
      another_user.valid?
      expect(another_user.errors.full_messages).to include("Email is invalid")
    end
  end
end
