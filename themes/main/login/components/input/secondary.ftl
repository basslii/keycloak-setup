<#macro kw invalid name autofocus=false disabled=false message=true required=true rest...>
    <div class="basis-1/4">
        <label class="text-secondary block tracking-wide font-semibold" for="${name}">
            <#nested>
        </label>
    </div>
    <div class="basis-3/4">
        <input
                <#if autofocus>autofocus</#if>
            <#if disabled>disabled</#if>
            <#if required>required</#if>
                aria-invalid="${messagesPerField.existsError(invalid)?c}"
                class="block border-secondary-200 w-full mt-1 rounded-md focus:border-primary-300 focus:ring focus:ring-primary-200 focus:ring-opacity-50 sm:text-sm"
                id="${name}"
                name="${name}"
        <#list rest as attrName, attrValue>
            ${attrName}="${attrValue}"
        </#list>
        >
        <#if message && messagesPerField.existsError(invalid)>
            <div class="mt-2 text-red-600 text-sm">
                ${kcSanitize(messagesPerField.getFirstError(invalid))?no_esc}
            </div>
        </#if>
    </div>
</#macro>
