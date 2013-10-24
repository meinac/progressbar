module ConsoleProgressBar

	module Extras

		private
			def prepare_extras
				extra_infos = ""
				extra_infos += calculate_elapsed_time if @with_elapsed_time
				extra_infos += calculate_remaining_time if @with_remaining_time
				shift_back(@prev_extra_length)
				print extra_infos
				@prev_extra_length = extra_infos.length
			end

			def calculate_elapsed_time
				elapsed_time = (Time.now - @start).to_i
				minutes, seconds = elapsed_time.divmod(60)
				hours, minutes = minutes.divmod(60)
				" Elapsed Time = %02d:%02d:%02d" % [hours, minutes, seconds]
			end

			def calculate_remaining_time
				tmp = Time.now - @prev_time
				@avarage_inceament_time = (@avarage_inceament_time + tmp) / 2.0
				minutes, seconds = (@avarage_inceament_time * (@total - @current)).divmod(60)
				hours, minutes = minutes.divmod(60)
				@prev_time = Time.now
				" Time Remaining = %02d:%02d:%02d" % [hours, minutes, seconds]
			end

	end 

end