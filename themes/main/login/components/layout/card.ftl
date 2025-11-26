<#macro kw>
  <div class="logo">
        ${kcSanitize(msg("loginTitleHtml",(realm.displayNameHtml!'')))?no_esc}
	</div>
  <div class="login-card bg-shadow p-8 rounded-lg space-y-6">
    <#nested>
  </div>
</#macro>
