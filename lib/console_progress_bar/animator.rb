module ConsoleProgressBar

	class Animator

		def initialize(total_count = 100, with_elapsed_time = false, with_remaining_time = false, increment_size = 1)
			@total = total_count
			@current = 0
			@recent = -1
			@increment_size = increment_size
			@output = "-|-"
			@with_elapsed_time = with_elapsed_time
			@with_remaining_time = with_remaining_time
			@start = Time.now
			@prev_time = Time.now
			@avarage_inceament_time = 0
			@prev_extra_length = 0
			@output_length = 0
		end

		def animate
			@current += @increment_size
			if @current >= @total
				finished
			else
				@now = (@current * 1.0 / @total * 100).to_i
				if @recent != @now
					@recent = @now
					shift_back(@output_length + @prev_extra_length)
					@prev_extra_length = 0
					case @now % 3
						when 0 then @output = "-|-"
						when 1 then @output = "-/-"
						when 2 then @output = "-\\-"
					end
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