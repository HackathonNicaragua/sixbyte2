<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- Breadcrumb -->
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a>Registrar Plan de Estudio</a></li>
		</ol>
	</div>
</div>
<!-- /Breadcrumb -->

<!-- Formulario de registro Plan de estudio -->
<div id="formulario_nuevo_Plan_Estudio" class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
		
			<!-- Cabecera -->
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-plus-circle"></i>
					<span>Registrar Plan de Estudio</span>
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
						
						<!-- Plan de estudio -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Nombre Plan de estudio</label>
							<div class="col-md-7">
								<input id="PlanEstudio" name="PlanEstudio" type="text"
									class="form-control"
									placeholder="Ingrese el nombre del plan del plan de estudio" required>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Plan de estudio -->
						<div class="form-group">
						<div class="col-md-3 control-label">
							<label> Plan de estudio</label>
							</div>
							<div class="col-md-7">
								<input id="Partid_nac" name="Partida_nac" type="file">
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Carrera -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Carrera</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Carrera" name="lista_Carrera" class="populate placeholder" required>
									<option value="0">-- Seleccione una Carrera --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Afiliado -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Afiliados</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Afiliados" name="lista_Afiliados" class="populate placeholder" required>
									<option value="0">-- Seleccione un Afiliado --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
																	
					<!-- /Fin campos-->
						
					</fieldset>
					<!-- /Campos -->		
					
					<!-- Botono guardar -->
						<div class="col-md-3 col-md-offset-2">
							<button type="submit" class="btn btn-primary btn-lg btn-label-left"><span><i class="fa fa-floppy-o"></i></span>Guardar Plan</button>
						</div>
						
						<!-- Boton cancelar -->
						<div class="col-md-3">
							<button type="reset" class="btn btn-danger btn-lg btn-label-left"><span><i class="fa fa-floppy-o"></i></span>Cancelar Registro</button>
						</div>
					
				</form>
				<!-- /Fomulario -->
			</div>
			<!-- /Contenedor -->
			
		</div>
	</div>
</div>
<!-- /Fin del fomulario -->
