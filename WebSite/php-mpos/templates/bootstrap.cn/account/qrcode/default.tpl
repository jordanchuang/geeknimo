{if !$GLOBAL.website.api.disabled}
<script type="text/javascript" src="{$PATH}/js/jquery.qrcode.min.js"></script>
<script type="text/javascript">
  {literal}
  $(document).ready(function(){
    $('#qrcodeholder').qrcode({
      text    : "{/literal}|http{if $smarty.server.HTTPS|default:"0" eq 'on'}s{/if}://{$smarty.server.SERVER_NAME}{$smarty.server.SCRIPT_NAME}?page=api|{$GLOBAL.userdata.api_key}|{$GLOBAL.userdata.id}|{$GLOBAL.config.currency|upper}|{literal}",
      render    : "canvas",  // 'canvas' or 'table'. Default value is 'canvas'
      background : "#ffffff",
      foreground : "#000000",
      width : 250,
      height: 250 
    });
  });
  {/literal}
</script>
<div class="row">
  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-qrcode fa-fw"></i> API �ִ�
      </div>
      <div class="panel-body text-center">
        <p>�� QR �����ڵ��������� API �ִ����ֻ�Ӧ��</p>
        <P>iPhone �ֻ�Ӧ��: <a href="https://itunes.apple.com/us/app/impos/id742179239?mt=8" target="_blank">������ҳ��</a></p>
        <p>Android �ֻ�Ӧ��: <a href="http://www.windowsphone.com/en-us/store/app/meeneminermonitor/7ec6eac7-a642-409b-96c8-57b5cfdf45cf" target="_blank">������ҳ��</a></p>
        <div id="qrcodeholder"></div>
      </div>
    </div>
  </div>
</div>
{/if}