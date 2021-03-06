<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty errorMessage}"><div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessage}</div></c:if>

<div class="row">
    <div class="col-xs-4 col-xs-offset-1">
        <form action="/login" method="POST">
            <p>Login</p>
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" class="form-control" name="username" />
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" name="password" />
            </div>

            <input type="submit" class="btn btn-default" value="submit" />
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>
    </div>
</div>