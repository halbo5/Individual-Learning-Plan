
{foreach from=$units.data item=unit}
    <tr class="{cycle values='r0,r1'}" style="width:100%" >
        <td class="c1">{$unit->title}</td>
        <td class="c2">{$unit->status}</td>
        <td class="c3">{$unit->targetcompletion}</td>
        <td class="c4">{$unit->datecompleted}</td>
        <td class="c5 right">{$unit->points}</td>
    </tr>
{/foreach}
<tr></tr>
<tr class="summarypoints">
    <th colspan="4" class="right">{str tag='totalpoints' section='artefact.ilps'}</th><td class="right totalpoints">{$units.grandtotalpoints}</td>
</tr>
<tr class="feedbackpoints">
    <th colspan="4" class="right">{str tag='acquiredpoints' section='artefact.ilps'}</th><td class="right aquiredpoints">{$units.acquiredpoints}</td>
</tr>
<tr class="feedbackpoints">
    <th colspan="4" class="right">{str tag='remainingpoints' section='artefact.ilps'}</th><td class="right remainingpoints">{$units.remainingpoints}</td>
</tr>
