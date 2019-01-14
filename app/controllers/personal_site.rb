require 'rack'

class PersonalSite

  def self.call(env)
    # require 'pry'; binding.pry
    ['200', {'Content-Type' => 'text/html'}, [File.read('./app/views/index.html')]]
  end

end
