class Kitten < ApplicationRecord
  validates :name, presence: { message: 'was blank! Meow! I need a name.' }
  validates :name, exclusion: { in: %w[Luna Charlie Bella Oscar Coco Max Leo Molly Simba Lily Kitty Mia Lucy Milo George Cleo Tiger Jasper Daisy Missy],
                                message: "... failure! That's one of the top 20 cat names in Australia! Too boring! Try again!" }
  validates :name,
            length: { maximum: 40,
                      too_long: '... failure! No kitten can have a name of more than 40 letters, silly!',
                      minimum: 6,
                      too_short: "... failure! If you have less than 6 characters in my name, you don't care enough about me. Try adding 'the Great' after that tiny name. Silly user!" }
  validates :name, uniqueness: { message: '... failure! All cat names must be unique! You boring user!' }
  validates :name,
            format: { without: /(the Great)/,
                      message: '... failure! Too obedient! Silly user. No name can include the phrase "the Great"' }
  validates :age, presence: { message: 'was blank! Meow! Silly user!' }
  validates :cuteness, presence: { message: "was blank! Meow! I'll show you cute!" }
  validates :softness, presence: { message: 'was blank! Meow! I demand a softness rating!' }
end
