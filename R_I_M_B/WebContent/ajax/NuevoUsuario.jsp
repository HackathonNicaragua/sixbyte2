<%@page import="datos.Dt_Rol"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="entidades.*, datos.*, java.util.*;"%>


<!-- Breadcrumb -->
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a>Administrar Usuarios</a></li>
		</ol>
	</div>
</div>

<!-- Formulario de un nuevo ROL -->
<div id="formulario_nuevo_rol" class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
		
			<!-- Cabecera -->
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-plus-circle"></i>
					<span>Nuevo Usuario</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-form"> <i class="fa fa-times"></i>
					</a>
					
				</div>
				<div class="no-move"></div>
			</div>
			<!-- /Cabecera -->
			
			<!-- Contenedor -->
			<div class="box-content no-padding">
				
				<form class="form-horizontal" role="form" action="./#" method="post">
					
					<!-- Campos -->
					<fieldset>
						
						<!-- Mensaje de campos Obligatorios -->
						<div class="col-md-12 col-md-offset-2">
							<h4>
									Ingrese sus datos de contactos mas utilizados <span
									class="fa fa-check-square-o fa-2x txt-success form-control-feedback"></span>
							</h4>
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
						<!-- Fin de seccion del mensaje -->

						<div class="cuadro-foto">
								<img id="preview" name="preview"  alt="Foto Usuario" style="width: 100px; height: 100px; border-bottom-color: white; margin: 2px;" />
						</div>
						
						<div class="form-group">
						<p>&nbsp; <br></p>
						</div>						
						<!-- Foto  -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Foto de Perfil: </label>
							
							<div class="col-md-7">
								<input type="file" id="foto" name="foto" onchange="Test.UpdatePreview(this)" required="required">
							</div>
							
						</div>
						<!-- /Fin -->
						
						
						<!-- Nombre de Usuario -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Identificacion: </label>
							<div class="col-md-7">
								<input id="identificacion" name="identificacion" type="text" class="form-control"	placeholder="Ingrese su cedula y/o pasaporte" required>
							</div>
						</div>
						<!-- /Fin -->

						<!-- Contraseña -->
						<div class="form-group">
							<label class="col-md-3 control-label">Nombre Completo: </label>
							<div class="col-md-7">
								<input id="nombre" name="nombre" type="text" class="form-control" placeholder="Ingrese su nombre completo" required>
							</div>
						</div>
						<!-- Fin -->
						
						<!-- Email -->
						<div class="form-group">
							<label class="col-md-3 control-label">Correo Electronico: (Utilizado para ingresar en la plataforma)</label>
							<div class="col-md-7">
								<input id="email" name="email" type="text" class="form-control" placeholder="Ejemplo: elsner.boanergeg@gmail.com" required>
							</div>
						</div>
						<!-- Fin -->
						
						<!-- Contraseña -->
						<div class="form-group">
							<label class="col-md-3 control-label">Contrasena: </label>
							<div class="col-md-7">
								<input id="pwd" name="pwd" type="text" class="form-control" placeholder="Ingrese su clave de acceso" required>
							</div>
						</div>
						<!-- Fin -->

						<!-- Centro de Estudio -->
						<div class="form-group">
							<label class="col-md-3 control-label">Centro de Estudio</label>
							<div class="col-md-7">
								<input id="centroEstudio" name="centroEstudio" type="text" class="form-control" placeholder="Ingrese su centro de estudio" required>
							</div>
						</div>
						<!-- Fin -->

						<!-- Celular-->
						<div class="form-group">
							<label class="col-md-3 control-label">Celular:</label>
							<div class="col-md-7">
								<input id="celular" name="celular" type="text" class="form-control" placeholder="(505) 8888-8888" required>
							</div>
						</div>
						<!-- Fin -->

						<!-- Telefono -->
						<div class="form-group">
							<label class="col-md-3 control-label">Telefono:</label>
							<div class="col-md-7">
								<input id="telf" name="telf" type="text" class="form-control" placeholder="(505) 8888-8888" required>
							</div>
						</div>
						<!-- Fin -->

						<!-- Direccion -->
						<div class="form-group">
							<label class="col-md-3 control-label">Direccion:</label>
							<div class="col-md-7">
								<textarea id="dir" name="dir" rows="3" class="form-control" placeholder="Direccion Exacta!" required></textarea>
							</div>
						</div>
						<!-- Fin -->

						<!-- Objetivos -->
						<div class="form-group">
							<label class="col-md-3 control-label">Objetivos / Intencion:</label>
							<div class="col-md-7">
								<textarea id="objetivos" name="objetivos" rows="3" class="form-control" placeholder="Exprese su interes..." required></textarea>
							</div>
						</div>
						<!-- Fin -->
						
						

					</fieldset>
					<!-- /Campos -->
						
					
					<!-- Botones -->
					<div class="clearfix"></div>
					<div class="form-group">
						
						<!-- Botono guardar -->
						<div class="col-md-3 col-md-offset-2">
							<button type="submit" class="btn btn-primary btn-lg btn-label-left"><span><i class="fa fa-floppy-o"></i></span>Guardar Usuario</button>
						</div>
						
						<!-- Boton cancelar -->
						<div class="col-md-3">
							<button type="reset" class="btn btn-danger btn-lg btn-label-left"><span><i class="fa fa-floppy-o"></i></span>Cancelar</button>
						</div>
						
					</div>
					<!-- /Botones -->
				</form>
				<!-- /Formulario -->
				
                    <table class="table table-bordered table-striped table-hover table-heading table-datatable" id="datatable-1">
                        <thead>
                            <tr>
                                <th>Identificacion</th>
                                <th>Nombre Completo</th>
                                <th>Email</th>
                                <th>Centro de Estudio</th>
                                <th>Celular</th>
                                <th>Telefono</th>
                                <th>Objetivos</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        		Dt_NuevoUsuario dtm = new Dt_NuevoUsuario();
                        
                        		ArrayList<Tbl_Usuario> listaUsers = new ArrayList<Tbl_Usuario>();
                        		listaUsers = dtm.listarUsuario();
                        
	                        for(Tbl_Usuario tbm : listaUsers)
	                        {
	                        	
	                        %>
                            <tr>
                            	<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/carlos-slim-helu_50x50.jpg" alt=""><%=tbm.getIdentificacion()%></td>
                            	<td><%=tbm.getNombreUser()%></td>
                            	<td><%=tbm.getEmail()%></td>
                            	<td><%=tbm.getCentroEstudio()%></td>
                            	<td><%=tbm.getCelular()%></td>
                            	<td><%=tbm.getTelefono()%></td>
                            	<td><%=tbm.getObjetivos()%></td>
                            </tr>
                          	<%
	                         }
                            
                            %>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Identificacion</th>
                                <th>Nombre Completo</th>
                                <th>Email</th>
                                <th>Centro de Estudio</th>
                                <th>Celular</th>
                                <th>Telefono</th>
                                <th>Objetivos</th>
                            </tr>
                        </tfoot>
                    </table>
				
			</div>
		</div>
	</div>
</div>
<!-- /Formulario de registro de usuario -->
<script type="text/javascript">
// Run Datables plugin and create 3 variants of settings
function AllTables(){
	TestTable1();
	TestTable2();
	TestTable3();
	LoadSelect2Script(MakeSelect2);
}
function MakeSelect2(){
	$('select').select2();
	$('.dataTables_filter').each(function(){
		$(this).find('label input[type=text]').attr('placeholder', 'Buscar');
	});
}
$(document).ready(function() {
	// Load Datatables and run plugin on tables 
	LoadDataTablesScripts(AllTables);
	// Add Drag-n-Drop feature
	WinMove();
	
//////////////////////////////////FUNCION PARA PREVISUALIZAR LA FOTO QUE SUBE EL USUARIO//////////////////////////
	Test = {
	        UpdatePreview: function(obj)
	        {
	          // if IE < 10 doesn't support FileReader
	          if(!window.FileReader)
	          {
	             
	          } 
	          else 
	          {
	             var reader = new FileReader();
	             var target = null;
	             
	             reader.onload = function(e) 
	             {
	              target =  e.target || e.srcElement;
	               $("#preview").prop("src", target.result);
	             };
	              reader.readAsDataURL(obj.files[0]);
	          }
	        }
	    };
});
</script>