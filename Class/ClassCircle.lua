#定义一个圆类

ClassCircle={r=0,pi=3.14}
ClassCircle.meta = {__index = ClassCircle}

function ClassCircle:new(r)
	local tab={}
	setmetatable(tab,self)
	self.__index=self
	tab.r=r
	return tab
end

function ClassCircle:SetRadius(r)
	self.r=r
end

function ClassCircle:GetArea()
	return self.r*self.r*self.pi
end


function ClassCircle:GetPerimeter()
	return 2*self.r*self.pi
end

a=ClassCircle:new(1)

for r=1 ,9,1
do
	a:SetRadius(r)
	print("R=",a.r)
	print("S=",a:GetArea())
	print("C=",a:GetPerimeter())
end

