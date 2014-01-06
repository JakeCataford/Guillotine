require "guillotine/engine"

module Guillotine
  def self.execute opts, command_string
    command_array = command_string.downcase.gsub(/[^a-z0-9\s\-\_]/i, '').split ' '
    begin
      excecutor = Object.const_get("Executors").const_get(command_array.shift.capitalize)
      response = excecutor.send(command_array.shift.downcase.to_sym, opts, *command_array)
    rescue Exception => e
      puts "command #{command_string} not found... Actual error message below this line:"
      puts e.message
      return nil
    end
    if response.nil?
      return true
    else
      return response
    end
  end
end