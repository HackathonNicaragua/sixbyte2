<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="entidades.*, datos.*, java.util.*;"%>
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
						</div>
						<div class="clearfix"></div>
						<div class="clearfix"></div>
						<!-- Fin de seccion del mensaje -->									
						
						<!-- Mentor -->
						<div class="form-group">
							<div class="col-md-3 control-label">
								<label>Mentor</label> 
							</div>
							
							<div class="col-md-7">
								<select id="lista_Mentor" name="lista_Mentor" class="populate placeholder" required>
									<option value="">-- Seleccione un mentor.... --</option>
									<option value="1">-- Luis Agustin --</option>
									<option value="2">-- Alfendi Laytoni --</option>
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
				
				<table class="table table-bordered table-striped table-hover table-heading table-datatable" id="datatable-1">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Estado</th>
                                <th>Fecha</th>
                                <th>Mentor</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        		DT_Tbl_Foro_Mentoria dtm = new DT_Tbl_Foro_Mentoria();
                        
                        		ArrayList<Tbl_Foro_Mentoria> listaForosMonitoria = new ArrayList<Tbl_Foro_Mentoria>();
                        		listaForosMonitoria = dtm.listarForoMentoria();
                        
	                        for(Tbl_Foro_Mentoria tbm : listaForosMonitoria)
	                        {
	                        	
	                        %>
                            <tr>
                            	<td><%=tbm.getNombreForo()%></td>
                            	<td><%=tbm.getEstado()%></td>
                            	<td><%=tbm.getFecha()%></td>
                            	<td><%=tbm.getIdUsuarioMentor()%></td>                            	
                            </tr>
                          	<%
	                         }
                            
                            %>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Nombre</th>
                                <th>Estado</th>
                                <th>Fecha</th>
                                <th>Mentor</th>
                            </tr>
                        </tfoot>
                    </table>
				
			</div>
			<!-- /Contenedor -->
			
		</div>
	</div>
</div>
<!-- /Fin del fomulario -->
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
});
</script>