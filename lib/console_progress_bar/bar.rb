module ConsoleProgressBar

	class Bar

		def initialize(total_count = 100, with_elapsed_time = false, with_remaining_time = false, increment_size = 1, width = 20)
			@total = total_count
			@current = 0
			@recent = -1
			@width = width
			@increment_size = increment_size
			@output = "|"
			@width.times do
				@output += " "
			end
			@output += "|"
			@with_elapsed_time = with_elapsed_time
			@with_remaining_time = with_remaining_time
			@start = Time.now
			@prev_time = Time.now
			@avarage_inceament_time = 0
			@prev_extra_length = 0
			@output_length = 0
		end

		def draw
			@current += @increment_size
			if @current >= @total
				finished
			else
				@now = (@current * 1.0 / @total * @width).to_i
				if @recent != @now
					@recent = @now
					shift_back(@output_length + @prev_extra_length)
					@prev_extra_length = 0
					@output = "|"
					@now.times do
						@output += "#"
					end
					(@width - @now).times do
						@output += " "
					end
					@output += "|"
					print @output
					@output_length = @output.length
				end
				prepare_extras
			end
		end

		include PrintTools
		include Extras

	end

end