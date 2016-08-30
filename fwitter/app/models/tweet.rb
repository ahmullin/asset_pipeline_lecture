class Tweet < ActiveRecord::Base
  # belongs_to :user
  # validates :user, presence: true
  # validates :content, presence: true, length: {maximum: 150, minimum: 5}
  # validate :cant_post_dog

  def dog
    "HOWWWWWLLLLLLL!"
  end

  private

  def cant_post_dog
    if content.downcase.strip == 'dog'
      errors.add(:dog_errors, "Don't post dog!!")
    end
  end

end
