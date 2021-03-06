{include file="header.tpl"}
<div id="ilpswrap">
    <div class="rbuttons">
        <a class="btn" href="{$WWWROOT}artefact/ilps/new.php?id={$ilp}">{str section="artefact.ilps" tag="newunit"}</a>
    </div>
    {if !$units.data}
        <div>{str tag="ilpsunitsdesc" section="artefact.ilps"}</div>
        <div class="message">{$strnounitsaddone|safe}</div>
    {else}
        <table id="unitslist">
            <thead>
                <tr>
                    <th>{str tag='title' section='artefact.ilps'}</th>
                    <th>{str tag='status' section='artefact.ilps'}</th>
                    <th>{str tag='targetcompletion' section='artefact.ilps'}</th>
                    <th>{str tag='datecompleted' section='artefact.ilps'}</th>
                    <th class="right">{str tag='points' section='artefact.ilps'}</th>
                    <th class="ilpscontrols"></th>
                </tr>
            </thead>
            <tbody>
                {$units.tablerows|safe}
            </tbody>
        </table>
        {$units.pagination|safe}
    {/if}
</div>
{include file="footer.tpl"}
