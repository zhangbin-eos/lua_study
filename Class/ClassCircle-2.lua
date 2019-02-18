#定义一个圆类,隐藏成员变量

function ClassCircleNew(initr)
	local self={r=initr,pi=3.14}

	local SetRadius = function (r)
		self.r=r
	end

	local GetArea = function ()
		return self.r*self.r*self.pi
	end

	local GetPerimeter = function ()
		return 2*self.r*self.pi
	end


	return {
		SetRadius = SetRadius,
		GetArea = GetArea,
		GetPerimeter = GetPerimeter,
	}
end

a=ClassCircleNew(1)
b=ClassCircleNew(1)
for r=1 ,9,1
do
	a.SetRadius(r)
	b.SetRadius(10-r)
	print("R=",a.r)
	print("S=",a.GetArea())
	print("C=",a.GetPerimeter())
end

