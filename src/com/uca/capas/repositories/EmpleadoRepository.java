package com.uca.capas.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.uca.capas.domain.Empleado;


@Repository
public interface EmpleadoRepository extends JpaRepository<Empleado, Integer> {

		public List<Empleado> findAll();
		
		@Query(nativeQuery= true,value="select * "
				+"from Empleado "
				+ "where id_sucursal = ?1")
	    public List<Empleado> findOne(int id);
		
		@Query(nativeQuery= true,value="select * "
				+"from Empleado "
				+ "where id_empleado = ?1")
	    public Empleado findUser(int id);
		
		
}
