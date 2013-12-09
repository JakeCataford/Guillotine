require "guillotine/engine"

# -*- encoding : utf-8 -*-
module Guillotine
  def self.execute command_string
    command_array = command_string.split ' '
    begin
      excecutor = Object.const_get("Executors").const_get(command_array.shift.capitalize)
      excecutor.send(command_array.shift.downcase.to_sym, *command_array)
    rescue
      #we dont really care if this fails, it just means it was a regular comment.
      puts "command #{command_string} not found... continuing..."
      return false
    end
    return true
  end
end
