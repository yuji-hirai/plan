class Room < ApplicationRecord
    mount_uploader :room_image, RoomImageUploader
    validates :title, presence: true
	validates :intro, presence: true
	validates :price,numericality: { only_integer: true,greater_than: 0, less_than: 10000000, message: "1以上の金額を入力してください" }
	validates :address, presence: true
	validates :room_image, presence:{ message: "を選択してください" }
	
end
