<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>

<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrapValidator.css" />
<title>Ejemplos de CIBERTEC - Jorge Jacinto</title>
</head>
<body>

	<div class="container">
		<h3>Crud de Proveedor</h3>
		<div class="col-md-23">

			<div class="row" style="height: 70px">
				<div class="col-md-2">
					<input class="form-control" id="id_txt_filtro" name="filtro"
						placeholder="Ingrese el nombre" type="text" maxlength="30" />
				</div>
				<div class="col-md-2">
					<button type="button" class="btn btn-primary" id="id_btn_filtrar"
						style="width: 150px">FILTRA</button>
				</div>
				<div class="col-md-2">
					<button type="button" data-toggle='modal'
						data-target="#id_div_modal_registra" class='btn btn-success'
						style="width: 150px">REGISTRA</button>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="content">

						<table id="id_table" class="table table-striped table-bordered">
							<thead>
								<tr>
									<th style="width: 5%">ID</th>
									<th style="width: 20%">Nombre</th>
									<th style="width: 8%">DNI</th>
									<th style="width: 8%">Tipo</th>
									<th style="width: 8%">Pa�s</th>
									<th style="width: 10%">Actualiza</th>
									<th style="width: 10%">Elimina</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal content-->
		<div class="modal fade" id="id_div_modal_registra">
			<div class="modal-dialog" style="width: 60%">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-ok-sign"></span> Registro de
							Proveedor
						</h4>
					</div>
					<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_registra" accept-charset="UTF-8"
							action="registraActualizaCrudProveedor" class="form-horizontal"
							method="post">
							<div class="panel-group" id="steps">
								<!-- Step 1 -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#steps"
												href="#stepOne">Datos de Modalidad</a>
										</h4>
									</div>
									<div id="stepOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
												<div class="col-lg-8">
													<input class="form-control" id="id_reg_nombre"
														name="nombre"
														placeholder="Ingrese el nombre del proveedor" type="text"
														maxlength="25" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_dni">DNI</label>
												<div class="col-lg-8">
													<input class="form-control" id="id_reg_dni" name="dni"
														placeholder="Ingrese el n�mero de dni del proveedor"
														type="text" maxlength="8" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_tipo">Tipo</label>
												<div class="col-lg-3">
													<select id="id_reg_tipo" name="tipo" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_reg_pais">Pa�s</label>
												<div class="col-lg-3">
													<select id="id_reg_pais" name="pais" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<div class="col-lg-9 col-lg-offset-3">
													<button type="button" class="btn btn-primary"
														id="id_btn_registra">REGISTRA</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>


		<div class="modal fade" id="id_div_modal_actualiza">
			<div class="modal-dialog" style="width: 60%">

				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4>
							<span class="glyphicon glyphicon-ok-sign"></span> Actualiza
							Proveedor
						</h4>
					</div>
					<div class="modal-body" style="padding: 20px 10px;">
						<form id="id_form_actualiza" accept-charset="UTF-8"
							action="registraActualizaProveedor" class="form-horizontal"
							method="post">
							<div class="panel-group" id="steps">
								<!-- Step 1 -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#steps"
												href="#stepOne">Datos de Proveedor</a>
										</h4>
									</div>
									<div id="stepOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_ID">ID</label>
												<div class="col-lg-8">
													<input class="form-control" id="id_ID" readonly="readonly"
														name="idProveedor" type="text" maxlength="8" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_nombre">Nombre</label>
												<div class="col-lg-3">
													<input class="form-control" id="id_actu_nombre"
														name="nombre"
														placeholder="Ingrese el nombre del proveedor" type="text"
														maxlength="20" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_actu_dni">DNI</label>
												<div class="col-lg-8">
													<input class="form-control" id="id_actu_dni" name="dni"
														placeholder="Ingrese el n�mero de dni del proveedor"
														type="text" maxlength="8" />
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_actu_tipo">Tipo</label>
												<div class="col-lg-3">
													<select id="id_actu_tipo" name="tipo" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label" for="id_actu_pais">Pa�s</label>
												<div class="col-lg-3">
													<select id="id_actu_pais" name="pais" class='form-control'>
														<option value=" ">[Seleccione]</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<div class="col-lg-9 col-lg-offset-3">
													<button type="button" class="btn btn-primary"
														id="id_btn_actualiza">ACTUALIZA</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</form>

					</div>
				</div>
			</div>

		</div>

	</div>


	<script type="text/javascript">
		$.getJSON("listaTipo", {}, function(data) {
			$.each(data, function(i, item) {
				$("#id_reg_tipo").append(
						"<option value="+item.idTipo +">" + item.descripcion
								+ "</option>");
				$("#id_actu_tipo").append(
						"<option value="+item.idTipo +">" + item.descripcion
								+ "</option>");
			});
		});

		$.getJSON("listaPais", {}, function(data) {
			$.each(data, function(i, item) {
				$("#id_reg_pais").append(
						"<option value="+item.idPais +">" + item.nombre
								+ "</option>");
				$("#id_actu_pais").append(
						"<option value="+item.idPais +">" + item.nombre
								+ "</option>");
			});
		});

		$("#id_btn_filtrar").click(function() {
			var fil = $("#id_txt_filtro").val();
			$.getJSON("consultarCrudProveedor", {
				"filtro" : fil
			}, function(lista) {
				agregarGrilla(lista);
			});
		});

		function agregarGrilla(lista) {
			$('#id_table').DataTable().clear();
			$('#id_table').DataTable().destroy();
			$('#id_table')
					.DataTable(
							{
								data : lista,
								searching : false,
								ordering : true,
								processing : true,
								pageLength : 5,
								lengthChange : false,
								columns : [
										{data : "idProveedor"},
										{data : "nombre"},
										{data : "dni"},
										{data : "tipo.descripcion"},
										{data : "pais.nombre"},
										{
											data : function(row, type, val,
													meta) {
												var salida = 
													'<button type="button" style="width: 90px" class="btn btn-info btn-sm" 
													id="editarBtn_'+ row.idProveedor+ '" onclick="editar(\''+ row.idProveedor+
															'\',\''+ row.nombre+ '\',\''+ row.dni+ '\',\''+ row.tipo.idTipo+
															'\',\''+ row.pais.idPais+ '\')">Editar</button>';
												return salida;
											},
											className : 'text-center'
										},
										{
											data : function(row, type, val,
													meta) {
												var salida = '<button type="button" style="width: 90px" class="btn btn-warning btn-sm" onclick="accionEliminar('
														+ row.idProveedor+ ')">Eliminar</button>';

												return salida;
											},
											className : 'text-center'
										}, ]
							});
		}

		function accionEliminar(id) {
			$.ajax({
				type : "POST",
				url : "eliminarCrudProveedor",
				data : {
					"id" : id
				},
				success : function(data) {
					$("#editarBtn_" + id).prop("disabled", true);
					var celdaEliminar = $("#id_table").DataTable().cell(
					"#editarBtn_" + id).node().nextSibling;
					$(celdaEliminar).html("Inhabilitado");
					agregarGrilla(data.lista);
				},
				error : function() {
					mostrarMensaje(MSG_ERROR);
				}
			});
		}

		function editar(id, nombre, dni, idTipo, idPais) {
			$('#id_ID').val(id);
			$('#id_actu_nombre').val(nombre);
			$('#id_actu_dni').val(dni);
			$('#id_actu_tipo').val(idTipo);
			$('#id_actu_pais').val(idPais);
			$('#id_div_modal_actualiza').modal("show");
		}

		function limpiarFormulario() {
			$('#id_reg_dni').val('');
			$('#id_reg_tipo').val('');
			$('#id_reg_pais').val('');
		}

		$("#id_btn_registra").click(function() {
			var validator = $('#id_form_registra').data('bootstrapValidator');
			validator.validate();

			if (validator.isValid()) {
				$.ajax({
					type : "POST",
					url : "registrarCrudProveedor",
					data : $('#id_form_registra').serialize(),
					success : function(data) {
						agregarGrilla(data.lista);
						$('#id_div_modal_registra').modal("hide");
						mostrarMensaje(data.mensaje);
						limpiarFormulario();
						validator.resetForm();
					},
					error : function() {
						mostrarMensaje(MSG_ERROR);
					}
				});

			}
		});

		$("#id_btn_actualiza").click(function() {
			var validator = $('#id_form_actualiza').data('bootstrapValidator');
			validator.validate();
			if (validator.isValid()) {
				$.ajax({
					type : "POST",
					url : "actualizarCrudProveedor",
					data : $('#id_form_actualiza').serialize(),
					success : function(data) {
						agregarGrilla(data.lista);
						$('#id_div_modal_actualiza').modal("hide");
						mostrarMensaje(data.mensaje);
					},
					error : function() {
						mostrarMensaje(MSG_ERROR);
					}
				});
			}
		});
	</script>

	<script type="text/javascript">
		$('#id_form_registra').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				"nombre" : {
					selector : '#id_reg_nombre',
					validators : {
						notEmpty : {
							message : 'El nombre es un campo obligatorio'
						},
						stringLength : {
							message : 'El nombre es de 5 a 100 caracteres',
							min : 5,
							max : 100
						},
						
					}
				},
				"dni" : {
					selector : "#id_reg_dni",
					validators : {
						notEmpty : {
							message : 'El dni es obligatorio'
						},
						regexp : {
							regexp : /^[0-9]{8}$/,
							message : 'el dni es 8 d�gitos'
						}
					}
				},
				"tipo.idTipo" : {
					selector : '#id_reg_tipo',
					validators : {
						notEmpty : {
							message : 'Tipo es un campo obligatorio'
						},
					}
				},
				"pais.idPais" : {
					selector : '#id_reg_pais',
					validators : {
						notEmpty : {
							message : 'Pa�s es un campo obligatorio'
						},
					}
				},

			}
		});
	</script>

	<script type="text/javascript">
		$('#id_form_actualiza').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				"nombre" : {
					selector : '#id_act_nombre',
					validators : {
						notEmpty : {
							message : 'El nombre es un campo obligatorio'
						},
						stringLength : {
							message : 'El nombre es de 5 a 100 caracteres',
							min : 5,
							max : 100
						},
						
					}
				},
				"dni" : {
					selector : "#id_act_dni",
					validators : {
						notEmpty : {
							message : 'El dni es obligatorio'
						},
						regexp : {
							regexp : /^[0-9]{8}$/,
							message : 'el dni es 8 d�gitos'
						},
						
					}
				},
				"tipo.idTipo" : {
					selector : '#id_actu_tipo',
					validators : {
						notEmpty : {
							message : 'Tipo es un campo obligatorio'
						},
					}
				},
				"pais.idPais" : {
					selector : '#id_actu_pais',
					validators : {
						notEmpty : {
							message : 'Pa�s es un campo obligatorio'
						},
					}
				},
			}
			});
	</script>
</body>
</html>
