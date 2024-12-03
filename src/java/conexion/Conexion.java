package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    private static final String DB_URL = "jdbc:sqlite:D:/TiendaEcommerce.db";

	private static final String DRIVER = "org.sqlite.JDBC";
       
	// Método para obtener la conexión
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName(DRIVER); // Cargar el driver
		return DriverManager.getConnection(DB_URL);
	}

	// Método para cerrar la conexión
	public static void closeConnection(Connection connection) {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
    
}
