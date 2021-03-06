<div>
    <table width="100%" cellpadding="4" cellspacing="0" border="0">
      <tr>
        <td align="left">
            {if $mode eq 'input'}
                <input class="button" type="submit" name="save_new" value="{$SAVE}" >
            {elseif $mode eq 'edit'}
                {if $EDIT_SCA}<input class="button" type="submit" name="save_edit" value="{$APPLY_CHANGES}">{/if}
                {if $DEL_SCA} <input class="button" type="submit" name="delete" value="{$DELETE}"  onClick="return confirmSubmit('{$CONFIRM_CONTINUE}')">{/if}
            {else}
                {if $EDIT_SCA}<input class="button" type="submit" name="edit" value="{$EDIT}">{/if}
                {if $DEL_SCA} <input class="button" type="submit" name="delete" value="{$DELETE}"  onClick="return confirmSubmit('{$CONFIRM_CONTINUE}')">{/if}
            {/if}
            <input class="button" type="submit" name="cancel" value="{$CANCEL}">
        {if $mode ne 'view'}
        <td align="right" nowrap><span class="letra12"><span  class="required">*</span> {$REQUIRED_FIELD}</span></td>
        {/if}
     </tr>
   </table>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="5px" class="tabForm">
    {if $USERLEVEL eq 'superadmin'}
        <tr class="newtpltable">
            <td>{$ORGANIZATION_LABEL}: </td>
            <td>{$ORGANIZATION}</td>
        </tr>
    {/if}
    <tr class="newtpltable">
        <td nowrap>{$description.LABEL}: <span  class="required">*</span></td>
        <td>{$description.INPUT}</td>
    </tr>
    <tr class="newtpltable">
        <td nowrap>{$exten.LABEL}: <span  class="required">*</span></td>
        <td>{$exten.INPUT}</td>
    </tr>    
    <tr class="newtpltable">
        <td nowrap>{$goto.LABEL}: <span  class="required">*</span></td>
        <td>{$goto.INPUT} {$destination.INPUT}</td>
    </tr>
</table>
<input type="hidden" name="id" id="id" value="{$id}">
<input type="hidden" name="organization" value="{$ORGANIZATION}">

{literal}
<style type="text/css">
.newtpltable td {
    padding-left: 12px;
}
</style>
{/literal}