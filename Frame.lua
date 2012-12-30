-- Author      : Chris
-- Create Date : 12/29/2012 12:21:54 AM

SLASH_IGD1 = '/igd'

local function handler(msg, editbox)
	if msg == 'show' then
		if not frmMain:IsShown() then
			frmMain:Show();
		else
			print("InGame Database: Window is already shown.")
		end
	elseif msg == 'hide' then
		if frmMain:IsShown() then
			frmMain:Hide();
		else
			print("InGame Database: Window is already hidden.")
		end
	else
		print("InGame Database: Unknown Command")
	end
end

SlashCmdList["IGD"] = handler



function btnClose_OnClick()
	frmMain:Hide()
end

function search(array, key)
	local low = 1
	local high = #array
	local mid = 0

	while low <= high do
		mid = math.floor((low + high) / 2)
		if array[mid] > key then high = mid - 1
		elseif array[mid] < key then low = mid + 1
		else return mid
		end
	end
end