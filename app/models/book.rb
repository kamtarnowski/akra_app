class Book < ActiveRecord::Base
  has_attached_file :cover, styles: {
      thumb:  '50x50>',
      square: '200x200#',
      medium: '600x600>'
  }
  validates_attachment_content_type :cover, :content_type => /\Aimage\/.*\Z/
  validates :cover, :attachment_presence => true
  validates :title, presence: true
  validates :author, presence: true
  validates :state,
            :inclusion  => { :in => [ 'brak', 'przeczytana', 'do przeczytania', 'nie interesuje mnie' ] }
  default_scope -> { order('created_at DESC') }
end
