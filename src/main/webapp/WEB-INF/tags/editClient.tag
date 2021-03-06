<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<jsp:useBean id="client" scope="session" type="com.epam.kuzovatov.model.Client"/>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon1"><fmt:message key="first.name"/>: </span>
    <input required type="text" name="txtFName" class="form-control" placeholder="<fmt:message key="first.name"/>"
           aria-describedby="sizing-addon1" value="${client.name}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon2"><fmt:message key="last.name"/>: </span>
    <input required type="text" name="txtLName" class="form-control" placeholder="<fmt:message key="last.name"/>"
           aria-describedby="sizing-addon2" value="${client.lastName}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon3"><fmt:message key="sur.name"/>: </span>
    <input type="text" name="txtSName" class="form-control" placeholder="<fmt:message key="sur.name"/>"
           aria-describedby="sizing-addon3" value="${client.surName}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon5"><fmt:message key="email"/>: </span>
    <input required type="text" name="txtEmail" class="form-control" placeholder="<fmt:message key="email"/>"
           aria-describedby="sizing-addon5" value="${client.email}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon6"><fmt:message key="contact.inf"/>: </span>
    <input required type="text" name="txtContactPhone" class="form-control"
           placeholder="<fmt:message key="contact.inf"/>" aria-describedby="sizing-addon6" value="${client.contactPhone}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon8"><fmt:message key="birthday"/>: </span>
    <input required type="text" name="txtBirthday" id="date" class="form-control"
           placeholder="<fmt:message key="birthday"/>" aria-describedby="sizing-addon8" value="${client.birthday}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon9"><fmt:message key="address"/>: </span>
    <input required type="text" name="txtArAddress" class="form-control" placeholder="<fmt:message key="address"/>"
           aria-describedby="sizing-addon9" value="${client.address}">
</div>