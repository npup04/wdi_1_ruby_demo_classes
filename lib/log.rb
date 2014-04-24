module Log
  def log(msg)
    %x{ say "#{msg}"}
  end
end
