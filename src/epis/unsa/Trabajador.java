package epis.unsa;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

@PersistenceCapable
public class Trabajador {
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)	
	
	private Key key;
	
	@Persistent
	private String name;
	
	@Persistent
	private String lastname;
	
	@Persistent
	private String email;
	
	@Persistent
	private int numcel;
	
	@Persistent
	private int dni;
	
	@Persistent
	private int id1;
	
	//@Primarykey
	@Persistent(valueStrategy = IdGeneratorStrategy.SEQUENCE)
	private long id;
	
	//@Persistent
	//private Almacen alt;

	public Trabajador(String name, String lastname, String email, int numcel,int dni, int id1) {
		super();
		this.name = name;
		this.lastname = lastname;
		this.email = email;
		this.numcel = numcel;
		this.id1=id1;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}	

	public int getNumcel() {
		return numcel;
	}

	public void setNumcel(int numcel) {
		this.numcel = numcel;
	}

	public int getId1() {
		return id1;
	}

	public void setId1(int id) {
		this.id = id1;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public Key getKey() {
		return key;
	}
	
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		String resp = name + " : " + lastname + " : " + email + " : " + numcel + " : " + dni +" : " + id1 + " : " + id ;  
		return resp;
	}
}

