using Latexify

test_results = []
arr = [1 2; 3 4]
push!(test_results, latexarray(arr) == "\\begin{equation}\n\\left[\n\\begin{array}{cc}\n1 & 2\\\\ \n3 & 4\\\\ \n\\end{array}\n\\right]\n\\end{equation}\n")

arr = [1, 2, :(x/y), 4]
push!(test_results, latexarray(arr) == "\\begin{equation}\n\\left[\n\\begin{array}{c}\n1\\\\ \n2\\\\ \n\\frac{x}{y}\\\\ \n4\\\\ \n\\end{array}\n\\right]\n\\end{equation}\n")

println("latexarray_test successes: \n", test_results)
all(test_results)
