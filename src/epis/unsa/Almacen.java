package epis.unsa;

import java.util.List;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

public class Almacen {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	private Key key;
	
	@Persistent
	private String name;
	
	@Persistent
	private String tipo;
	
	@Persistent
	private String location;
	
	@Persistent
	private int id;	
	
	@Persistent
	List<Producto> proc;

	public Almacen(String name, String tipo,  String location, int id
			/*List<Producto> proc*/) {
		super();
		this.name = name;
		this.tipo = tipo;
		this.id = id;
		this.location = location;
		//this.proc = proc;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public List<Producto> getProc() {
		return proc;
	}

	public void setProc(List<Producto> proc) {
		this.proc = proc;
	}

	@Override
	public String toString() {
		return "Almacen [name=" + name + ", tipo=" + tipo + ", id=" + id
				+ ", location=" + location /*+ ", proc=" + proc*/ + "]";
	}	

}
