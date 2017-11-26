<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Breadcrumb -->
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a>Solicitar Mentoría</a></li>
		</ol>
	</div>
</div>
<!-- /Breadcrumb -->

<!-- Formulario de registro de Solicitar Mentor -->
<div id="formulario_nueva_SolicitudMentor" class="row">
	<div class="col-xs-12 col-sm-12">
		<div class="box">
		
			<!-- Cabecera -->
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-plus-circle"></i>
					<span>Solicitar Mentor</span>
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
						
						<!-- Mentoria -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Solicitud Mentoria</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Usuario" name="lista_Usuario" class="populate placeholder" required>
									<option value="0">-- Seleccione una mentoria --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Usuario Mentor -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Usuario Mentor</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Usuario_Mentor" name="lista_Usuario_Mentor" class="populate placeholder" required>
									<option value="0">-- Seleccione mentor --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
												
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
							
						<!-- Tematica -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Temática</label>
							<div class="col-md-7">
								<input id="tematica" name="tematica" type="text"
									class="form-control"
									placeholder="Ingrese la temática" required>
							</div>
						</div>
						<!-- /Fin -->
																	
					<!-- /Fin campos-->
						
					</fieldset>
					<!-- /Campos -->		
					
					<!--  Botones -->
					<div class="clearfix"></div>
					<div class="form-group">
						
						<div class="col-md-3 col-md-offset-2">
							<a id="guardar_nueva_SolicitudMentor" 
							 onclick="" class="btn btn-primary btn-lg btn-label-left">
								<span><i class="fa fa-floppy-o"></i></span>
									Guardar Solicitud Mentoría
							</a>
						</div>
						
						<div class="col-md-3">
							<a id="cancelar_nueva_SolicitudMentor" 
							onclick="" class="btn btn-danger btn-lg btn-label-left">
							<span><i class="fa fa-times"></i></span>
								Cancelar Solicitud Mentoría
							</a>
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


<script type="text/javascript">
// Run Select2 plugin on elements
function DemoSelect2(){
	$('#s2_with_tag').select2({placeholder: "Select OS"});
	$('#s2_country').select2();
}
$(document).ready(function() {
	// Create Wysiwig editor for textare
	TinyMCEStart('#wysiwig_simple', null);
	TinyMCEStart('#wysiwig_full', 'extreme');
	// Add slider for change test input length
	FormLayoutExampleInputLength($( ".slider-style" ));
	// Add tooltip to form-controls
	$('.form-control').tooltip();
	LoadSelect2Script(DemoSelect2);
	// Load example of form validation
	LoadBootstrapValidatorScript(DemoFormValidator);
	// Add drag-n-drop feature to boxes
	WinMove();
});
</script>
    