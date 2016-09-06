#!/usr/bin/env ruby
# ruby -r './copy.rb' -e "come"
require 'fileutils'
require './hs.rb'

def come
 	do_copy( true )
end

def go
   return unless confirm
   do_copy( false )
end


private

def confirm
	printf "\033[31mWARNING -  press 'yes' to confirm to cover: "
	prompt = STDIN.gets.chomp
	return prompt == 'yes'
end

def do_copy(flag)
	Hs.each do |dir, kv|
		p_path = dir.to_s
		FileUtils.mkdir_p(p_path)		
		kv.each do |filepath, flag|		  
		  next if flag != 1
		  filename = File.basename(filepath)
		  raw  = filepath
		  dest = p_path + '/' + filename
		  from, to = if flag
		  	  [raw, dest]
		   else
		   	  [dest, raw]
		   end

		  return unless File.exists?(from)
      	  puts "#{from}       =>      #{to}"
		  FileUtils.copy_entry(from, to)
		end
	end
end
