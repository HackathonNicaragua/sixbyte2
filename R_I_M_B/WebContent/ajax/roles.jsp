<%@page import="datos.Dt_Rol"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="entidades.*, datos.*, java.util.*;"%>


<!-- Breadcrumb -->
<div class="row">
	<div id="breadcrumb" class="col-md-12">
		<ol class="breadcrumb">
			<li><a>Administrar Roles</a></li>
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
					<span>Nuevo Rol</span>
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
				
				<form class="form-horizontal" role="form" action="./Sl_Rol" method="post">
					
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

						<!-- Nombre del Rol -->
						<div class="form-group">
							<label class="col-md-3 control-label"> Rol</label>
							<div class="col-md-7">
								<input id="rol" name="rol" type="text" class="form-control"	placeholder="Ingrese el ROL" required>
							</div>
						</div>
						<!-- /Fin -->

						<!-- Descripcion -->
						<div class="form-group">
							<label class="col-md-3 control-label">Descripcion </label>
							<div class="col-md-7">
								<input id="descRol" name="descRol" type="text" class="form-control" placeholder="Ingrese la descripcion" required>
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
							<button type="submit" class="btn btn-primary btn-lg btn-label-left"><span><i class="fa fa-floppy-o"></i></span>Guardar Rol</button>
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
                                <th>ID</th>
                                <th>Rol</th>
                                <th>Descripcion</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%
                        		Dt_Rol dtm = new Dt_Rol();
                        
                        		ArrayList<Tbl_Rol> listaRoles = new ArrayList<Tbl_Rol>();
                        		listaRoles = dtm.listarRoles();
                        
	                        for(Tbl_Rol tbm : listaRoles)
	                        {
	                        	
	                        %>
                            <tr>
                            	<td><%=tbm.getIdRol()%></td>
                            	<td><%=tbm.getNombreRol()%></td>
                            	<td><%=tbm.getDescripcion()%></td>
                            </tr>
                          	<%
	                         }
                            
                            %>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Rol</th>
                                <th>Descripcion</th>
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
});
</script>