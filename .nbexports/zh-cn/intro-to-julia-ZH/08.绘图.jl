
# ------------------------------------------------------------------------------------------
# # 绘图
#
# ## 基础
# Julia有几种不同的绘图方式（包括调用PyPlot）。<br>
#
# 这里将介绍如何使用`Plots.jl`。如果还没安装`Plots.jl`，你需要通过包管理器（package
# manager）来安装它，Julia会在你第一次导入它的时候将它预编译：
# ------------------------------------------------------------------------------------------

# using Pkg
# Pkg.add("Plots")
using Plots

# ------------------------------------------------------------------------------------------
# `Plots.jl`的优势之一是可以无缝地切换后端（backends）。在这个notebook中，我们将尝试`gr()`和`plotlyjs()`后端。 <br>
#
# 以科学调查之名，我们用这个notebook调查一下大概1860到2000年的全球温度和海盗数量的关系。
# ------------------------------------------------------------------------------------------

globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17];

# ------------------------------------------------------------------------------------------
# Plots通过同样的接口可以支持多种后端——指的是实际执行绘制的库。刚开始，我们先使用GR后端。通过调用`gr()`来选择GR后端：
# ------------------------------------------------------------------------------------------

gr()

# ------------------------------------------------------------------------------------------
# 现在我们可以调用如`plot`和`scatter`的函数来绘制图像。
# ------------------------------------------------------------------------------------------

plot(numpirates, globaltemperatures, label="line")  
scatter!(numpirates, globaltemperatures, label="points") 

# ------------------------------------------------------------------------------------------
# `scatter!`函数名后面的`!` 意味着它是一个原地修改传入变量的函数，表示散点图会被添加到已存在的图像上。
#
# 与此对应的，你可以试试换成`scatter`看看会发生什么。
#
# 接着，我们通过`xlabel!`，`ylabel!`和 `title!`函数来给图像加上更多信息。
# ------------------------------------------------------------------------------------------

xlabel!("Number of Pirates [Approximate]")
ylabel!("Global Temperature (C)")
title!("Influence of pirate population on global warming")

# ------------------------------------------------------------------------------------------
# 这看上去仍不对劲。自1860以来海盗数量是减少的，而从左往右看其实时间上是倒序的。我们来把X轴反过来，可以更清楚地看到时间顺序下海盗人口是如何导致全球温度的变化！
# ------------------------------------------------------------------------------------------

xflip!()

# ------------------------------------------------------------------------------------------
# 就是这样！
#
# 注意：这是一个关于人们是如何经常结合相关性和因果性的笑话。
#
# **不需要修改语法，我们可以在`unicodeplots()`后端中绘制同样的图像**
# ------------------------------------------------------------------------------------------

Pkg.add("UnicodePlots")
unicodeplots()

plot(numpirates, globaltemperatures, label="line")  
scatter!(numpirates, globaltemperatures, label="points") 
xlabel!("Number of Pirates [Approximate]")
ylabel!("Global Temperature (C)")
title!("Influence of pirate population on global warming")

# ------------------------------------------------------------------------------------------
# 注意到第二幅图和第一幅的区别！既然Jupyter notebook有酷炫的绘图能力，使用文本符号来绘图就显得有些傻了。但其实这在终端中进行快速简陋的可视化是很实用的。
# ------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------
# 练习Exercises
#
# #### 8.1
# 已有
# ```julia
# x = -10:10
# ```
# 要绘制y随x变化曲线，其中$y = x^2$。你可能需要先把后端切换回去。
# ------------------------------------------------------------------------------------------

x = -10:10

# ------------------------------------------------------------------------------------------
# #### 8.2
# 执行以下代码
# ------------------------------------------------------------------------------------------

p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)

# ------------------------------------------------------------------------------------------
# 然后使用`p1`、`p2`、`p3`和`p4`作为子图创建一个四行一列的图。
# ------------------------------------------------------------------------------------------


