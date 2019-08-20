def recursive_fib(n)
	if n == 0
		return 0
	elsif n == 1
		return 1
	else
		return recursive_fib(n-1) + recursive_fib(n-2)
	end
end

def iterative_fib(n)
	if n == 0
		return 0
	end

	prevNum1 = nil
	prevNum2 = 0
	currNum = 1
	(1..n-1).each do
		prevNum1 = prevNum2
		prevNum2 = currNum
		currNum = prevNum1 + prevNum2
	end
	return currNum
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
	x.report("recursive_fib") { recursive_fib(num) }
	x.report("iterative_fib")  { iterative_fib(num)  }
end