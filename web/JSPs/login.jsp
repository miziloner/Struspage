

<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>

<html:html>
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!--link rel="stylesheet" type="text/css" href="/core/css/login.css"/>
	<link rel="stylesheet" type="text/css" href="/core/css/jquery.ui.css"/>
	<link rel="stylesheet" type="text/css" href="/core/css/styletags.css"/>
	<script type="text/javascript" src="/core/jss/jquery.js"></script>
	<script type="text/javascript" src="/core/jss/script08.js"></script>
	<script type="text/javascript" src="/core/jss/jquery.poshytip.js"></script>
	<script type="text/javascript" src="/core/jss/jquery.jup.js"></script-->
	<!--script type="text/javascript" src="/core/jss/login.js"></script-->
	<script type="text/javascript" src="/WebApplication/js/jquery.js"></script>
	<script type="text/javascript" src="/WebApplication/js/jquery.js"></script>

	<!--script type="text/javascript" src="/core/jss/jquery.filestyle.js"></script-->
	<%--script type="text/javascript">
		var MSGUSUARIO = '<bean:message bundle="mxds" key="aplicacion.mensajes.usuario"/>';
		var MSGCONTRASENIA = '<bean:message bundle="mxds" key="aplicacion.mensajes.contrasenia"/>';
		var MSGCONFIG = '<bean:message bundle="mxds" key="aplicacion.mensajes.configuracion"/>';
		var MSGARCHIVO = '<bean:message bundle="mxds" key="aplicacion.mensajes.archivo"/>';
		var MSGTIPOARCHIVO = '<bean:message bundle="mxds" key="aplicacion.mensajes.tipoarchivo"/>';
	</script--%>

	<script type="text/javascript">
	    $(document).ready(function () {
		$('#btn').click(function () {
		    //alert("funcion jquery");
		    document.Loginform.method='post';
		    document.LoginForm.action='Login.do?do=init';
		    document.LoginForm.submit();
		});
	    });
	</script>    
    </head>
    <body style="background-color:#FFFFFF">
	<html:form action="Login.do?do=init" method="post" onsubmit="return false" enctype="multipart/form-data" styleId="LoginForm">
	    <%--html:hidden property="STMUSRidiomaHDN" styleId="STMUSRidiomaHDN"></html:hidden>
	    <html:hidden property="STMUSRnombrebdHDN" styleId="STMUSRnombrebdHDN"></html:hidden>
	    <html:hidden property="STMUSRcertificadoHDN" styleId="STMUSRcertificadoHDN"></html:hidden--%>
	    <div style="position:absolute; top:0px; left:0px; width:100%; height:100%;">
		<div id="loginDIV" style="top:50%; left:50%; position:absolute;">
		    <%--div style="width:90px; height:24px; top:50px; left:75%; position:absolute; margin-left:-45px; overflow:hidden; border:0px solid red;">
			    <img src="/core/images/languages/mex.png" onclick="idioma('es');" onmouseout="unTip();" onmouseover="tip('<bean:message bundle="mxds" key="aplicacion.idiomas.espanol"/>')" style="position:absolute; left:0px; top:0px; width:40px; height:24px; cursor:pointer;"/>
			    <img src="/core/images/languages/usa.png" onclick="idioma('en');" onmouseout="unTip();" onmouseover="tip('<bean:message bundle="mxds" key="aplicacion.idiomas.ingles"/>')" style="position:absolute; left:50px; top:0px; width:40px; height:24px; cursor:pointer;"/>
		    </div--%>
		    <div id="textDIV" style="width:381px; height:340px; position:absolute; border:0px solid red; overflow:hidden;">
			<%--div class="lblLogin" style="left:10px; top:20px; width:100px;"><bean:message bundle="mxds" key="login.usuario"/></div>
			<html:text name="LoginForm" property="STMUSRusuarioTXT" styleId="STMUSRusuarioTXT" styleClass="txtLogin ui-corner-all" style="left:146px; top:113px; width:167px; border-bottom:#BBB solid 2px; border-top:none; border-left:none; border-right:none; background-color:transparent;" maxlength="50" tabindex="1"/>
			<div class="lblLogin" style="left:10px; top:45px; width:100px;"><bean:message bundle="mxds" key="login.contrasenia"/></div>
			<html:password name="LoginForm" styleId="STMUSRpasswordTXT" property="STMUSRpasswordTXT" styleClass="txtLogin ui-corner-all" style="left:146px; top:191px; width:167px; border-bottom:#BBB solid 2px; border-top:none; border-left:none; border-right:none; background-color:transparent;" maxlength="30" tabindex="2"/>
			<logic:equal name="LoginForm" property="STMUSRnombrebdHDN" value="1">
				<div class="lblLogin" style="left:10px; top:70px; width:100px;"><bean:message bundle="mxds" key="login.basedatos"/></div>
				<html:text name="LoginForm" styleId="STMUSRbaseTXT" property="STMUSRbaseTXT" styleClass="txtLogin ui-corner-all" style="left:140px; top:65px; width:140px;" maxlength="30" tabindex="3"/>
				<logic:equal name="LoginForm" property="STMUSRcertificadoHDN" value="1">
					<div class="lblLogin" style="left:10px; top:95px; width:100px;"><bean:message bundle="mxds" key="login.certificado"/></div>
					<html:file name="LoginForm" styleId="STMUSRcertificdoFLE" property="STMUSRcertificdoFLE" styleClass="txtLogin ui-corner-all" style="left:140px; top:200px; width:240px;" tabindex="4"/>
					<div id="divError" class="lblError" style="top:315px;"></div>
				</logic:equal>
				<logic:notEqual name="LoginForm" property="STMUSRcertificadoHDN" value="1">
					<div class="lblLogin" style="left:10px; top:95px; width:100px; display:none;"><bean:message bundle="mxds" key="login.certificado"/></div>
					<html:file name="LoginForm" styleId="STMUSRcertificdoFLE" property="STMUSRcertificdoFLE" styleClass="txtLogin ui-corner-all" style="left:125px; top:90px; width:140px; display:none;" tabindex="-1"/>
					<div id="divError" class="lblError" style="top:200px;"></div>
				</logic:notEqual>
			</logic:equal>
			<logic:notEqual name="LoginForm" property="STMUSRnombrebdHDN" value="1">
				<div class="lblLogin" style="left:10px; top:70px; width:100px; display:none;"><bean:message bundle="mxds" key="login.basedatos"/></div>
				<html:text name="LoginForm" styleId="STMUSRbaseTXT" property="STMUSRbaseTXT" styleClass="txtLogin ui-corner-all" style="left:125px; top:65px; width:140px; display:none;" maxlength="30" tabindex="-1"/>
				<logic:equal name="LoginForm" property="STMUSRcertificadoHDN" value="1">
					<div class="lblLogin" style="left:10px; top:70px; width:100px;"><bean:message bundle="mxds" key="login.certificado"/></div>
					<html:file name="LoginForm" styleId="STMUSRcertificdoFLE" property="STMUSRcertificdoFLE" styleClass="txtLogin ui-corner-all" style="left:146px; top:269px; width:167px;" tabindex="3"/>
					<div id="divError" class="lblError" style="top:315px;"></div>
				</logic:equal>
				<logic:notEqual name="LoginForm" property="STMUSRcertificadoHDN" value="1">
					<div class="lblLogin" style="left:10px; top:70px; width:100px; display:none;"><bean:message bundle="mxds" key="login.certificado"/></div>
					<html:file name="LoginForm" styleId="STMUSRcertificdoFLE" property="STMUSRcertificdoFLE" styleClass="txtLogin ui-corner-all" style="left:125px; top:70px; width:140px; display:none;" tabindex="-1"/>
					<div id="divError" class="lblError" style="top:70px;"></div>
				</logic:notEqual>
			</logic:notEqual>
			<img id="baceptar" name="baceptar" onmouseout="roll('baceptar','/core/images/login/<bean:message bundle="mxds" key="aplicacion.boton.entrar"/>.png')" onmouseover="roll('baceptar','/core/images/login/<bean:message bundle="mxds" key="aplicacion.boton.entrar"/>_a.png')" src="/core/images/login/<bean:message bundle="mxds" key="aplicacion.boton.entrar"/>.png" style="position:absolute; right:50px; top:30px; width:90px; height:35px; cursor:pointer;" title="<bean:message bundle="mxds" key="aplicacion.tooltip.entrar"/>"/--%>
			<html:text name="LoginForm" property="STMUSRusuarioTXT" styleId="STMUSRusuarioTXT" styleClass="txtLogin ui-corner-all" style="left:146px; top:113px; width:167px; border-bottom:#BBB solid 2px; border-top:none; border-left:none; border-right:none; background-color:transparent;" maxlength="50" tabindex="1"/>

			<html:password name="LoginForm" styleId="STMUSRpasswordTXT" property="STMUSRpasswordTXT" styleClass="txtLogin ui-corner-all" style="left:146px; top:191px; width:167px; border-bottom:#BBB solid 2px; border-top:none; border-left:none; border-right:none; background-color:transparent;" maxlength="30" tabindex="2"/>
			<input type="button" value="boton" id="btn">



		    </div>
		</div>
	    </div>

	</html:form>
    </body>
</html:html>