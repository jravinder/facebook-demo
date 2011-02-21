<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
    <head>
        <title><g:layoutTitle default="Grails" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
      <script type="text/javascript">
	function facebookLogin() {
		FB.getLoginStatus(function(response) {
			if (response.session) {
				// logged in and connected user, someone you know
				window.location ="${createLink(controller:'friend', action:'list')}";
			}
		});
	}
</script>
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo"><a href="http://grails.org"><img src="${resource(dir:'images',file:'grails_logo.png')}" alt="Grails" border="0" /></a></div>
    <fbg:resources/>
    <g:if test="${session.facebook}">                  <g:fbBasicInfo/>
</g:if>
    <g:else>
      <fb:login-button perms="email,publish_stream" onlogin="facebookLogin();" size="large">
	<g:message code="auth.login.facebook"/>
</fb:login-button>     </g:else>
    <g:layoutBody />
    </body>
</html>