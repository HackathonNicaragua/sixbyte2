<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- Breadcrumb -->
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a>FORO MENTORIA</a></li>
		</ol>
	</div>
</div>
<!-- /Breadcrumb -->

<!-- Formulario foro de mentoria -->
<div id="formulario_Foro_Mentoria" class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
		
			<!-- Cabecera -->
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-plus-circle"></i>
					<span>Crear Foro</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					
					<a class="close-form">
						<i class="fa fa-times"></i>
					</a>
					
				</div>
				<div class="no-move"></div>
			</div>
			<!-- /Cabecera -->
			
			<!-- Contenedor -->
			<div class="box-content">
				
				<!-- Formulario -->
				<form class="form-horizontal" role="form">
					
					<!-- Campos -->
					<fieldset>
					
					<!-- Mensaje de campos Obligatorios -->
						<div class="col-md-12 col-md-offset-2">
							<h4>
								Los Campos con indicacion Son Requeridos
								<span class="fa fa-check-square-o fa-2x txt-success form-control-feedback"></span>
							</h4>
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
						<!-- Fin de seccion del mensaje -->
						
						<!-- Usuario -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Usuario</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Usuario" name="lista_Usuario" class="populate placeholder" required>
									<option value="0">-- Seleccione un Usuario --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Mentor -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Mentor</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Mentor" name="lista_Mentor" class="populate placeholder" required>
									<option value="0">-- Seleccione una Carrera --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Nombre FOR -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Nombre del Foro</label>
							<div class="col-md-7">
								<input id="foro_Name" name="foro_Name" type="text"
									class="form-control"
									placeholder="Ingrese el nombre del foro" required>
							</div>
						</div>
						<!-- /Fin -->
																	
					<!-- /Fin campos-->
						
					</fieldset>
					<!-- /Campos -->		
					
					<!--  Botones -->
					<div class="clearfix"></div>
					<div class="form-group">
						
						<!-- Botono guardar -->
						<div class="col-md-3 col-md-offset-2">
							<button type="submit" class="btn btn-primary btn-lg btn-label-left"><span><i class="fa fa-floppy-o"></i></span>Guardar Foro Mentoria</button>
						</div>
						
						<!-- Boton cancelar -->
						<div class="col-md-3">
							<button type="reset" class="btn btn-danger btn-lg btn-label-left"><span><i class="fa fa-floppy-o"></i></span>Cancelar Foro Mentoria</button>
						</div>
						
					</div>
					<!-- /Botones -->
					
				</form>
				<!-- /Fomulario -->
			</div>
			<!-- /Contenedor -->
			
		</div>
	</div>
</div>
<!-- /Fin del fomulario -->