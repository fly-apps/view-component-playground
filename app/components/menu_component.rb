# frozen_string_literal: true
class MenuComponent < ViewComponent::Base
  renders_many :items, "ItemComponent"

  def initialize(title:)
    @title = title
  end

  def item(text, url)
    with_items([text: text, url: url])
  end

  class ItemComponent < ViewComponent::Base
    def initialize(text:, url:)
      @text = text
      @url = url
    end
  end
end
