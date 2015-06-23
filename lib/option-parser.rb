require 'optparse'

Options = Struct.new(:count, :brute)

class Parser
  def self.parse(options)
    args = Options.new(10, false)

    opt_parser = OptionParser.new do |opts|
      opts.banner = "Usage: initialize.rb --count <number of primes>."\
                    " Any number above 15 will break the formatting"\
                    " in the console"

      opts.on("--count C", Integer, "Number of primes C") do |c|
        args.count = c.abs
      end

      opts.on("--brute-force", false , "Use brute force method") do
        args.brute = true
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