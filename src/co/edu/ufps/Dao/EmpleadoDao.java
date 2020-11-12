package co.edu.ufps.Dao;

import co.edu.ufps.Entities.Empleado;
import co.edu.ufps.Util.Conexion;

public class EmpleadoDao extends Conexion<Empleado> implements GenericDao<Empleado> {
	
	
	public EmpleadoDao() {
		super (Empleado.class);
	}
	

}
