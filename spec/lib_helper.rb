require 'byebug'

def require_in_tree(dir)
  Dir.each_child(dir) do |file_or_dir|
    name, rest = file_or_dir.split('.')

    next if rest == 'keep'

    if rest == 'rb'
      puts "including -> #{Dir.pwd}/#{file_or_dir}"
    end
    if rest.nil?
      require_in_tree("#{Dir.pwd}/#{file_or_dir}")
    end
  end
end

require_in_tree('lib/')
