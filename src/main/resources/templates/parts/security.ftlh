<#assign
know= Session.SPRING_SECURITY_CONTEXT??
>

<#if know>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
<#--    isAdmin = user.getAuthorities()?seq_contains('ADMIN')-->
    isAdmin = user.isAdmin
    currentUserId = user.getId()
    >
<#else>
    <#assign
    name = "uknown"
    isAdmin = false
    currentUserId = -1
    >
</#if>


