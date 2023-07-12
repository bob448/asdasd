--[[
	patchma hub by MyWorld
	legends never die
	unless they get patched

	-gh 12652786974,11159483910,11263254795,11159410305,11502853991
    credits to IStealLivers/drippersisfunni for the accessories
]]

-- go to line 296 for settings and 692 for hat settings

-- discord is https://discord.gg/wsC2np7utT

--findfirstchildofclass faster than getservice
local plrs=game:FindFirstChildOfClass("Players")
local rs=game:FindFirstChildOfClass("RunService")
local ws=game:FindFirstChildOfClass("Workspace")
local uis=game:FindFirstChildOfClass("UserInputService")
local gs=game:FindFirstChildOfClass("GuiService")
local cg=game:FindFirstChildOfClass("CoreGui")

local lp=plrs.LocalPlayer
local pg=lp:FindFirstChildOfClass("PlayerGui")
local mouse=lp:GetMouse()
local stepped=rs.Stepped
local heartbeat=rs.Heartbeat
local renderstepped=rs.RenderStepped

local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local sbyte=string.byte
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local clamp=math.clamp
local sin=math.sin
local cos=math.cos
local abs=math.abs
local rad=math.rad
local tinsert=table.insert
local tfind=table.find
local tunpack=table.unpack

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local angles=CFrame.Angles
local u2=UDim2.new
local e=Enum 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

local sine=osclock()
local deltaTime=0
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_net=v3_010*25.01

local function makepcall(f)
	if type(f)=="function" then
		return function(...)
			local a={...}
			local r=nil
			pcall(function()
				r={f(tunpack(a))}
			end)
			return tunpack(r or {})
		end
	end
	return function() end
end
local function rs(l) 
	l=l or mrandom(8,15) 
	local s="" 
	for i=1,l do 
		if mrandom(1,2)==1 then 
			s=s..schar(mrandom(65,90)) 
		else 
			s=s..schar(mrandom(97,122)) 
		end 
	end 
	return s 
end 
local function gp(p,n,cl)
	if typeof(p)=="Instance" then
		local c=p:GetChildren()
		for i=1,#c do
			local v=c[i]
			if (v.Name==n) and v:IsA(cl) then
				return v
			end
		end
	end
	return nil
end
local function loopgp(...)
	while true do
		local r=gp(...)
		if r then
			return r
		end
		twait()
	end
end
local function timegp(p,n,c,t)
	t=osclock()+t
	while t>osclock() do
		local r=gp(p,n,c)
		if r then
			return r
		end
		twait()
	end
	return nil
end
local function getNetlessVelocity(realVel)
	--if true then return v3_0 end
	--if true then return realPartVelocity end
	--if true then return v3_net end
	if realVel.Magnitude>25.01 then
		realVel=realVel.Unit*25.01
	end
	return realVel*v3_xz+v3_net
end
local isClientInstance=makepcall(function(i)
	return ssub(i:GetDebugId(),1,1)=="0"
end)
local isServerInstance=function(i)
	return not isClientInstance(i)
end

local i1=i("Frame") 
local i2=i("Frame") 
local i3=i("ScrollingFrame") 
local i4=i("UIListLayout") 
local i5=i("UIGradient") 
local i6=i("TextLabel") 
local i7=i("TextButton") 
local i8=i("UIGradient") 
local i9=i("ScreenGui") 
i1.AnchorPoint=v2(0.5,0) 
i1.BackgroundColor3=c3(1,1,1) 
i1.BorderSizePixel=0 
i1.Position=u2(0.5,0,0.5,-150) 
i1.Size=u2(0,200,0,305) 
i1.Name=rs() 
i1.Parent=i9 
i2.BackgroundColor3=c3(1,1,1) 
i2.BorderSizePixel=0 
i2.Position=u2(0,5,0,20) 
i2.Size=u2(1,-10,1,-25) 
i2.Name=rs() 
i2.Parent=i1 
i3.Active=true 
i3.BackgroundTransparency=1 
i3.BorderSizePixel=0 
i3.Size=u2(1,-3,1,0) 
i3.AutomaticCanvasSize=e.AutomaticSize.Y 
i3.CanvasSize=u2(0,0,0,0) 
i3.ScrollBarThickness=7 
i3.Name=rs() 
i3.Parent=i2 
i4.Name=rs() 
i4.Parent=i3 
i4.SortOrder=e.SortOrder.LayoutOrder 
i5.Name=rs() 
i5.Parent=i2 
i5.Color=cs({[1]=csk(0,c3(0.121569,0.121569,0.121569)),[2]=csk(1,c3(0.0705882,0.0705882,0.0705882))}) 
i5.Rotation=90 
i6.Font=e.Font.SourceSans 
i6.FontSize=e.FontSize.Size18 
i6.Text="patchma hub" 
i6.TextColor3=c3(0,0,1) 
i6.TextSize=16 
i6.BackgroundTransparency=1 
i6.BorderSizePixel=0 
i6.Position=u2(0,1,0,1) 
i6.Size=u2(1,-2,0,20) 
i6.Name=rs() 
i6.Parent=i1 
i7.AnchorPoint=v2(1,0) 
i7.BackgroundTransparency=1 
i7.Position=u2(1,0,0,0) 
i7.Size=u2(0,40,1,0) 
i7.Name=rs() 
i7.Parent=i6 
i7.Font=e.Font.SourceSans 
i7.FontSize=e.FontSize.Size18 
i7.Text="-" 
i7.TextColor3=c3(1,1,1) 
i7.TextSize=16 
i8.Name=rs() 
i8.Parent=i1 
i8.Color=cs({[1]=csk(0,c3(0,0,0)),[2]=csk(1,c3(0,0,0.584314))}) 
i8.Rotation=90 
i9.ZIndexBehavior=e.ZIndexBehavior.Sibling 
i9.IgnoreGuiInset=true 
i9.ResetOnSpawn=false 
i9.Name=rs() 
local min=false
i7.MouseButton1Click:Connect(function()
	min = not min
	if min then
		i2.Visible=false 
		i1.Size=u2(0,200,0,22) 
	else
		i1.Size=u2(0,200,0,300) 
		i2.Visible=true 
	end
end)
local function Draggable(frame)
	local MB1enum = Enum.UserInputType.MouseButton1
	local mouseStart = nil
	local dragStart = nil
	local inputbegancon = nil
	local rendersteppedcon = nil
	local inputendedcon = nil
	local mouseleavecon = nil
	local function mouseleavef()
		inputbegancon:Disconnect()
		mouseleavecon:Disconnect()
	end
	local function inputendedf(a)
		if a.UserInputType==MB1enum then
			rendersteppedcon:Disconnect()
			inputendedcon:Disconnect()
		end
	end
	local function rendersteppedf()
		local off = uis:GetMouseLocation()-mouseStart
		frame.Position=dragStart+u2(0,off.X,0,off.Y)
	end
	local function inputbeganf(a)
		if (a.UserInputType==MB1enum) and (frame:IsDescendantOf(cg) or (not gs.MenuIsOpen)) then
			mouseStart=uis:GetMouseLocation()
			dragStart=frame.Position
			rendersteppedcon = renderstepped:Connect(rendersteppedf)
			inputendedcon = uis.InputEnded:Connect(inputendedf)
		end
	end
	frame.MouseEnter:Connect(function()
		inputbegancon = uis.InputBegan:Connect(inputbeganf)
		mouseleavecon = frame.MouseLeave:Connect(mouseleavef)
	end)
end
local function btn(txt, f)
	local i1=i("TextButton") 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Font=e.Font.SourceSans 
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=c3(0.0941177,0.317647,0.878431) 
	if f then 
		i1.MouseButton1Click:Connect(f) 
	end 
	i1.Parent=i3 
	return i3
end
local function lbl(txt)
	local i1=i("TextLabel") 
	i1.Font=e.Font.SourceSans 
	i1.FontSize=e.FontSize.Size14 
	i1.Text=txt 
	i1.TextColor3=c3(0.560784,0.560784,0.560784) 
	i1.AutomaticSize=e.AutomaticSize.Y 
	i1.BackgroundTransparency=1 
	i1.Size=u2(1,0,0,0) 
	i1.Name=rs() 
	i1.Parent=i3 
	return i1
end

Draggable(i1)

lbl("by MyWorld")
lbl("low effort ui obviously")

local flingmode=2
local allowshiftlock=true
local ctrltp=true
local discharscripts=true
local removebparts=true

local function reanimate()
	--[[
	    FDless reanimate by MyWorld
	    aka no client sided instances
	    damn this shit is op for its times
	    "what else do i optimize here"
	]]

	local reclaim = true --if you lost control over a part this will move your primary part to the part so you get it back
	local novoid = true --prevents parts from going under workspace.FallenPartsDestroyHeight if you control them
	local antiragdoll = true --removes instances that are usually used for ragdolling form your character
	local addPartsOnRun = false --allows u to add more parts and joints to the simulation after it started
	local discharscripts = discharscripts --disables all localScripts parented to your character before reanimation
	local removebparts = removebparts --removes the parts that you cannot control in your character by making them fall to void
	local R15toR6 = true --adds fake r6 parts and joints for animations if your character is r15
	local walkSpeed = 16 --your walkspeed (can be changed at runtime)
	local jumpPower = 50 --your jump power (can be changed at runtime)
	local allowshiftlock = allowshiftlock --allows the user to use shiftlock (can be changed at runtime)
	local gravity = 196.2 --how fast the characters velocity increases while falling (can be changed at runtime)
	local simrad = 1000 --sets simulation radius to this with sethiddenproperty (nil to disable)
	local loadtime = plrs.RespawnTime --anti respawn delay
	--the fling function
	--usage: fling(target, duration, velocity)
	--target can be set to: basePart, CFrame, Vector3, character model or humanoid (flings at mouse.Hit if argument not provided)
	--duration (fling time in seconds) can be set to a number or a string convertable to a number (0.5s if not provided)
	--velocity (fling part rotation velocity) can be set to a vector3 value (uses defaultflingvel if not provided)
	local defaultflingvel=v3(20000,20000,20000) --this is the velocity used for flinging if its not provided to the fling function
	local ctrlclicktp = ctrltp --makes you teleport where u point ur mouse cursor at when click and hold ctrl down
	local clickfling = flingmode --click fling mode
	--false - click fling disabled
	--0 - click fling without prediction
	--1 - with prediction if pointing at a character, otherwise not flinging
	--2 - with prediction if pointing at a character, otherwise no prediction
	local maxflingtrsp = 1 --max transparency of the fling part (if its above this it will be set to this)

	local c=lp.Character
	if not c then return end
	if not c:IsDescendantOf(ws) then return end
	local c1=c
	c.AncestryChanged:Connect(function()
		if c1 then
			if c1:IsDescendantOf(ws) then
				c=c1
			else
				c=nil
			end
		end
	end)

	local hum=c:FindFirstChildOfClass("Humanoid")
	local rootpart=gp(c,"HumanoidRootPart","BasePart") or gp(c,"Torso","BasePart") or gp(c,"UpperTorso","BasePart") or (hum and hum.RootPart) or timegp(c,"HumanoidRootPart","BasePart",0.5) or c:FindFirstChildWhichIsA("BasePart")
	if not rootpart then return end

	reclaim=reclaim and (c.PrimaryPart or rootpart)
	R15toR6=R15toR6 and hum and (hum.RigType==e.HumanoidRigType.R15)
	local shp=getfenv().sethiddenproperty
	simrad=shp and tonumber(simrad)

	local flingparts={}
	local children=c:GetChildren()
	for i=1,#children do
		local v=children[i]
		if v:IsA("Tool") then
			local des=v:GetDescendants()
			for i=1,#des do
				local v=des[i]
				if v:IsA("BasePart") and isServerInstance(v) then
					tinsert(flingparts,v)
				end
			end
		end
	end
	local cam=nil
	--theres a way to have ws.currentcamera nil on heartbeat and still have the game run normally
	local function refcam()
		cam=ws.CurrentCamera
		while not cam do
			ws:GetPropertyChangedSignal("CurrentCamera"):Wait()
			cam=ws.CurrentCamera
		end
	end
	refcam()
	local camcf=cam.CFrame
	if not c then return end
	lp.Character=nil
	lp.Character=c
	renderstepped:Once(function()
		refcam()
		cam.CFrame=camcf
	end)
	twait(loadtime)
	refcam()
	if not c then return end

	camcf=cam.CFrame
	local enumCamS=e.CameraType.Scriptable
	local camt=cam.CameraType
	local camcon0=nil
	local camcon1=nil
	local function onnewcamera()
		refcam()
		if camcon0 then 
			camcon0:Disconnect()
			camcon0=nil
		end
		if not c then 
			if cam.CameraType==enumCamS then
				cam.CameraType=camt
			end
			return camcon1:Disconnect() 
		end
		camcon0=cam.Changed:Connect(function(p)
			if not c then
				camcon0:Disconnect()
				return camcon1:Disconnect()
			end
			if (p=="CFrame") and (cam.CFrame~=camcf) then
				cam.CFrame=camcf
			elseif (p=="CameraSubject") or (p=="CameraType") then
				local subj=cam.CameraSubject
				if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
					cam.CameraType = enumCamS
				end
			end
		end)
		local subj=cam.CameraSubject
		if subj and subj:IsA("Humanoid") and (subj.Parent==c) and (cam.CameraType~=enumCamS) then
			cam.CameraType=enumCamS
		end
		cam.CFrame=camcf
	end
	camcon1=ws:GetPropertyChangedSignal("CurrentCamera"):Connect(onnewcamera)
	onnewcamera()

	local fpdh=ws.FallenPartsDestroyHeight
	novoid=novoid and (fpdh+1)

	local cfr=rootpart.CFrame
	if removebparts then
		removebparts=cfr
		cfr=(cfr-cfr.Position)+v3(mrandom(-10,10)*100000,fpdh+500,mrandom(-10,10)*100000)
	end
	local con=heartbeat:Connect(function()
		if (not rootpart.Anchored) and (rootpart.ReceiveAge==0) then
			local off=v3_010*sin(osclock()*32)
			rootpart.CFrame=cfr+off
			rootpart.Velocity=v3_010*25.1
			rootpart.RotVelocity=off
		end
	end)
	twait(0.5)
	con:Disconnect()

	if not c then
		onnewcamera()
		return 
	end

	if discharscripts then
		local chi=c:GetChildren()
		for i=1,#chi do
			local v=chi[i]
			if v:IsA("LocalScript") then
				v.Disabled=true
			end
		end
	end

	local joints={}
	local cframes={}
	local lastpositions={}
	local function ondes(v)
		if antiragdoll and v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
			v:Destroy()
		elseif addPartsOnRun then
			if v:IsA("JointInstance") then
				tinsert(joints,{
					Name=v.Name,
					C0=v.C0,
					C1=v.C1,
					Part0=v.Part0,
					Part1=v.Part1
				})
				v:Destroy()
			elseif v:IsA("BasePart") then
				if isClientInstance(v) then
					v={CFrame=v.CFrame,Name=v.Name,Anchored=true}
				end
				cframes[v]=v.CFrame
				lastpositions[v]=v.Position
			end
		end
	end
	if addPartsOnRun then
		local des=c:GetDescendants()
		for i=1,#des do
			ondes(des[i])
		end
		c.DescendantAdded:Connect(ondes)
	else
		addPartsOnRun = true
		local des=c:GetDescendants()
		for i=1,#des do
			ondes(des[i])
		end
		addPartsOnRun = false
		c.DescendantAdded:Connect(ondes)
	end

	if removebparts then
		cfr=removebparts
		for i,v in pairs(cframes) do
			if i.Parent and (i.Parent==c) then
				local i1={Name=i.Name,Anchored=true,CFrame=i.CFrame}
				cframes[i1]=v
				for i2,v1 in pairs(joints) do
					if v1.Part0==i then
						v1.Part0=i1
					end
					if v1.Part1==i then
						v1.Part1=i1
					end
				end
				if rootpart==i then
					rootpart=i1
				end
				cframes[i]=nil
			end
		end
	end
	local pos=cfr.Position
	local shiftlock=false
	local firstperson=false
	local xzvel=v3_0
	local Yvel=0
	local v3_0150=v3_010*1.5
	local camoff=cf(v3_0,camcf.LookVector)
	camoff=camoff-v3_001*(camcf.Position-(pos+v3_0150)).Magnitude

	local refreshjoints=nil
	refreshjoints=function(part,refreshed)
		if not part then return end
		refreshed=refreshed or {}
		tinsert(refreshed,part)
		for i,v in pairs(joints) do
			local part0=v.Part0
			local part1=v.Part1
			if part1 and (part0==part) then
				cframes[part1]=cframes[part]*v.C0*v.C1:Inverse()
				if not tfind(refreshed,part1) then
					refreshjoints(part1,refreshed)
				end
			elseif part0 and (part1==part) then
				cframes[part0]=cframes[part]*v.C1*v.C0:Inverse()
				if not tfind(refreshed,part0) then
					refreshjoints(part0,refreshed)
				end
			end
		end
	end

	if R15toR6 then
		local R6parts={ 
			head={Name="Head",Anchored=true},
			torso={Name="Torso",Anchored=true},
			root={Name="HumanoidRootPart",Anchored=true},
			leftArm={Name="Left Arm",Anchored=true},
			rightArm={Name="Right Arm",Anchored=true},
			leftLeg={Name="Left Leg",Anchored=true},
			rightLeg={Name="Right Leg",Anchored=true}
		}
		for i,v in pairs(R6parts) do
			cframes[v]=cfr
		end
		tinsert(joints,{
			Name="Neck",
			Part0=R6parts.torso,Part1=R6parts.head,
			C0=cf(0,1,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,-0.5,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="RootJoint",
			Part0=R6parts.root,Part1=R6parts.torso,
			C0=cf(0,0,0,-1,0,0,0,0,1,0,1,-0),
			C1=cf(0,0,0,-1,0,0,0,0,1,0,1,-0)
		})
		tinsert(joints,{
			Name="Right Shoulder",
			Part0=R6parts.torso,Part1=R6parts.rightArm,
			C0=cf(1,0.5,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(-0.5,0.5,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Shoulder",
			Part0=R6parts.torso,Part1=R6parts.leftArm,
			C0=cf(-1,0.5,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(0.5,0.5,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Name="Right Hip",
			Part0=R6parts.torso,Part1=R6parts.rightLeg,
			C0=cf(1,-1,0,0,0,1,0,1,-0,-1,0,0),
			C1=cf(0.5,1,0,0,0,1,0,1,-0,-1,0,0)
		})
		tinsert(joints,{
			Name="Left Hip" ,
			Part0=R6parts.torso,Part1=R6parts.leftLeg,
			C0=cf(-1,-1,0,0,0,-1,0,1,0,1,0,0),
			C1=cf(-0.5,1,0,0,0,-1,0,1,0,1,0,0)
		})
		tinsert(joints,{
			Part0=R6parts.root,Part1=rootpart,
			C0=cf_0,C1=cf_0
		})
		refreshjoints(rootpart)
		local function getpart(n)
			for i,_ in pairs(cframes) do
				if (i.Name==n) and (type(i)~="table") then
					return i
				end
			end
			return nil
		end
		local function makejoint(p0, p1, p2)
			p1=getpart(p1)
			p2=getpart(p2)
			if not (p1 and p2) then return end
			for i,v in pairs(joints) do
				if (v.Part0==p1) and (v.Part1==p2) then
					joints[i]=nil
				elseif (v.Part0==p2) and (v.Part1==p1) then
					joints[i]=nil
				end
			end
			tinsert(joints,{
				Part0=p0,Part1=p1,
				C0=cf_0,
				C1=cframes[p1]:Inverse()*cframes[p0]
			})
		end
		makejoint(R6parts.head,"Head","UpperTorso")
		makejoint(R6parts.leftArm,"LeftUpperArm","UpperTorso")
		makejoint(R6parts.rightArm,"RightUpperArm","UpperTorso")
		makejoint(R6parts.leftLeg,"LeftUpperLeg","LowerTorso")
		makejoint(R6parts.rightLeg,"RightUpperLeg","LowerTorso")
		makejoint(R6parts.torso,"LowerTorso","HumanoidRootPart")
	end

	local function getPart(name,blacklist)
		for i,v in pairs(cframes) do
			if (i.Name==name) and not (blacklist and tfind(blacklist,i)) then
				return i
			end
		end
		return nil
	end

	local function getPartFromMesh(meshid,textureid,blacklist)
		for v,_ in pairs(cframes) do
			if (type(v)~="table") and not (blacklist and tfind(blacklist,v)) then
				if v:IsA("MeshPart") and sfind(v.MeshId,meshid) and sfind(v.TextureID,textureid) then 
					return v
				else
					local m=v:FindFirstChildOfClass("SpecialMesh")
					if m and sfind(m.MeshId,meshid) and sfind(m.TextureId,textureid) then
						return v
					end
				end
			end
		end
		return nil
	end

	local function getJoint(name)
		for i,v in pairs(joints) do
			if v.Name==name then
				return v
			end
		end
		return {C0=cf_0,C1=cf_0}
	end

	local function getPartJoint(handle)
		for i,v in pairs(joints) do
			if v.Part0==handle then
				return v
			end
		end
		for i,v in pairs(joints) do
			if v.Part1==handle then
				return v
			end
		end
		return nil
	end

	local accessorylimbs={
		{meshid="4819720316",textureid="4819722776",C0=cf_0,Name="Torso"},
		{meshid="4094864753",textureid="4094881938",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Arm"},
		{meshid="4324138105",textureid="4391374782",C0=angles(-1.5707963267948966,0,1.5707963267948966),Name="Right Arm"},
		{meshid="4489232754",textureid="4489233876",C0=angles(1.5707963267948966,0,1.5707963267948966),Name="Left Leg"},
		{meshid="4154474745",textureid="4154474807",C0=cf(0,-0.125,0),Name="Right Leg"}
	}

	for i=1,#accessorylimbs do
		local v=accessorylimbs[i]
		local p=getPart(v.Name)
		local h=getPartFromMesh(v.meshid,v.textureid)
		local w=getPartJoint(h)
		if p and w then
			w.C0=v.C0
			w.Part0=h
			w.C1=cf_0
			w.Part1=p
		end
	end

	local raycastparams=RaycastParams.new()
	raycastparams.FilterType=e.RaycastFilterType.Blacklist
	raycastparams.RespectCanCollide=true
	local rayfilter={}
	local characters={}
	local function refreshrayfilter()
		for i=1,#rayfilter do
			rayfilter[i]=nil
		end
		local len=0
		for i,v in pairs(characters) do
			len=len+1
			rayfilter[len]=v
		end
		raycastparams.FilterDescendantsInstances=rayfilter
	end
	local function onplayer(v)
		characters[v]=v.Character
		v:GetPropertyChangedSignal("Character"):Connect(function()
			characters[v]=v.Character
			refreshrayfilter()
		end)
		refreshrayfilter()
	end
	local plrst=plrs:GetPlayers()
	for i=1,#plrst do onplayer(plrst[i]) end
	plrs.PlayerAdded:Connect(onplayer)
	plrs.PlayerRemoving:Connect(function(v)
		characters[v]=nil
	end)

	local mradN05=rad(-0.5)
	local enumMLC=e.MouseBehavior.LockCenter
	local enumMB2=e.UserInputType.MouseButton2
	local enumMLCP=e.MouseBehavior.LockCurrentPosition
	local enumMD=e.MouseBehavior.Default
	local enumMW=e.UserInputType.MouseWheel

	local mode="default"
	local modes={default={}}
	local function addmode(key,mode)
		if (type(key)~="string") or (type(mode)~="table") then
			return
		end
		for i, v in pairs(mode) do
			if type(v)~="function" then
				mode[i]=nil
			end
		end
		if key=="default" then
			modes.default=mode
			if mode.modeEntered then
				mode.modeEntered()
			end
		elseif #key==1 then
			key=e.KeyCode[supper(ssub(key,1,1))]
			modes[key]=mode
		end
	end

	local keyW=e.KeyCode.W
	local keyA=e.KeyCode.A
	local keyS=e.KeyCode.S
	local keyD=e.KeyCode.D
	local keySpace=e.KeyCode.Space
	local keyShift=e.KeyCode.LeftShift
	local movementkeys = {
		[keyW]=false,
		[keyA]=false,
		[keyS]=false,
		[keyD]=false,
		[keySpace]=false
	}
	uis.InputBegan:Connect(function(a)
		if gs.MenuIsOpen or uis:GetFocusedTextBox() then
			return
		end
		a=a.KeyCode
		if movementkeys[a]==false then
			movementkeys[a]=true
		elseif a==keyShift then
			shiftlock=allowshiftlock and not shiftlock
		elseif modes[a] then
			if modes[mode].modeLeft then
				modes[mode].modeLeft()
			end
			if mode==a then
				mode="default"
			else
				mode=a
			end
			if modes[mode].modeEntered then
				modes[mode].modeEntered()
			end
		end
	end)
	uis.InputEnded:Connect(function(a)
		if movementkeys[a.KeyCode] then
			movementkeys[a.KeyCode]=false
		end
	end)
	uis.InputChanged:Connect(function(a,b)
		if (not b) and (a.UserInputType==enumMW) then
			camoff=camoff+a.Position*v3_001*(0.75-camoff.Z/4)
			if camoff.Z>0 then
				camoff=camoff-camoff.Position
			end
			firstperson=camoff.Z==0
		end
	end)

	local lostPart=nil
	local flingcf=nil
	local flingvel=nil
	local flingid=0
	local currentflingpart=nil
	local function fling(target,duration,rotVelocity)
		currentflingpart=nil
		for i,v in pairs(flingparts) do
			if v and (not v.Anchored) and v:IsDescendantOf(ws) and (v.ReceiveAge == 0) then
				currentflingpart=v
				break
			end
		end
		if not currentflingpart then 
			return twait() and false
		end
		if typeof(target)=="Instance" then
			if target:IsA("BasePart") then
				target=target.Position
			elseif target:IsA("Model") then
				target=gp(target,"HumanoidRootPart","BasePart") or gp(target,"Torso","BasePart") or gp(target,"UpperTorso","BasePart") or target:FindFirstChildWhichIsA("BasePart")
				if target then
					target=target.Position
				else
					return twait() and false
				end
			elseif target:IsA("Humanoid") then
				target=target.Parent
				if not (target and target:IsA("Model")) then
					return twait() and false
				end
				target=gp(target,"HumanoidRootPart","BasePart") or gp(target,"Torso","BasePart") or gp(target,"UpperTorso","BasePart") or target:FindFirstChildWhichIsA("BasePart")
				if target then
					target=target.Position
				else
					return twait() and false
				end
			else
				return twait() and false
			end
		elseif typeof(target)=="CFrame" then
			target=target.Position
		elseif typeof(target)~="Vector3" then
			target=mouse.Hit
			if target then
				target=target.Position
			else
				return twait() and false
			end
		end
		if type(duration)~="number" then
			duration=tonumber(duration) or 0.5
		end
		if typeof(rotVelocity)~="Vector3" then
			rotVelocity=defaultflingvel
		end
		if (type(maxflingtrsp)=="number") and (currentflingpart.Transparency>maxflingtrsp) then
			currentflingpart.Transparency=maxflingtrsp
		end
		flingcf=cf(target)
		flingvel=rotVelocity
		flingid=flingid+1
		local thisfling=flingid
		twait(duration)
		if flingid==thisfling then
			flingcf=nil
			currentflingpart=nil
		end
		return true
	end

	local pflingid=0
	local function predictionfling(target,duration,rotVelocity,stopOnVelMag)
		if typeof(target)~="Instance" then 
			target=mouse.Target
			if not target then
				return twait() and false
			end
		end
		if target:IsA("Humanoid") or target:IsA("BasePart") then 
			target=target.Parent 
			if target:IsA("Accessory") then
				target=target.Parent
			end
		end
		if (not target:IsA("Model")) or (target==c) then
			return twait() and false
		end
		target=gp(target,"HumanoidRootPart","BasePart") or gp(target,"Torso","BasePart") or gp(target,"UpperTorso","BasePart")
		if not (target and target:IsDescendantOf(ws)) then
			return twait() and false
		end
		if stopOnVelMag then
			duration=tonumber(duration) or 5
			stopOnVelMag=tonumber(stopOnVelMag) or 1000
		elseif type(stopOnVelMag)=="boolean" then
			duration=tonumber(duration) or 1
			stopOnVelMag=nil
		else 
			duration=tonumber(duration) or 5
			stopOnVelMag=1000
		end
		local stopTime=sine+duration
		pflingid=pflingid+1
		local thisfling=pflingid
		local con=nil
		con=heartbeat:Connect(function(deltaTime)
			if (thisfling~=pflingid) or (sine>stopTime) or (stopOnVelMag and (target.Velocity.Magnitude>stopOnVelMag)) or (not (target and target:IsDescendantOf(ws))) then
				return con:Disconnect()
			end
			fling(target.Position+target.Velocity*(sin(sine*15)+1),0,rotVelocity)
		end)
		twait()
		return true
	end

	if ctrlclicktp then
		ctrlclicktp=e.KeyCode.LeftControl
		local tpoff=v3_010*3
		if clickfling==0 then
			mouse.Button1Down:Connect(function()
				if uis:IsKeyDown(ctrlclicktp) then
					if mouse.Target then
						pos=mouse.Hit.Position+tpoff
						cfr=cf(pos,pos+camoff.LookVector*v3_101)
						xzvel=v3_0
						Yvel=0
					end
				else
					fling()
				end
			end)
		elseif clickfling==1 then
			mouse.Button1Down:Connect(function()
				if uis:IsKeyDown(ctrlclicktp) then
					if mouse.Target then
						pos=mouse.Hit.Position+tpoff
						cfr=cf(pos,pos+camoff.LookVector*v3_101)
						xzvel=v3_0
						Yvel=0
					end
				else
					predictionfling()
				end
			end)
		elseif clickfling == 2 then
			mouse.Button1Down:Connect(function()
				if uis:IsKeyDown(ctrlclicktp) then
					if mouse.Target then
						pos=mouse.Hit.Position+tpoff
						cfr=cf(pos,pos+camoff.LookVector*v3_101)
						xzvel=v3_0
						Yvel=0
					end
				elseif not predictionfling() then
					fling()
				end
			end)
		else
			mouse.Button1Down:Connect(function()
				if mouse.Target and uis:IsKeyDown(ctrlclicktp) then
					pos=mouse.Hit.Position+tpoff
					cfr=cf(pos,pos+camoff.LookVector*v3_101)
					xzvel=v3_0
					Yvel=0
				end
			end)
		end
	else
		if clickfling==0 then
			mouse.Button1Down:Connect(fling)
		elseif clickfling==1 then
			mouse.Button1Down:Connect(predictionfling)
		elseif clickfling==2 then
			mouse.Button1Down:Connect(function()
				if not predictionfling() then fling() end
			end)
		end
	end

	local noYvelTime=1
	local lastsine=sine
	local pose=nil
	local con=nil
	local function mainFunction()
		if not c then 
			uis.MouseBehavior=enumMD
			onnewcamera()
			local c=lp.Character
			if c then
				cam.CameraSubject=c:FindFirstChildOfClass("Humanoid")
			end
			return con and con:Disconnect() 
		end

		sine=osclock()
		local delta=sine-lastsine
		deltaTime=clamp(delta*10,0,1)
		lastsine=sine

		if shiftlock then
			if allowshiftlock then
				uis.MouseBehavior=enumMLC
				local rotation=uis:GetMouseDelta()*mradN05
				camoff=cf(camoff.Position,camoff.Position+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
			else
				shiftlock=false
			end
		elseif firstperson then
			uis.MouseBehavior=enumMLC
			local rotation=uis:GetMouseDelta()*mradN05
			camoff=cf(camoff.Position,camoff.Position+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		elseif uis:IsMouseButtonPressed(enumMB2) then
			uis.MouseBehavior=enumMLCP
			local rotation=uis:GetMouseDelta()*mradN05
			camoff=cf(camoff.Position,camoff.Position+camoff.LookVector)*angles(rotation.Y,rotation.X,0)
		else
			uis.MouseBehavior=enumMD
		end

		local raycastresult=ws:Raycast(pos,v3_010*fpdh-pos,raycastparams)
		local onground=nil
		if raycastresult then
			raycastresult=raycastresult.Position
			onground=(pos.Y-raycastresult.Y)<3.01
			if onground then
				Yvel=0
				cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)*clamp(delta*20,0,1)
				if movementkeys[keySpace] then
					Yvel=jumpPower
				end
			else
				Yvel=Yvel-gravity*delta
				if pos.Y+Yvel*delta<raycastresult.Y then
					Yvel=0
					cfr=cfr+v3_010*(raycastresult.Y+3-pos.Y)
				end
			end
		else
			Yvel=0
			onground=false
		end
		xzvel=v3_0
		if movementkeys[keyW] then
			xzvel=xzvel+(camoff.LookVector*v3_101).Unit
		end
		if movementkeys[keyS] then
			xzvel=xzvel-(camoff.LookVector*v3_101).Unit
		end
		if movementkeys[keyA] then
			xzvel=xzvel-(camoff.RightVector*v3_101).Unit
		end
		if movementkeys[keyD] then
			xzvel=xzvel+(camoff.RightVector*v3_101).Unit
		end
		pos=cfr.Position
		if shiftlock or firstperson then
			if xzvel.Magnitude>0 then
				xzvel=xzvel.Unit*walkSpeed
			end
			cfr=cf(pos,pos+camoff.LookVector*v3_101)
		elseif xzvel.Magnitude>0 then
			xzvel=xzvel.Unit*walkSpeed
			cfr=cfr:Lerp(cf(pos,pos+xzvel),deltaTime)
		end
		cfr=cfr+(xzvel+(v3_010*Yvel))*delta
		pos=cfr.Position

		camcf=cf(pos,pos+camoff.LookVector)+camoff.LookVector*camoff.Z+v3_0150
		if shiftlock and not firstperson then
			camcf=camcf+camcf.RightVector*1.75
		end
		if cam then
			cam.CFrame=camcf
		end

		if onground then
			if xzvel==v3_0 then
				pose="idle"
			else
				pose="walk"
			end
		elseif Yvel>0 then
			pose="jump"
		else
			pose="fall"
		end
		local lerpfunc=modes[mode][pose]
		lerpfunc=lerpfunc or modes.default[pose]
		if lerpfunc then
			lerpfunc()
		end

		cframes[rootpart]=cfr
		refreshjoints(rootpart)

		if abs(Yvel)>1 then
			noYvelTime=0
		else
			noYvelTime=clamp(noYvelTime+delta*0.3,0,1)
			xzvel=xzvel*(1-noYvelTime)
		end

		local idleoff=v3(sin((sine-0.01875)*32),sin(sine*32),sin((sine+0.0375)*32))*0.001		
		local idlerv=v3_010*sin(sine*32)

		for i,v in pairs(cframes) do
			if (not i.Anchored) and i:IsDescendantOf(ws) then
				if i.ReceiveAge==0 then
					if (i==currentflingpart) and flingcf then
						flingcf=flingcf*angles(0,flingvel.Unit.Y*-deltaTime,0)
						v=flingcf
						i.RotVelocity=flingvel+idlerv
					else
						i.RotVelocity=idlerv
					end
					local vel=(v.Position-lastpositions[i])/delta
					lastpositions[i]=v.Position
					if vel.Magnitude<0.15 then
						v=v+idleoff
					end
					if (i==reclaim) and lostPart then
						v=lostPart.CFrame
						lostPart=nil
						i.Velocity=v3_0
					else
						i.Velocity=getNetlessVelocity(vel*noYvelTime+xzvel)
					end
					if novoid and (v.Y<novoid) then
						v=v+v3_010*(novoid-v.Y)
					end
					i.CFrame=v
				else
					lastpositions[i]=i.Position
					if reclaim and (i~=reclaim) then
						lostPart=i
					end
				end
			end
		end
		if simrad then
			shp(lp,"SimulationRadius",simrad)
		end
	end

	con=heartbeat:Connect(mainFunction)
	mainFunction()

	local legcfR=cf(1,-1,0)
	local legcfL=cf(-1,-1,0)
	local raydir=v3_010*-2
	local function raycastlegs() --this returns 2 values: right leg raycast offset, left leg raycast offset
		local rY=ws:Raycast((cfr*legcfR).Position,raydir,raycastparams)
		local lY=ws:Raycast((cfr*legcfL).Position,raydir,raycastparams)
		return rY and (rY.Position.Y-(pos.Y-3)) or 0,lY and (lY.Position.Y-(pos.Y-3)) or 0
	end

	local function velbycfrvec() --this returns 2 values: forward/backwards movement (from -1 to 1), right/left movement (from -1 to 1)
		local fw=cfr.LookVector*xzvel/walkSpeed
		local rt=cfr.RightVector*xzvel/walkSpeed
		return fw.X+fw.Z,rt.X+rt.Z
	end

	local lastvel=v3_0
	local velchg1=v3_0
	local function velchgbycfrvec() --this returns 2 values: forward/backwards velocity change, right/left velocity change
		velchg1=velchg1+(lastvel-xzvel) --i recommend setting velchg1 to v3_0 when u start using this function or it will look worse
		lastvel=xzvel
		velchg1=velchg1:Lerp(v3_0,deltaTime/2)
		local fw=cfr.LookVector*velchg1/32
		local rt=cfr.RightVector*velchg1/32
		return fw.X+fw.Z,rt.X+rt.Z
	end

	local function rotToMouse(alpha) --this rotates ur character towards your mouse hit position
		local mpos=mouse.Hit.Position
		cfr=cfr:Lerp(cf(pos,v3(mpos.X,pos.Y,mpos.Z)),alpha or deltaTime)
	end

	return {
		raycastlegs=raycastlegs,
		velbycfrvec=velbycfrvec,
		velchgbycfrvec=velchgbycfrvec,
		addmode=addmode,
		getPart=getPart,
		getPartFromMesh=getPartFromMesh,
		getJoint=getJoint,
		getPartJoint=getPartJoint,
		rotToMouse=rotToMouse
	}
end

btn("nameless animations V7", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")

	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1) * angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1)), deltaTime)
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2) - Cfw, Crt, 3.141592653589793), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5) * angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0) * angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2)), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5) * angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988), deltaTime)
			--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.2 + 0.2 * sin(sine * 16), Cfw * -3) * angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - Vfw * 0.15 - Cfw, 0.03490658503988659 * sin(sine * 8) + Vrt * 0.15 + Crt, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - Vrt * 0.1), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * Vfw + 0.4 * sin((sine + 10) * 8) * Vfw + rY * -0.5) * angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*Vrt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0) * angles(0.5235987755982988 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.35 + 0.1 * sin(sine * 8), 0) * angles(-0.5235987755982988 * sin(sine * 8)*Vfw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*Vfw, -0.5235987755982988 * sin(sine * 8)*Vfw), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * Vfw - 0.4 * sin((sine + 10) * 8) * Vfw + lY * -0.5) * angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*Vfw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*Vrt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + Vfw * 0.15, -0.08726646259971647 * sin(sine * 8) + Vrt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - Vrt * 0.5), deltaTime)
			--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
		end,
		jump = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.4835298641951802 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.6580627893946132 + Vfw * 0.1 - Cfw, Vrt * -0.05 + Crt, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -2.45 - 0.05 * sin(sine * 2), Cfw * -3) * angles(0.03490658503988659 * sin(sine * 2) - Cfw, Crt, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
		end
	})
	addmode("e", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)) * angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -1.85 - 0.1 * sin((sine + 0.2) * 2), Cfw * -3) * angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)) * angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)) * angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0), deltaTime) 
			--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
		end
	})
	addmode("r", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8) + Crt * 3, -0.1 + 0.2 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
		end
	})         
	addmode("t", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()--

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0) * angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4) + Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4) + Crt, -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
		end
	})
	addmode("y", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0) * angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin(sine * 2), Cfw * -3) * angles(-1.6580627893946132 - Cfw, 0.08726646259971647 + Crt, 3.0543261909900767), deltaTime) 
			--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
		end
	})        
	addmode("u", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.75 + 0.25 * sin(sine * 2), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
		end
	})
	addmode("i", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), Cfw * -3) * angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9) - Cfw, -0.05235987755982989 * sin(sine * 4.5) + Crt, 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1 + 0.2 * sin(sine * 9), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5)), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
		end,
	})
	addmode("o", {
		idle = function()
			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, lY * -0.5) * angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt, 0, 0.09 * sin(sine * 2) - Cfw * 3) * angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2) - Cfw, -0.08726646259971647 + Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + rY, rY * -0.5) * angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local rY, lY = raycastlegs()

			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - Vrt), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5) * angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * Vfw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, 1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - Vrt/3, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.1 * sin((sine + 0.1) * 16), Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vfw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * Vrt, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
		end
	})
	addmode("p", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, -3.141592653589793), deltaTime) 
			--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
		end
	})
	addmode("f", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		walk = function()
			local Vfw, Vrt = velbycfrvec()

			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - Vfw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + Vrt * 0.2, -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + Vfw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - Vrt * 0.2, -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1) - Cfw * 3) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - Vfw * 0.2 - Cfw, 0.08726646259971647 * sin(sine * 0.5) + Crt, 3.141592653589793 - Vrt * 0.2), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - Vfw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end
	})
	addmode("g", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin((sine + 0.4) * 8) + Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, 0.3490658503988659 * sin(sine * 8) + Crt, -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
			--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
		end
	})
	addmode("h", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8) + Crt * 3, 0.2 * sin((sine + 0.1) * 16), Cfw * -3) * angles(-1.5707963267948966 - Cfw, 0.2617993877991494 * sin(sine * 8) + Crt, -3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
		end
	})
	addmode("j", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.8, -1, -0.1) * angles(0.17453292519943295, -0.6981317007977318, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.2, 0.5, 0) * angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1.1, -1, 0) * angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4) - Cfw * 3) * angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4) - Cfw, Crt, 3.6651914291880923), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)) * angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4)), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
		end
	})
	addmode("k", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), Cfw * -3) * angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12) - Cfw, 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6) + Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
		end
	})
	addmode("l", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)) * angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)) * angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0.15 + 0.4 * sin((sine - 0.5) * 10), Cfw * -3) * angles(-1.4835298641951802 - Cfw, 0.17453292519943295 * sin(sine * 5) + Crt, -3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
		end
	})

	addmode("x", {
		idle = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
		end,
		walk = function()
			local Cfw, Crt = velchgbycfrvec()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(Crt * 3, 0, Cfw * -3) * angles(-1.5707963267948966 - Cfw, Crt, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--RightArm,1,0,0,1,0,0,0,1,0.5,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,-0,0,0,1,0,0,0,1,180,0,0,1,LeftArm,-1,0,0,1,-0,0,0,1,0.5,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1
		end
	})
end)

btn("nameless animations V6", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local raycastlegs=t.raycastlegs
	local velbycfrvec=t.velbycfrvec
	local velchgbycfrvec=t.velchgbycfrvec
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.3 + 0.1 * sin(sine * 2), -0.1) * angles(-0.5235987755982988 + 0.05235987755982989 * sin((sine + 1.5) * 2), 1.0471975511965976 + 0.08726646259971647 * sin((sine + 0.5) * 2), 0.5235987755982988), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 + 0.08726646259971647 * sin((sine + 0.6) * 2), 0, 3.141592653589793 + 0.2617993877991494 * sin((sine - 1.2) * 1)), deltaTime)
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 2), 0, 3.141592653589793), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.1 * sin(sine * 2) + rY, 0.1 * sin(sine * 2) - rY * 0.5) * angles(-0.6981317007977318 - 0.08726646259971647 * sin(sine * 2), 1.0471975511965976, 0.5235987755982988), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.6 + 0.1 * sin(sine * 2), 0) * angles(3.141592653589793 + 0.05235987755982989 * sin((sine + 0.5) * 2), -2.705260340591211 + 0.017453292519943295 * sin((sine + 1.5) * 2), -1.2217304763960306 + 0.05235987755982989 * sin((sine + 1.5) * 2)), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.1 * sin(sine * 2) + lY, 0.1 * sin(sine * 2) - lY * 0.5) * angles(-0.3490658503988659 - 0.08726646259971647 * sin(sine * 2), -1.0471975511965976, -0.5235987755982988), deltaTime)
			--RightArm,1,0,0,2,-30,3,1.5,2,0.3,0.1,0,2,60,5,0.5,2,-0.1,0,0,2,30,0,0,2,Head,0,0,0,2,-95,5,0.6,2,1,0,0,2,-0,0,0,1,0,0,0,2,180,15,-1.2,1,Torso,0,0,0,2,-90,5,0,2,0,0.1,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,-40,-5,0,2,-1,-0.1,0,2,60,0,0,2,0,0.1,0,2,30,0,0,2,Meshes/TrollFaceHeadAccessory_Handle,0.01043701171875,0,0,1,0,0,0,1,0.43610429763793945,0,0,1,0,0,0,1,-0.01102447509765625,0,0,1,0,0,0,1,LeftArm,-1,0,0,2,180,3,0.5,2,0.6,0.1,0,2,-155,1,1.5,2,0,0,0,2,-70,3,1.5,2,LeftLeg,-1,0,0,2,-20,-5,0,2,-1,-0.1,0,2,-60,0,0,2,0,0.1,0,2,-30,0,0,2
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.2 + 0.2 * sin(sine * 16), 0) * angles(-1.6580627893946132 + 0.04363323129985824 * sin(sine * 16) - fw * 0.15, 0.03490658503988659 * sin(sine * 8) + rt * 0.15, -3.141592653589793 - 0.08726646259971647 * sin((sine + 0.25) * 8) - rt * 0.1), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.8 + 0.4 * sin((sine + 0.125) * 8) + rY, -0.15 * fw + 0.4 * sin((sine + 10) * 8) * fw + rY * -0.5) * angles(1.3962634015954636 + 0.6981317007977318 * sin(sine * 8)*fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8)*rt, -1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.35 - 0.1 * sin(sine * 8), 0) * angles(0.5235987755982988 * sin(sine * 8)*fw, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.35 + 0.1 * sin(sine * 8), 0) * angles(-0.5235987755982988 * sin(sine * 8)*fw, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8)*fw, -0.5235987755982988 * sin(sine * 8)*fw), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.8 - 0.4 * sin((sine + 0.125) * 8) + lY, -0.15 * fw - 0.4 * sin((sine + 10) * 8) * fw + lY * -0.5) * angles(1.3962634015954636 - 0.6981317007977318 * sin(sine * 8)*fw, -1.5707963267948966 - 0.6981317007977318 * sin(sine * 8)*rt, 1.5707963267948966 + 0.2617993877991494 * sin(sine * 8)), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 10) * 16) + fw * 0.15, -0.08726646259971647 * sin(sine * 8) + rt * -0.1, 3.141592653589793 - 0.05235987755982989 * sin((sine + 5) * 8) - rt * 0.5), deltaTime)
			--Torso,0,0,0,8,-95,2.5,0,16,-0.2,0.2,0,16,0,5,0,8,0,0,0,8,-180,-5,0.25,8,RightArm,1,0,0,1,0,-30,0,8,0.35,0.1,0,8,90,-30,0,8,0,0,0,8,0,-30,0,8,RightLeg,1,0,0,8,80,40,0,8,-0.8,0.4,0.125,8,90,40,0,8,-0.15,0.4,10,8,-90,15,0,8,LeftLeg,-1,0,0,8,80,-40,0,8,-0.8,-0.4,0.125,8,-90,-40,0,8,-0.15,-0.4,10,8,90,15,0,8,Head,0,0,0,1,-90,2.5,10,16,1,0,0,1,-0,-5,0,8,0,0,0,1,180,-3,5,8,LeftArm,-1,0,0,1,0,30,0,8,0.35,-0.1,0,8,-90,-30,0,8,0,-0.4,0,8,0,-30,0,8
		end,
		jump = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.4835298641951802 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3962634015954636, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-85,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-80,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end,
		fall = function()
			local fw, rt = velbycfrvec()

			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.6580627893946132 + fw * 0.1, rt * -0.05, -3.141592653589793), deltaTime)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966), deltaTime)
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.7453292519943295, 0, -3.141592653589793 - rt), deltaTime)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966), deltaTime)
			--Torso,0,0,0,4,-95,0,0,4,0,0,0,4,0,0,0,4,0,0,0,4,-180,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,4,0.25,4,0,0,0,4,90,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-100,0,0.5,4,1,0,0,4,0,0,0.25,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,-4,0.25,4,0,0,0,4,-90,0,0,4
		end
	})

	addmode("q", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), -2.792526803190927, -0.6981317007977318), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.75, -0.2) * angles(2.705260340591211 - 0.08726646259971647 * sin((sine + 0.1) * 2), 2.792526803190927, 0.6981317007977318), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.9198621771937625 - 0.10471975511965978 * sin((sine + 0.3) * 2), 0, 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -2.45 - 0.05 * sin(sine * 2), 0) * angles(0.03490658503988659 * sin(sine * 2), 0, 3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), 1.3089969389957472, -0.9599310885968813), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.5707963267948966 - 0.03490658503988659 * sin(sine * 2), -1.3089969389957472, 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,2,155,-5,0.1,2,0.75,0,0,2,-160,0,0,2,-0.2,0,0,2,-40,0,0,2,RightArm,1,0,0,2,155,-5,0.1,2,0.75,0,0,2,160,0,0,2,-0.2,0,0,2,40,0,0,2,Head,0,0,0,2,-110,-6,0.3,2,1,0,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Torso,0,0,0,2,0,2,0,2,-2.45,-0.05,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,RightLeg,1,0,0,2,80,-2,0,2,-1,0,0,2,75,0,0,2,0,0,0,2,-55,0,0,2,LeftLeg,-1,0,0,2,90,-2,0,2,-1,0,0,2,-75,0,0,2,0,0,0,2,90,0,0,2
		end
	})
	addmode("e", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.4 + 0.1 * sin(sine * 2), 0.3 - 0.15 * sin(sine * 2)) * angles(-1.0471975511965976 - 0.12217304763960307 * sin(sine * 2), -1.3962634015954636, -0.6981317007977318), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.85 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.3962634015954636 + 0.03490658503988659 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.4 + 0.1 * sin(sine * 2), 0.2 - 0.15 * sin(sine * 2)) * angles(0.6108652381980153 - 0.12217304763960307 * sin(sine * 2), 1.2217304763960306, -0.7853981633974483), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.03490658503988659 * sin((sine + 0.6) * 2), 0.10471975511965978 + 0.06981317007977318 * sin(sine * 0.66), 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, 0.2 + 0.15 * sin((sine + 0.2) * 2), -0.7 + 0.1 * sin(sine * 2)) * angles(1.4835298641951802 + 0.03490658503988659 * sin(sine * 2), 1.4835298641951802, -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.75 + 0.1 * sin((sine + 0.2) * 2), -0.5) * angles(1.3962634015954636 - 0.03490658503988659 * sin(sine * 2), -1.6580627893946132, 0), deltaTime) 
			--LeftArm,-0.9,0,0,2,-60,-7,0,2,0.4,0.1,0,2,-80,0,0,2,0.3,-0.15,0,2,-40,0,0,2,Torso,0,0,0,2,-80,2,0,2,-1.85,-0.1,0.2,2,-5,0,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,35,-7,0,2,0.4,0.1,0,2,70,0,0,2,0.2,-0.15,0,2,-45,0,0,2,Head,0,0,0,2,-95,-2,0.6,2,1,0,0,2,6,4,0,0.66,0,0,0,2,180,20,0,0.66,RightLeg,1,0,0,2,85,2,0,2,0.2,0.15,0.2,2,85,0,0,2,-0.7,0.1,0,2,-90,0,0,2,LeftLeg,-1,0,0,2,80,-2,0,2,-0.75,0.1,0.2,2,-95,0,0,2,-0.5,0,0,2,0,0,0,2
		end
	})
	addmode("r", {
		idle = function()
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, 1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin(sine + 0.8), -0.1 + 0.2 * sin(sine * 2), 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0.08726646259971647 * sin(sine - 1), -3.141592653589793 + 0.2617993877991494 * sin(sine * 5)), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.1 * sin(sine * 7), 0.2 - 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 + 0.5235987755982988 * sin(sine * 7), -0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.9 - 0.2 * sin(sine * 2), 0) * angles(1.5707963267948966, -1.6580627893946132 - 0.17453292519943295 * sin(sine + 0.8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.1 * sin(sine * 7), 0.2 + 0.1 * sin(sine + 0.8), -0.25) * angles(1.5707963267948966 - 0.5235987755982988 * sin(sine * 7), 0.6981317007977318, 0.3490658503988659 * sin(sine * 7)), deltaTime) 
			--RightLeg,1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,95,-10,0.8,1,0,0,0,1,-90,0,0,1,Torso,0,0.3,0.8,1,-90,0,0,1,-0.1,0.2,0,2,0,0,0,1,0,0,0,1,-180,0,0,1,Head,0,0,0,1,-90,5,-0.5,2,1,0,0,1,0,5,-1,1,0,0,0,1,-180,15,0,5,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1,0.1,0,7,90,30,0,7,0.2,-0.1,0.8,1,-40,0,0,1,-0.25,0,0,1,0,20,0,7,LeftLeg,-1,0,0,1,90,0,0,1,-0.9,-0.2,0,2,-95,-10,0.8,1,0,0,0,1,90,0,0,1,RightArm,1,0.1,0,7,90,-30,0,7,0.2,0.1,0.8,1,40,0,0,1,-0.25,0,0,1,-0,20,0,7
		end
	})         
	addmode("t", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(1.5707963267948966, -1.6580627893946132 + 0.08726646259971647 * sin((sine - 0.3) * 4), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 + 0.15 * sin((sine - 0.4) * 4), 1.42, 0) * angles(1.5707963267948966, 1.4835298641951802 - 0.3490658503988659 * sin((sine - 0.4) * 4), 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.4835298641951802, 0.04363323129985824 - 0.08726646259971647 * sin((sine + 0.1) * 4), -3.141592653589793 + 0.04363323129985824 * sin(sine * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.1 * sin(sine * 4), 0, 0) * angles(-1.5707963267948966, -0.08726646259971647 + 0.08726646259971647 * sin(sine * 4), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + 0.1 * sin(sine * 4), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.08726646259971647 * sin(sine * 4), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 - 0.02 * sin(sine * 4), -0.925 - 0.07 * sin(sine * 4), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.08726646259971647 * sin(sine * 4), 1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,4,90,0,0,4,0.5,0,0,4,-95,5,-0.3,4,0,0,0,4,90,0,0,4,RightArm,1,0.15,-0.4,4,90,0,0,4,1.42,0,0,4,85,-20,-0.4,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-85,0,0,4,1,0,0,4,2.5,-5,0.1,4,0,0,0,4,-180,2.5,0,4,Torso,0,0.1,0,4,-90,0,0,4,0,0,0,4,-5,5,0,4,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,90,0,0,4,-1.1,0.1,0,4,90,5,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,-0.02,0,4,90,0,0,4,-0.925,-0.07,0,4,-100,5,0,4,0,0,0,4,90,0,0,4
		end
	})
	addmode("y", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(-1.7453292519943295, 0.17453292519943295 - 0.04363323129985824 * sin(sine * 2), -1.4835298641951802), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.9000000953674316 - 0.1 * sin(sine * 2), 0) * angles(-1.3962634015954636, 1.3962634015954636, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1.0000001192092896 - 0.1 * sin(sine * 2), 0) * angles(-1.5707963267948966, -1.3962634015954636, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-2.0943951023931953 + 0.08726646259971647 * sin((sine - 1) * 2), -0.08726646259971647, 2.792526803190927), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 1.2000000476837158, 0) * angles(2.6179938779914944 + 0.08726646259971647 * sin((sine - 1) * 2), 0.6981317007977318, -1.3962634015954636), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin(sine * 2), 0) * angles(-1.6580627893946132, 0.08726646259971647, 3.0543261909900767), deltaTime) 
			--LeftArm,-1.5,0,0,2,-100,0,0,2,0.5,0,0,2,10,-2.5,0,2,0,0,0,2,-85,0,0,2,RightLeg,1,0,0,2,-80,0,0,2,-0.9000000953674316,-0.1,0,2,80,0,0,2,0,0,0,2,90,0,0,2,LeftLeg,-1,0,0,2,-90,0,0,2,-1.0000001192092896,-0.1,0,2,-80,0,0,2,0,0,0,2,-90,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-120,5,-1,2,1,0,0,2,-5,0,0,2,0,0,0,2,160,0,0,2,RightArm,1,0,0,2,150,5,-1,2,1.2000000476837158,0,0,2,40,0,0,2,0,0,0,2,-80,0,0,2,Torso,0,0,0,2,-95,0,0,2,0,0.1,0,2,5,0,0,2,0,0,0,2,175,0,0,2
		end
	})        
	addmode("u", {
		idle = function()
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.75 + 0.25 * sin(sine * 2), 0) * angles(-1.5707963267948966, 0, 3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1.5 - 0.1 * sin((sine + 0.2) * 2), 0) * angles(-1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.4) * 2), 0, 3.141592653589793 + 0.3490658503988659 * sin(sine * 0.66)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.5 - 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), 1 * sin((sine + 0.95) * 2.2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(0.5 + 1 * sin((sine + 0.2) * 2.2), -0.75 - 0.25 * sin(sine * 2), -1 * sin((sine + 0.95) * 2.2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(-0.5 - 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), -1.85 * sin((sine + 0.75) * 2)) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(0.5 + 1.85 * sin(sine * 2), 0.8 - 0.5 * sin(sine * 2), 1.85 * sin((sine + 0.75) * 2)) * angles(0, -1.5707963267948966, 0), deltaTime) 
			--Torso,0,0,0,2,-90,0,0,2,0.75,0.25,0,2,-0,0,0,2,0,0,0,2,180,0,0,2,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,Head,0,0,0,2,-90,-5,0.4,2,1.5,-0.1,0.2,2,-0,0,0,2,0,0,0,2,180,20,0,0.66,LeftLeg,-0.5,-1,0.2,2.2,-0,0,0,2,-0.75,-0.25,0,2,-90,0,0,2,0,1,0.95,2.2,0,0,0,2,RightLeg,0.5,1,0.2,2.2,0,0,0,2,-0.75,-0.25,0,2,90,0,0,2,0,-1,0.95,2.2,0,0,0,2,RightArm,-0.5,-1.85,0,2,0,0,0,2,0.8,-0.5,0,2,90,0,0,2,0,-1.85,0.75,2,0,0,0,2,LeftArm,0.5,1.85,0,2,-0,0,0,2,0.8,-0.5,0,2,-90,0,0,2,0,1.85,0.75,2,0,0,0,2
		end
	})
	addmode("i", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), -0.5235987755982988, 1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 + 0.1 * sin((sine + 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 4.5), -1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.5 * sin((sine + 0.17777777777777778) * 9), 0) * angles(-1.3962634015954636 - 0.03490658503988659 * sin((sine + 0.17777777777777778) * 9), -0.05235987755982989 * sin(sine * 4.5), 3.141592653589793 + 0.03490658503988659 * sin(sine * 4.5)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1 + 0.2 * sin(sine * 9), 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin(sine * 9), 0.08726646259971647 * sin(sine * 4.5), 3.141592653589793 - 0.06981317007977318 * sin(sine * 4.5)), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 0.5 + 0.1 * sin((sine - 0.4444444444444444) * 9), 0) * angles(2.9670597283903604 + 0.17453292519943295 * sin((sine - 0.17777777777777778) * 9), 0.5235987755982988, -1.5707963267948966 + 0.17453292519943295 * sin(sine * 4.5)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 + 0.1 * sin((sine - 0.26666666666666666) * 4.5), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 4.5), 1.5707963267948966 + 0.03490658503988659 * sin(sine * 4.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,-30,0,0,4.5,0,0,0,4.5,90,10,0,4.5,LeftLeg,-1,0,0,4.5,100,-60,0,4.5,-0.5,0.1,0.26666666666666666,4.5,-90,2,0,4.5,-0.5,0,0,4.5,90,0,0,4.5,Torso,0,0,0,4.5,-80,-2,0.17777777777777778,9,-0.5,0.5,0.17777777777777778,9,-0,-3,0,4.5,0,0,0,4.5,180,2,0,4.5,Head,0,0,0,4.5,-90,5,0,9,1,0.2,0,9,-0,5,0,4.5,0,0,0,4.5,180,-4,0,4.5,RightArm,0.5,0,0,4.5,170,10,-0.17777777777777778,9,0.5,0.1,-0.4444444444444444,9,30,0,0,4.5,0,0,0,4.5,-90,10,0,4.5,RightLeg,1,0,0,4.5,100,60,0,4.5,-0.5,0.1,-0.26666666666666666,4.5,90,2,0,4.5,-0.5,0,0,4.5,-90,0,0,4.5
		end,
	})
	addmode("o", {
		idle = function()
			local rY, lY = raycastlegs()

			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, lY * -0.5) * angles(-1.8325957145940461 - 0.08726646259971647 * sin(sine * 2), -1.4835298641951802, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0.09 * sin(sine * 2)) * angles(-1.3962634015954636 + 0.08726646259971647 * sin(sine * 2), -0.08726646259971647, 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.9670597283903604 + 0.08726646259971647 * sin(sine * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1.1 + rY, rY * -0.5) * angles(-1.7453292519943295 - 0.08726646259971647 * sin(sine * 2), 1.5707963267948966, 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.2217304763960306 - 0.08726646259971647 * sin((sine + 0.3) * 2), -0.2617993877991494 - 0.08726646259971647 * sin(sine * 2), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.8797932657906435 + 0.08726646259971647 * sin(sine * 1), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			--LeftLeg,-1,0,0,2,-105,-5,0,2,-1,0,0,2,-85,0,0,2,0,0,0,2,-90,0,0.75,2,Torso,0,0,0,2,-80,5,0,2,0,0,0,2,-5,0,0,2,0,0.09,0,2,180,0,0,2,LeftArm,-1,0,0,2,170,5,0,1,0.5,0,0,2,-90,5,0.6,1,0,0,0,2,90,0,0,2,RightLeg,1,0,0,2,-100,-5,0,2,-1.1,0,0,2,90,0,0,2,0,0,0,2,90,0,0.75,2,Head,0,0,0,2,-70,-5,0.3,2,1,0,0,2,-15,-5,0,2,0,0,0,2,180,0,0,2,RightArm,1,0,0,2,165,5,0,1,0.5,0,0,2,90,-5,0.6,1,0,0,0,2,-90,0,0,2
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			local rY, lY = raycastlegs()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin(sine * 16), 0, 3.141592653589793 + 0.08726646259971647 * sin(sine * 8) - rt), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.3 * sin((sine + 0.15) * 8) + rY, rY * -0.5) * angles(-1.5707963267948966 - 0.6981317007977318 * sin(sine * 8) * fw, 1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), 1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, 1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.08726646259971647 * sin((sine - 0.05) * 16), -1.5707963267948966 + 0.08726646259971647 * sin(sine * 8) - rt/3, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.1 * sin((sine + 0.1) * 16), 0) * angles(-1.5707963267948966, 0, 3.141592653589793 - 0.08726646259971647 * sin(sine * 8)), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + 0.3 * sin((sine + 0.15) * 8) + lY, lY * -0.5) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * fw, -1.5707963267948966 + 0.6981317007977318 * sin(sine * 8) * rt, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,2.5,0,16,1,0,0,8,-0,0,0,8,0,0,0,8,180,5,0,8,RightLeg,1,0,0,8,-90,-40,0,8,-1,-0.3,0.15,8,90,40,0,8,0,0,0,8,90,0,0,8,RightArm,1,0,0,8,0,5,-0.05,16,0.5,0,0,8,90,5,0,8,0,0,0,8,90,0,0,8,LeftArm,-1,0,0,8,0,5,-0.05,16,0.5,0,0,8,-90,5,0,8,0,0,0,8,-90,0,0,8,Torso,0,0,0,8,-90,0,0,8,0,0.1,0.1,16,-0,0,0,8,0,0,0,8,180,-5,0,8,LeftLeg,-1,0,0,8,90,40,0,8,-1,0.3,0.15,8,-90,40,0,8,0,0,0,8,90,0,0,8
		end
	})
	addmode("p", {
		idle = function()
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, 1.5707963267948966, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, -1.5707963267948966, 0), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * angles(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
			--RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1
		end
	})
	addmode("f", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin((sine + 0.2) * 0.5), -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1), 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1), -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1), 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(-3.0543261909900767 - 0.17453292519943295 * sin((sine + 1.5) * 1) - fw * 0.1, -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.6) * 1) + rt * 0.2, -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(3.141592653589793 - 0.08726646259971647 * sin(sine * 1), 0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.3) * 1), -1.9198621771937625 + 0.08726646259971647 * sin((sine + 1) * 1)), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.3089969389957472 - 0.2617993877991494 * sin((sine + 1.2) * 1) + fw * 0.1, 0.08726646259971647 * sin((sine + 0.2) * 0.5) - rt * 0.2, -2.9670597283903604), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 5 - 0.5 * sin((sine - 0.2) * 1), 0.2 * sin((sine - 1.2) * 1)) * angles(-0.08726646259971647 + 0.17453292519943295 * sin((sine + 1.2) * 1) - fw * 0.2, 0.08726646259971647 * sin(sine * 0.5), 3.141592653589793 - rt * 0.2), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(1.3962634015954636 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, -1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(1.9198621771937625 + 0.12217304763960307 * sin((sine + 1.5) * 1) - fw * 0.2, 1.2217304763960306 + 0.08726646259971647 * sin((sine + 0.2) * 0.5), -1.5707963267948966), deltaTime) 
			--LeftArm,-1,0,0,1,-175,-10,1.5,1,0.5,0,0,1,-90,5,0.6,1,0,0,0,1,-90,0,0,1,RightArm,1,0,0,1,180,-5,0,1,0.5,0,0,1,20,5,0.3,1,0,0,0,1,-110,5,1,1,Head,0,0,0,1,-75,-15,1.2,1,1,0,0,1,-0,5,0.2,0.5,0,0,0,1,-170,0,0,1,Torso,0,0,0,1,-5,10,1.2,1,5,-0.5,-0.2,1,-0,5,0,0.5,0,0.2,-1.2,1,180,0,0,1,LeftLeg,-1,0,0,1,80,7,1.5,1,-1,0,0,1,-70,5,0.2,0.5,0,0,0,1,90,0,0,1,RightLeg,1,0,0,1,110,7,1.5,1,-1,0,0,1,70,5,0.2,0.5,0,0,0,1,-90,0,0,1
		end
	})
	addmode("g", {
		idle = function()
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * angles(1.5707963267948966, -1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0.3 * sin((sine + 0.4) * 8), 0, 0) * angles(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.061086523819801536 * sin((sine + 0.125) * 16), -0.3839724354387525 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, 1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * angles(1.5707963267948966, -1.7453292519943295 + 0.6981317007977318 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * angles(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 1.0471975511965976 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
			--LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,60,0,8,0,0.5,0.25,4,90,40,0.25,4,Torso,0,0.3,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,Head,0,0,0,8,-90,3.5,0.125,16,1,0,0,8,0,-22,0,8,0,0,0,8,-180,0,0,1.1,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,40,0,8,0,0,0,8,-90,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,40,0,8,0,0,0,8,90,0,0,8,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,60,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4
		end
	})
	addmode("h", {
		idle = function()
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * angles(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * angles(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16), 0) * angles(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * angles(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
			--Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
		end
	})
	addmode("j", {
		idle = function()
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-0.8, -1, -0.1) * angles(0.17453292519943295, -0.6981317007977318, 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.2, 0.5, 0) * angles(-0.3490658503988659 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 0.6981317007977318 + 0.08726646259971647 * sin((sine + 0.1) * 4)), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1.1, -1, 0) * angles(1.5707963267948966, 1.7453292519943295, -1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.1) * 4), 0, 2.792526803190927), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.7 + 0.5 * sin(sine * 4), 0.15 * sin(sine * 4)) * angles(3.3161255787892263 + 0.17453292519943295 * sin(sine * 4), 0, 3.6651914291880923), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 + 0.4 * sin(sine * 4), 0.6 + 0.1 * sin(sine * 4), 0.4 - 0.25 * sin(sine * 4)) * angles(2.9670597283903604, 2.2689280275926285 - 0.17453292519943295 * sin(sine * 4), -1.4835298641951802 - 0.17453292519943295 * sin(sine * 4)), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1,0,0,0,1,0.10000000149011612,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,LeftLeg,-0.8,0,0,4,10,0,0,4,-1,0,0,4,-40,0,0,4,-0.1,0,0,4,0,0,0,4,LeftArm,-1.2,0,0,4,-20,5,0.1,4,0.5,0,0,4,0,0,0,4,0,0,0,4,40,5,0.1,4,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1,-15,0,0,1,-0.2433757781982422,0,0,1,0,0,0,1,-0.2657628059387207,0,0,1,0,0,0,1,RightLeg,1.1,0,0,4,90,0,0,4,-1,0,0,4,100,0,0,4,0,0,0,4,-90,0,0,4,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,DevAwardsAdurite_Handle,0,0,0,1,0,0,0,1,-0.25,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1,0,0,0,1,-0.6500000953674316,0,0,1,0,0,0,1,0.19972775876522064,0,0,1,0,0,0,1,Head,0,0,0,4,-90,5,0.1,4,1,0,0,4,-0,0,0,4,0,0,0,4,160,0,0,4,Torso,0,0,0,4,190,10,0,4,-1.70,0.5,0,4,-0,0,0,4,0,0.15,0,4,210,0,0,4,RightArm,0.8,0.4,0,4,170,0,0,4,0.6,0.1,0,4,130,-10,0,4,0.4,-0.25,0,4,-85,-10,0,4
		end
	})
	addmode("k", {
		idle = function()
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.6580627893946132 - 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), -0.08726646259971647 * sin((sine + 0.2) * 6), 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 - 1.0471975511965976 * sin(sine * 6), -1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -0.5 - 0.5 * sin((sine + 0.39999999999999997) * 12), -0.5) * angles(1.7453292519943295 + 1.0471975511965976 * sin(sine * 6), 1.5707963267948966 + 0.1308996938995747 * sin(sine * 6), -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.5 + 0.3 * sin((sine + 0.16666666666666666) * 12), 0) * angles(-1.3962634015954636 + 0.08726646259971647 * sin((sine + 0.3333333333333333) * 12), 0.08726646259971647 * sin((sine + 0.06666666666666667) * 6), 3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.8 - 0.1 * sin(sine * 6), 0.5 + 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), -0.17453292519943295, 1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.8 - 0.1 * sin(sine * 6), 0.5 - 0.1 * sin(sine * 6), -0.2) * angles(3.141592653589793 - 0.17453292519943295 * sin((sine + 0.39999999999999997) * 12), 0.17453292519943295, -1.5707963267948966), deltaTime) 
			--GalaxyBeautifulHair_Handle,-0.15000000596046448,0,0,1.5,0,0,0,1.5,0.10000000149011612,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Head,0,0,0,6,-95,-5,0.3333333333333333,12,1,0,0,6,-0,-5,0.2,6,0,0,0,6,180,0,0,6,ValkyrieHelm_Handle,8.658389560878277e-09,0,0,1.5,-15,0,0,1.5,-0.2433757781982422,0,0,1.5,0,0,0,1.5,-0.2657628059387207,0,0,1.5,0,0,0,1.5,SilverthornAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,BlackIronAntlers_Handle,8.658389560878277e-09,0,0,1.5,0,0,0,1.5,-0.6500000953674316,0,0,1.5,0,0,0,1.5,0.19972775876522064,0,0,1.5,0,0,0,1.5,Fedora_Handle,8.657480066176504e-09,0,0,1.5,-6,0,0,1.5,-0.15052366256713867,0,0,1.5,0,0,0,1.5,-0.010221302509307861,0,0,1.5,0,0,0,1.5,LeftLeg,-1,0,0,6,100,-60,0,6,-0.5,-0.5,0.39999999999999997,12,-90,7.5,0,6,-0.5,0,0,6,90,0,0,6,EyelessSmileHead_Handle,-0.00043487548828125,0,0,1.5,180,0,0,1.5,0.6000361442565918,0,0,1.5,0,0,0,1.5,0.0003204345703125,0,0,1.5,180,0,0,1.5,RightLeg,1,0,0,6,100,60,0,6,-0.5,-0.5,0.39999999999999997,12,90,7.5,0,6,-0.5,0,0,6,-90,0,0,6,DevAwardsAdurite_Handle,0,0,0,1.5,0,0,0,1.5,-0.25,0,0,1.5,0,0,0,1.5,0,0,0,1.5,0,0,0,1.5,Torso,0,0,0,6,-80,5,0.3333333333333333,12,-0.5,0.3,0.16666666666666666,12,-0,5,0.06666666666666667,6,0,0,0,6,180,0,0,6,LeftArm,-0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,0.1,0,6,-10,0,0,6,-0.2,0,0,6,90,0,0,6,RightArm,0.8,-0.1,0,6,180,-10,0.39999999999999997,12,0.5,-0.1,0,6,10,0,0,6,-0.2,0,0,6,-90,0,0,6
		end
	})
	addmode("l", {
		idle = function()
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 1), -0.17453292519943295 * sin((sine + 0.1) * 5), -3.141592653589793), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.2 * sin(sine * 5), -0.2 + 0.2 * sin(sine * 5)) * angles(2.181661564992912 - 0.8726646259971648 * sin(sine * 5), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), -1.5707963267948966), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * angles(1.0471975511965976 + 0.03490658503988659 * sin(sine * 10), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 5), 1.5707963267948966), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.2 * sin(sine * 5), -0.2 - 0.2 * sin(sine * 5)) * angles(2.181661564992912 + 0.8726646259971648 * sin(sine * 5), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 5), 1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.15 + 0.4 * sin((sine - 0.5) * 10), 0) * angles(-1.4835298641951802, 0.17453292519943295 * sin(sine * 5), -3.141592653589793), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * angles(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,5,-90,2.5,0.1,1,1,0,0,4,0,-10,0.1,5,0,0,0,4,-180,0,0,4,RightLeg,1,0,0,4,125,-50,0,5,-1,0.2,0,5,110,-20,0,5,-0.2,0.2,0,5,-90,0,0,4,RightArm,0.7,0,0,4,60,2,0,10,0.8,0,0,4,120,6,0.1,5,0,0,0,4,90,0,0,4,LeftLeg,-1,0,0,4,125,50,0,5,-1,-0.2,0,5,-110,-20,0,5,-0.2,-0.2,0,5,90,0,0,4,Torso,0,0,0,4,-85,0,0,4,0.15,0.4,-0.5,10,0,10,0,5,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4
		end
	})
end)

btn("goofy trolus (goofy)", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local velbycfrvec=t.velbycfrvec
	local raycastlegs=t.raycastlegs
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")
	addmode("default", {
		idle = function()
			local rY, lY = raycastlegs()

			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(0.6981317007977318 * sin((sine + 0.5) * 4), 1.5707963267948966 - 0.3490658503988659 * sin(sine * 4), 0), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(0.6981317007977318 * sin((sine + 0.5) * 4), -1.5707963267948966 + 0.3490658503988659 * sin(sine * 4), 0), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + rY, 0) * angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), 1.6580627893946132, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -0.2 + 0.2 * sin((sine + 1) * 8), 0) * angles(-1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 0, 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 + lY, 0) * angles(1.5707963267948966 - 1.0471975511965976 * sin(sine * 4), -1.6580627893946132, 1.5707963267948966), deltaTime) 
			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 - 0.8726646259971648 * sin((sine + 0.25) * 4), 0, 3.141592653589793), deltaTime) 
			--RightArm,1,0,0,4,0,40,0.5,4,0.5,0,0,4,90,-20,0,4,0,0,0,4,0,0,0,4,LeftArm,-1,0,0,4,-0,40,0.5,4,0.5,0,0,4,-90,20,0,4,0,0,0,4,0,0,0,4,RightLeg,1,0,0,4,90,-60,0,4,-1,0,0,4,95,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,40,0,4,-0.2,0.2,1,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-60,0,4,-1,0,0,4,-95,0,0,4,0,0,0,4,90,0,0,4,Head,0,0,0,4,-90,-50,0.25,4,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4
		end,
		walk = function()
			local fw, rt = velbycfrvec()

			Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * angles(-1.5707963267948966 + 0.5235987755982988 * sin((sine + 0.45) * 8), 0, 3.141592653589793), deltaTime) 
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5, 0) * angles(2.0943951023931953 - 1.7453292519943295 * sin((sine - 0.1) * 4), 1.9198621771937625, -1.5707963267948966), deltaTime) 
			RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.25 + 0.5 * sin((sine - 0.125) * 8), 0) * angles(-1.5707963267948966 + 0.17453292519943295 * sin(sine * 8), 0, 3.141592653589793), deltaTime) 
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 1 * sin(sine * 4), 0) * angles(1.5707963267948966 - 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, -1.5707963267948966 - 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, 1.5707963267948966), deltaTime) 
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 1 * sin(sine * 4), 0) * angles(1.5707963267948966 + 1.2217304763960306 * sin((sine - 0.15) * 4) * fw, 1.5707963267948966 + 0.6108652381980153 * sin((sine - 0.15) * 4) * rt, -1.5707963267948966), deltaTime) 
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 0.5, 0) * angles(2.0943951023931953 + 1.7453292519943295 * sin((sine - 0.1) * 4), -1.7453292519943295, 1.5707963267948966), deltaTime) 
			--Head,0,0,0,4,-90,30,0.45,8,1,0,0,4,-0,0,0,4,0,0,0,4,180,0,0,4,CPlusPlusTextbook_Handle,8.658389560878277e-09,0,0,4,0,0,0,4,-0.25,0,0,4,0,0,0,4,-0.0002722442150115967,0,0,4,0,0,0,4,RightArm,1,0,0,4,120,-100,-0.1,4,0.5,0,0,4,110,0,0,4,0,0,0,4,-90,0,0,4,Torso,0,0,0,4,-90,10,0,8,0.25,0.5,-0.125,8,-0,0,0,4,0,0,0,4,180,0,0,4,LeftLeg,-1,0,0,4,90,-70,-0.15,4,-1,-1,0,4,-90,-35,-0.15,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,90,70,-0.15,4,-1,1,0,4,90,35,-0.15,4,0,0,0,4,-90,0,0,4,LeftArm,-1,0,0,4,120,100,-0.1,4,0.5,0,0,4,-100,0,0,4,0,0,0,4,90,0,0,4
		end
	})
end)

btn("good cop bad cop animations", function()
	local t=reanimate()
	if type(t)~="table" then return end
	local velbycfrvec=t.velbycfrvec
	local raycastlegs=t.raycastlegs
	local addmode=t.addmode
	local getJoint=t.getJoint
	local RootJoint=getJoint("RootJoint")
	local RightShoulder=getJoint("Right Shoulder")
	local LeftShoulder=getJoint("Left Shoulder")
	local RightHip=getJoint("Right Hip")
	local LeftHip=getJoint("Left Hip")
	local Neck=getJoint("Neck")

	local ROOTC0 = angles(rad(-90), 0, rad(180))
	local NECKC0 = cf(0, 1, 0) * angles(rad(-90), 0, rad(180))
	local RIGHTSHOULDERC0 = cf(-0.5, 0, 0) * angles(0, rad(90), 0)
	local LEFTSHOULDERC0 = cf(0.5, 0, 0) * angles(0, rad(-90), 0)

	local Animation_Speed = 0

	--bruh yeah shackluster had a lot of math.rad(0) instead of just 0
	--and a lot of multyplying by angles(0, 0, 0)
	--and he had ArtificialHB
	--and he had a sine value increasing by 2/3 each frame
	--and a lot of variables with names saying other things
	--and he had both C0 and C1 lerps for the same animations
	local function C1lerps(iswalking)
		Animation_Speed = deltaTime / 0.05
		local sine = sine * 40
		if iswalking then
			RootJoint.C1 = RootJoint.C1:Lerp(ROOTC0 * cf(0, 0, 0.05 * cos(sine / (2.4))), 2 * 1.25 / Animation_Speed)
			Neck.C1 = Neck.C1:Lerp(cf(0, -0.5, 0) * angles(rad(-90), 0, rad(180)), 0.2 * 1.25 / Animation_Speed)
			RightHip.C1 = RightHip.C1:Lerp(cf(0.5, 0.875 - 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 9.6), 0) * angles(0, rad(90), 0) * angles(0, 0, rad(35 * cos(sine / 4.8))), 0.6 / Animation_Speed)
			LeftHip.C1 = LeftHip.C1:Lerp(cf(-0.5, 0.875 + 0.125 * sin(sine / 4.8) - 0.15 * cos(sine / 9.6), 0) * angles(0, rad(-90), 0) * angles(0, 0, rad(35 * cos(sine / 4.8))), 0.6 / Animation_Speed)
		else
			RootJoint.C1 = RootJoint.C1:Lerp(ROOTC0, 0.2 / Animation_Speed)
			Neck.C1 = Neck.C1:Lerp(cf(0, -0.5, 0) * angles(rad(-90), 0, rad(180)), 0.2 / Animation_Speed)
			RightHip.C1 = RightHip.C1:Lerp(cf(0.5, 1, 0) * angles(0, rad(90), 0), 0.7 / Animation_Speed)
			LeftHip.C1 = LeftHip.C1:Lerp(cf(-0.5, 1, 0) * angles(0, rad(-90), 0), 0.7 / Animation_Speed)

		end
	end

	local function jumplerps()
		local sine = sine * 40
		C1lerps()

		RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0, 0.2 / Animation_Speed)
		Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(-20), 0, 0), 0.2 / Animation_Speed)
		RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(rad(-40), 0, rad(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(rad(-40), 0, rad(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, -0.3) * angles(0, rad(90), 0) * angles(rad(-5), 0, rad(-20)), 0.2 / Animation_Speed)
		LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, -0.3) * angles(0, rad(-90), 0) * angles(rad(-5), 0, rad(20)), 0.2 / Animation_Speed)
	end
	local function falllerps()
		local sine = sine * 40
		C1lerps()

		RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0, 0.2 / Animation_Speed)
		Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(20), 0, 0), 0.2 / Animation_Speed)
		RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * angles(0, 0, rad(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
		LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * angles(0, 0, rad(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
		RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(90), 0) * angles(0, 0, rad(20)), 0.2 / Animation_Speed)
		LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-90), 0) * angles(0, 0, rad(10)), 0.2 / Animation_Speed)
	end

	addmode("default", {
		idle = function()
			local sine = sine * 40
			C1lerps()

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0.05 * cos(sine / 12), 0, 0 + 0.05 * sin(sine / 12)), 0.15 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(15 - 2.5 * sin(sine / 12)), 0, rad(-25)), 1 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.25, 0.5, 0.3) * angles(rad(-45), 0, rad(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.25, 0.5, 0.3) * angles(rad(-40), 0, rad(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01) * angles(0, rad(85), 0) * angles(rad(-1), 0, 0), 0.15 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1 + 0.05 * cos(sine / 12), -1 - 0.05 * sin(sine / 12), -0.01) * angles(0, rad(-85), 0) * angles(rad(-1), 0, 0), 0.15 / Animation_Speed)
		end,
		walk = function()
			local sine = sine * 40
			C1lerps(true)

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, -0.05), 0.15 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(5), 0, 0), 0.15 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3) * angles(rad(-45), 0, rad(-45)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.25, 0.5 + 0.05 * sin(sine / (2.4)), 0.3) * angles(rad(-40), 0, rad(45)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(80), 0) * angles(0, 0, rad(-5)), 2 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-80), 0) * angles(0, 0, rad(5)), 2 / Animation_Speed)
		end,
		jump = jumplerps,
		fall = falllerps
	})
	addmode("f", {
		idle = function()
			local sine = sine * 40
			C1lerps()

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, 0 + 0.05 * cos(sine / 12)), 1 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(-5 - 2.5 * cos(sine / 12)), 0, rad(25)), 1 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9, 0.5 + 0.05 * sin(sine / 12), -0.5) * angles(rad(100), 0, rad(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.25 + 0.05 * sin(sine / 12), -0.35) * angles(rad(70), 0, rad(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(80), 0), 1 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.05 * cos(sine / 12), -0.01) * angles(0, rad(-80), 0), 1 / Animation_Speed)
		end,
		walk = function()
			local sine = sine * 40
			C1lerps(true)

			RootJoint.C0 = RootJoint.C0:Lerp(ROOTC0 * cf(0, 0, -0.05), 0.15 / Animation_Speed)
			Neck.C0 = Neck.C0:Lerp(NECKC0 * cf(0, 0, 0 + ((1) - 1)) * angles(rad(5), 0, 0), 0.15 / Animation_Speed)
			RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9, 0.5 + 0.05 * sin(sine / (2.4)), -0.5) * angles(rad(100), 0, rad(-70)) * RIGHTSHOULDERC0, 1 / Animation_Speed)
			LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9, 0.25 + 0.05 * sin(sine / (2.4)), -0.35) * angles(rad(70), 0, rad(80)) * LEFTSHOULDERC0, 1 / Animation_Speed)
			RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * angles(0, rad(80), 0) * angles(0, 0, rad(-5)), 2 / Animation_Speed)
			LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * angles(0, rad(-80), 0) * angles(0, 0, rad(5)), 2 / Animation_Speed)
		end,
		jump = jumplerps,
		fall = falllerps
	})
end)
lbl("original by shackluster")
lbl("the classics never die")

btn("empty reanimate (no animations)", reanimate)

lbl("SETTINGS (REANIMATE TO APPLY)")

local flinglbl=lbl("fling mode: auto")
btn("change (u need a tool to fling btw)",function()
	if flingmode==false then
		flingmode=0
		flinglbl.Text="fling mode: simple"
	elseif flingmode==0 then
		flingmode=1
		flinglbl.Text="fling mode: prediction"
	elseif flingmode==1 then
		flingmode=2
		flinglbl.Text="fling mode: auto"
	elseif flingmode==2 then
		flingmode=false
		flinglbl.Text="fling mode: off"
	end
end)
local allowshiftlocklbl=lbl("allow shiftlock: yes")
btn("change",function()
	allowshiftlock=not allowshiftlock
	allowshiftlocklbl.Text=(allowshiftlock and "allow shiftlock: yes") or "allow shiftlock: no"
end)
local ctrltplbl=lbl("ctrl click tp: yes")
btn("change",function()
	ctrltp=not ctrltp
	ctrltplbl.Text=(ctrltp and "ctrl click tp: yes") or "ctrl click tp: no"
end)
local discharscriptslbl=lbl("disable character scripts: yes")
btn("change",function()
	discharscripts=not discharscripts
	discharscriptslbl.Text=(discharscripts and "disable character scripts: yes") or "disable character scripts: no"
end)
local removebpartslbl=lbl("remove body parts: yes")
btn("change",function()
	removebparts=not removebparts
	removebpartslbl.Text=(removebparts and "remove body parts: yes") or "remove body parts: no"
end)

local iscg,_=pcall(function()
	i9.Parent=cg
end)
if not iscg then
	local t=i6.Text
	i6.Text="PLAYERGUI MODE"
	i9.Parent=pg
	twait(3)
	i6.Text=t
end
