class DynamicProgramming
  attr_accessor :blair_cache, :frog_hops_cache

  def initialize
    @blair_cache = {1 => 1, 2 => 2}
    @frog_hops_cache = {
      1 => [[1]], 
      2 => [[1, 1], [2]], 
      3 => [[1, 1, 1], [1, 2], [2, 1], [3]]
    }
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
    return frog_hops_cache[n] if frog_hops_cache[n]
    ans = []
    (1..3).each do |k|
      ans.concat(frog_hops_bottom_up(n - k))
    end
    self.frog_hops_cache[n] = ans
    ans
  end

  def frog_cache_builder(n)
    cache = {
      1 => [[1]], 
      2 => [[1, 1], [2]], 
      3 => [[1, 1, 1], [1, 2], [2, 1], [3]]
    }
    4.upto(n) do |num|
      ans = []
      (1..3).each do |k|
        ans.concat(cache[n - k])
      end
      cache[num] = ans
    end
    cache
  end

  def frog_hops_top_down(n)
    cache = frog_cache_builder(n)
    frog_hops_top_down_helper(n)
    cache[n]
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
