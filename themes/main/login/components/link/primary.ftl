<#macro kw component="a" rest...>
  <${component}
    class="inline-flex text-primary-600 hover:text-primary-500 font-bold"
    <#list rest as attrName, attrValue>
      ${attrName}="${attrValue}"
    </#list>
  >
    <#nested>
  </${component}>
</#macro>
