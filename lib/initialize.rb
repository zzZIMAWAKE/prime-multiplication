require 'optparse'

Options = Struct.new(:count)

class Parser
  def self.parse(options)
    args = Options.new(10)

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: initialize.rb --count <number of primes>"

      opts.on("--count C", Integer, "Number of primes C") do |c|
        args.count = c
      end

      opts.on("-h", "--help", "Prints this help") do
        puts opts
        exit
      end
    end

    opt_parser.parse!(options)
    return args
  end
end

options = Parser.parse(ARGV)

options.count