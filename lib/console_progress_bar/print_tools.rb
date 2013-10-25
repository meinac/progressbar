module ConsoleProgressBar

	module PrintTools

		private
			def shift_back(length)
				length.times do	
					print "\b"
				end
			end

			def finished
				shift_back(@output_length + @prev_extra_length)
				@end ||= (Time.now - @start).round(2)
				@output = "100% Finished in #{@end} seconds"
				((@output_length + @prev_extra_length) - @output.length).times do
					@output += " "
				end
				@output_length = @output.length
				print @output + "\n"
			end
			
	end

end