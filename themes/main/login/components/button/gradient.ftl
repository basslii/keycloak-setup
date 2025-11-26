<#macro kw component="button" rest...>
  <${component}
    class="bg-gradient-blue-to-red w-full py-2 py-2 text-white font-bold text-base rounded-lg transform transition-transform duration-200 hover:scale-105 hover:opacity-90"
    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
