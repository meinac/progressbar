# ConsoleProgressBar

You can use this gem on rake tasks, migrations or irb scripts for watching to transaction progress

## Installation

Add this line to your application's Gemfile:

    gem 'console_progress_bar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install console_progress_bar

## Usage
For counter usage:

		pbar = ConsoleProgressBar::ProgressBar.new
		counter = pbar.counter
		100.times do
			sleep(0.1)
			counter.increase
		end

		# advanced usage of counter object
		# total parameter is counts of your total transactions
		# you can show elapsed time by setting with_elapsed_time parameter to true
		# you can show calculated time remaining by setting with_remaining_time parameter to true
		# increament_size parameter sets to increament size
		counter = pbar.counter(:total => 100, :with_elapsed_time => true, :with_remaining_time => true, :increament_size => 5)

For animation usage:

		pbar = ConsoleProgressBar::ProgressBar.new
		animator = pbar.animator
		100.times do
			sleep(0.1)
			animator.animate
		end

		# advanced usage of animator object
		# total parameter is counts of your total transactions
		# you can show elapsed time by setting with_elapsed_time parameter to true
		# you can show calculated time remaining by setting with_remaining_time parameter to true
		# increament_size parameter sets to increament size
		animator = pbar.animator(:total => 100, :with_elapsed_time => true, :with_remaining_time => true, :increament_size => 5)

For progressbar usage:

		pbar = ConsoleProgressBar::ProgressBar.new
		bar = pbar.bar
		100.times do
			sleep(0.1)
			bar.draw
		end

		# advanced usage of bar object
		# total parameter is counts of your total transactions
		# you can show elapsed time by setting with_elapsed_time parameter to true
		# you can show calculated time remaining by setting with_remaining_time parameter to true
		# increament_size parameter sets to increament size
		# width parameter is width of shown progress bar
		bar = pbar.bar(:total => 100, :with_elapsed_time => true, :with_remaining_time => true, :increament_size => 5, :width => 40)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
