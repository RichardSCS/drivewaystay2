module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /home page$/ then '/home'
    end
  end
end
