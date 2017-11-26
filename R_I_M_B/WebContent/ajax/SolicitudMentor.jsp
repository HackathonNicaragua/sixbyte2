<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- Breadcrumb -->
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a>Solicitar Mentor</a></li>
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
								<select id="lista_Carreras" name="lista_Carreras" class="populate placeholder" required>
									<option value="0">-- Seleccione una Carrera --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Experiencia -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Experiencia</label>
								<span class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
								
							<div class="col-md-7">
								<textarea id="Experiencia" name="Experiencia"
									class="form-control" rows="10" maxlength="10000"></textarea>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Turno -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Turno</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Turno" name="lista_Turno" class="populate placeholder" required>
									<option value="0">-- Seleccione un Turno --</option>
								</select>
							</div>
						</div>
						<!-- /Fin -->
						
						<!-- Disponibilidad -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Disponibilidad</label> <span
									class="fa fa-check-square-o fa-lg txt-success form-control-feedback"></span>
							</div>
							
							<div class="col-md-7">
								<select id="lista_Disponibilidad" name="lista_Disponibilidad" class="populate placeholder" required>
									<option value="0">-- Seleccione una Disponibilidad --</option>
									<option value="1">-- Alta --</option>
									<option value="2">-- Media --</option>
									<option value="3">-- Baja --</option>
								</select>
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
									Guardar Solicitud Mentor
							</a>
						</div>
						
						<div class="col-md-3">
							<a id="cancelar_nueva_SolicitudMentor" 
							onclick="" class="btn btn-danger btn-lg btn-label-left">
							<span><i class="fa fa-times"></i></span>
								Cancelar Solicitud Mentor
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

<div class="row">
	<div class="col-xs-12">
		<div class="box">
			<div class="box-header">
				<div class="box-name">
					<i class="fa fa-usd"></i>
					<span>Mentores</span>
				</div>
				<div class="box-icons">
					<a class="collapse-link">
						<i class="fa fa-chevron-up"></i>
					</a>
					<a class="expand-link">
						<i class="fa fa-expand"></i>
					</a>
					<a class="close-link">
						<i class="fa fa-times"></i>
					</a>
				</div>
				<div class="no-move"></div>
			</div>
			<div class="box-content no-padding">
				<table class="table table-bordered table-striped table-hover table-heading table-datatable" id="datatable-1">
					<thead>
						<tr>
							<th>Rank</th>
							<th>Name</th>
							<th>Net Worth</th>
							<th>Age</th>
							<th>Source</th>
							<th>Country of Citizenship</th>
						</tr>
					</thead>
					<tbody>
					<!-- Start: list_row -->
						<tr>
							<td>1</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/carlos-slim-helu_50x50.jpg" alt="">Carlos Slim Helu & family</td>
							<td>$73 B</td>
							<td>74</td>
							<td>telecom</td>
							<td>Mexico</td>
						</tr>
						<tr>
							<td>2</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/bill-gates_50x50.jpg" alt="">Bill Gates</td>
							<td>$67 B</td>
							<td>58</td>
							<td>Microsoft</td>
							<td>United States</td>
						</tr>
						<tr>
							<td>3</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/amancio-ortega_50x50.jpg" alt="">Amancio Ortega</td>
							<td>$57 B</td>
							<td>77</td>
							<td>Zara</td>
							<td>Spain</td>
						</tr>
						<tr>
							<td>4</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/warren-buffett_50x50.jpg" alt="">Warren Buffett</td>
							<td>$53.5 B</td>
							<td>83</td>
							<td>Berkshire Hathaway</td>
							<td>United States</td>
						</tr>
						<tr>
							<td>5</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/larry-ellison_50x50.jpg" alt="">Larry Ellison</td>
							<td>$43 B</td>
							<td>69</td>
							<td>Oracle</td>
							<td>United States</td>
						</tr>
						<tr>
							<td>6</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/charles-koch_50x50.jpg" alt="">Charles Koch</td>
							<td>$34 B</td>
							<td>78</td>
							<td>diversified</td>
							<td>United States</td>
						</tr>
						<tr>
							<td>6</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/david-koch_50x50.jpg" alt="">David Koch</td>
							<td>$34 B</td>
							<td>73</td>
							<td>diversified</td>
							<td>United States</td>
						</tr>
						<tr>
							<td>8</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/li-ka-shing_50x50.jpg" alt="">Li Ka-shing</td>
							<td>$31 B</td>
							<td>85</td>
							<td>diversified</td>
							<td>Hong Kong</td>
						</tr>
						<tr>
							<td>9</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/liliane-bettencourt_50x50.jpg" alt="">Liliane Bettencourt & family</td>
							<td>$30 B</td>
							<td>91</td>
							<td>L'Oreal</td>
							<td>France</td>
						</tr>
						<tr>
							<td>10</td>
							<td><img class="img-rounded" src="http://i.forbesimg.com/media/lists/people/bernard-arnault_50x50.jpg" alt="">Bernard Arnault & family</td>
							<td>$29 B</td>
							<td>64</td>
							<td>LVMH</td>
							<td>France</td>
						</tr>
				</table>
			</div>
		</div>
	</div>
</div>
