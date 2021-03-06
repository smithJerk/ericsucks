i----------------------------------------------------------------------------
require( GetScriptDirectory().."/utility" ) 

local ItemsToBuy = 
{ 
	"item_tango"
    "item_flask"
	"item_stout_shield"
    "item_power_treads"
	"item_desolator"
    "item_black_king_bar"
    "item_javelin"
    "item_monkey_king_bar"
    "item_maelstrom"
    "item_basher"
    "item_mjollnir"
	"item_abyssal_balde"
    "item_moon_shard" -- consume it
}

utility.checkItemBuild(ItemsToBuy)

function ItemPurchaseThink()
	utility.ItemPurchase(ItemsToBuy)
end

----------------------------------------------------------------------------
  function SellExtraItem() --let’s sell the redundant stuffs
      if ( GameTime () > 10*60 )
      then 
         SellSpecifiedItem ( "item_stout_shield" )
         SellSpecifiedItem ( "item_tango" )
         SellSpecifiedItem ( "item_flask" )
      end

     --elseif (PurchaseResult==PURCHASE_ITEM_OUT_OF_STOCK
      then
         SellSpecifiedItem ( "item_stout_shield" )
         SellSpecifiedItem ( "item_tango" )
      --end -- No extra item to sell. 
  end