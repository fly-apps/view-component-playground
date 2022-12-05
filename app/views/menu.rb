module Views
  class Menu < Phlex::HTML
    include ApplicationView

    def initialize(title:)
      @title = title
    end

    def template(&)
      nav do
        h3 { @title }
        ul class: "flex flex-col gap-y-10" do
          yield self if block_given?
        end
      end
    end

    def item(text, url)
      li do
        a(href: url) { text }
      end
    end
  end
end
