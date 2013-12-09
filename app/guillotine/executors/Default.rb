module Executors::Default
  def self.echo *args
    args.each do |a|
      puts a
    end
  end
end