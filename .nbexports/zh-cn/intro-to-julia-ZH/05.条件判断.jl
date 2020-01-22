
# ------------------------------------------------------------------------------------------
# # 条件判断
#
# #### `if`关键字
# Julia中，这样的语法
#
# ```julia
# if *condition 1*
#     *option 1*
# elseif *condition 2*
#     *option 2*
# else
#     *option 3*
# end
# ```
#
# 让我们按照条件来执行不同的语句。
# <br><br>
# 举个例子，我们也许想要实现FizzBuzz测试：给定一个数字N，如果N可以被3整除则打印"Fizz"，如果N可以被5整除则打印"Buzz"，如果N可以同时被3和5整除则打印"Fiz
# zBuzz"，其他情况则打印这个数字本身！在下面给N取一个值：
# ------------------------------------------------------------------------------------------

N = 

if (N % 3 == 0) && (N % 5 == 0) # `&&`指的是"AND"； % 是取余运算
    println("FizzBuzz")
elseif N % 3 == 0
    println("Fizz")
elseif N % 5 == 0
    println("Buzz")
else
    println(N)
end

# ------------------------------------------------------------------------------------------
# #### 三元运算符
#
# 我们可以用三元运算符语法重写上一个cell
#
# ```julia
# a ? b : c
# ```
#
# 它等价于
#
# ```julia
# if a
#     b
# else
#     c
# end
# ```
# ------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------
# 现在来试试返回两个数中较大的数。在下面给`x`和`y`赋值：
# ------------------------------------------------------------------------------------------

x =
y =

# ------------------------------------------------------------------------------------------
# 用`if`和`else`关键字的话可以这么写：
# ------------------------------------------------------------------------------------------

if x > y
    x
else
    y
end

# ------------------------------------------------------------------------------------------
# 用三元运算符的话这个条件判断语句应该像这样：
# ------------------------------------------------------------------------------------------

(x > y) ? x : y

# ------------------------------------------------------------------------------------------
# #### 短路运算
#
# 我们已经见过这样的语法
# ```julia
# a && b
# ```
# 当`a`和`b`都为真的时候返回真。当然了，如果`a`是假的话，Julia不需要判断`b`的真假就可以判断整体为假；这就“短路”了，直接返回`false`。第二个参数`b`可能是个
# 复杂的表达式，比如说一个有副作用的函数调用，这样的话这个函数就不会被调用：
# ------------------------------------------------------------------------------------------

false && (println("hi"); true)

true && (println("hi"); true)

# ------------------------------------------------------------------------------------------
# 另一方面，如果`a`是真，Julia只要返回`b`的值作为整个表达式的值。这就意味着不需要判断`b`的真假！`b`甚至可以是个报错：
# ------------------------------------------------------------------------------------------

(x > 0) && error("x cannot be greater than 0")

# ------------------------------------------------------------------------------------------
# 类似的，检验一下逻辑“或”的`||`运算符，它也有短路运算。
# ------------------------------------------------------------------------------------------

true || println("hi")

# ------------------------------------------------------------------------------------------
# 以及
# ------------------------------------------------------------------------------------------

false || println("hi")

# ------------------------------------------------------------------------------------------
# ### 练习
#
# #### 5.1
# 写一个条件判断语句：当一个数为偶数时打印自身，为计数时打印"odd"。
# ------------------------------------------------------------------------------------------



# ------------------------------------------------------------------------------------------
# #### 5.2
# 将5.1中的代码用三元运算符重写。
# ------------------------------------------------------------------------------------------


