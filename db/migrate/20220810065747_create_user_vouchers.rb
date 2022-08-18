class CreateUserVouchers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_vouchers do |t|
      t.references :user
      t.references :voucher
      t.boolean :redeemed
      t.datetime :redeem_at

      t.timestamps
    end
  end
end
