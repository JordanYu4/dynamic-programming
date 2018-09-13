class DynamicProgramming
  attr_accessor :blair_cache

  def initialize
    @blair_cache = {1 => 1, 2 => 2}
  end

  def blair_nums(n)
    return blair_cache[n] if blair_cache[n]
    k_odd = (n - 2) * 2 + 1 
    ans = blair_nums(n - 1) + blair_nums(n - 2) + k_odd
    self.blair_cache[n] = ans
    return ans
  end

  def blair_nums_cache_builder(n)
    cache = { 1 => 1, 2 => 2 }
    return cache if n < 3
    3.upto(n) do |num|
      k_odd = (num - 2) * 2 + 1 
      ans = cache[num - 1] + cache[num - 2] + k_odd
      cache[num] = ans
    end
    cache
  end

  def blair_nums_bottom_up(n)
    cache = blair_nums_cache_builder(n)
    cache[n]
  end

  def frog_hops_bottom_up(n)

  end

  def frog_cache_builder(n)

  end

  def frog_hops_top_down(n)

  end

  def frog_hops_top_down_helper(n)

  end

  def super_frog_hops(n, k)

  end

  def knapsack(weights, values, capacity)

  end

  # Helper method for bottom-up implementation
  def knapsack_table(weights, values, capacity)

  end

  def maze_solver(maze, start_pos, end_pos)
  end
end
