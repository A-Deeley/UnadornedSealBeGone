--create frame and register it to the BAG_UPDATE event
local frame = CreateFrame("FRAME", "SealBGone")
frame:RegisterEvent("BAG_UPDATE")

--set function to check items in bag
local function onBagUpdateCheckItems(self, event, ...)
    for bag=0,4 do
        for slot=0,GetContainerNumSlots(bag) do
            if GetContainerItemID(bag,slot) == 12219 then
                message("You looted an Unadorned Seal of Ascension (item ID 12219)")
                --PickupContainerItem(bag,slot)
                --DeleteCursorItem()
            end
        end
    end
end

--Assign the function to run when the frame receives the event
frame:SetScript("OnEvent", onBagUpdateCheckItems)