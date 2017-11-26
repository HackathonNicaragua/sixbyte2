<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Breadcrumb -->
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a>Administrar usuarios</a></li>
		</ol>
	</div>
</div>

<!-- Formulario de nuevo de usuario -->
<div id="formulario_nuevo_usuario" class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
		
			<!-- Cabecera -->
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-plus-circle"></i>
					<span>Nuevo usuario</span>
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
			<div class="box-content">
				
				<form class="form-horizontal" role="form">
					
					<!-- Campos -->
					<fieldset>
						
						<!-- Mensaje de campos Obligatorios -->
						<div class="col-md-12 col-md-offset-2">
							<h4>
								Todos los campos del formulario son obligatorios <span
									class="fa fa-check-square-o fa-2x txt-success form-control-feedback"></span>
							</h4>
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
						<!-- Fin de seccion del mensaje -->

						<!-- Nombre de usuario -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Nombre de Usuario
							</label>

							<div class="col-md-7">
								<input id="nombre_usuario" name="nombre_usuario" type="text"
									class="form-control"
									placeholder="Ingrese el nombre de usuario del sistema" required>
							</div>
						</div>
						<!-- /Fin -->

						<!-- Password -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Clave </label>

							<div class="col-md-7">
								<input id="passwd" name="passwd" type="password"
									class="form-control" placeholder="Ingrese la clave del usuario"
									required>
							</div>
						</div>
						<!-- Fin -->

						<!-- Empleado -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Empleado </label>

							<div class="col-md-7">
								<select id="empleados" name="empleados"
									class="populate placeholder" required>
									<option value="0">-- Seleccione un empleado de la lista ---</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
						
					</fieldset>
					<!-- /Campos -->
						
					
					<!-- Botones -->
					<div class="clearfix"></div>
					<div class="form-group">
						
						<!-- Botono guardar -->
						<div class="col-md-3 col-md-offset-2">
							<a id="guardar_nuevo_usuario" class="btn btn-primary btn-lg btn-label-left"
							onclick="verificarRegistroUsuario();">
							<span><i class="fa fa-floppy-o"></i></span>
								Guardar usuario
							</a> 
						</div>
						
						<!-- Boton cancelar -->
						<div class="col-md-3">
							<a id="cancelar_guardar_usuario" class="btn btn-danger btn-lg btn-label-left"
							onclick="cancelarGuardarUsuario();">
							<span><i class="fa fa-times"></i></span>
								Cancelar registro usuario
							</a>
						</div>
						
					</div>
					<!-- /Botones -->
				</form>
				<!-- /Formulario -->
				
			</div>
		</div>
	</div>
</div>
<!-- /Formulario de registro de usuario -->