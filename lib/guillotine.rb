require "guillotine/engine"

module Guillotine
  def self.execute opts, command_string
    command_array = command_string.downcase.gsub(/[^a-z\s]/, '').split ' '
    begin
      excecutor = Object.const_get("Executors").const_get(command_array.shift.capitalize)
      excecutor.send(command_array.shift.downcase.to_sym, opts, *command_array)
    rescue Exception => e
      if Rails.env.production?
        #we dont really care if this fails, it just means it was a regular comment.
        puts "command #{command_string} not found... continuing..."
      else
        #On non-production builds, we raise the exception so its easier to see what is going on.
        raise e
      end
      return false
    end
    return true
  end
end