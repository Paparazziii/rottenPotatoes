class Movie < ActiveRecord::Base
	def self.with_ratings(ratings_list)
		if ratings_list == nil or ratings_list.length == 0
			print("ALLLL")
			Movie.all
		else
			print("WHEREEEEE")
			Movie.where(:rating => ratings_list)
		end
	end
	
	def self.all_ratings
		%w[G PG PG-13 R]
	end

	def self.get_order(movies, orders)
		if orders == nil
			movies
		else
			movies.order(orders)
		end
	end
end
