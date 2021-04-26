package gestion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AnnoncesRepository {
    public AnnoncesRepository(){}
    public List<Annonce> getAllAnnoncesByType() throws SQLException, ClassNotFoundException{
    	Connection con = null;
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenceimmobiliere","root","");
        	String selectQueryStr = "select annonce.IdAnnonce, annonce.Titre, annonce.Description, annonce.Adresse, "
        			+ "annonce.Prix, annonce.DateAnnonce, annonce.Url_Image, typestatus.Libelle, typeannonce.Nom "
        			+ "from annonce inner join typestatus on annonce.IdStatus = typestatus.IdStatus "
        			+ "inner join typeannonce on annonce.IdTypeAnnonce = typeannonce.IdTypeAnnonce "
        			+ "where annonce.IsActive = 1 and annonce.IdStatus in (3, 4) order by annonce.DateAnnonce desc limit 3";
            ResultSet resultSet = con.createStatement().executeQuery(selectQueryStr);
            List<Annonce> annonces = new ArrayList<Annonce>();
            while (resultSet.next()) {
                annonces.add(buildAnnonce(resultSet));
            }
            return annonces;
        }
        catch(Exception ex) {
        	System.out.println("==> "+ex.getMessage());
        }
        finally {
        	con.close();
        }

        return null;
    }
    
    public List<Annonce> getAnnoncesByType(String typeAnnonce) throws SQLException, ClassNotFoundException{
    	Connection con = null;
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenceimmobiliere","root","");
        	String selectQueryStr = "select annonce.IdAnnonce, annonce.Titre, annonce.Description, annonce.Adresse, "
        			+ "annonce.Prix, annonce.DateAnnonce, annonce.Url_Image, typestatus.Libelle, typeannonce.Nom "
        			+ "from annonce inner join typestatus on annonce.IdStatus = typestatus.IdStatus "
        			+ "inner join typeannonce on annonce.IdTypeAnnonce = typeannonce.IdTypeAnnonce "
        			+ "where annonce.IsActive = 1 and annonce.IdStatus = 1 and annonce.IdTypeAnnonce = " + typeAnnonce 
        			+ " order by annonce.DateAnnonce desc";
            ResultSet resultSet = con.createStatement().executeQuery(selectQueryStr);
            List<Annonce> annonces = new ArrayList<Annonce>();
            while (resultSet.next()) {
                annonces.add(buildAnnonce(resultSet));
            }
            return annonces;
        }
        catch(Exception ex) {
        	System.out.println("==> " +ex.getMessage());
        }
        finally {
        	con.close();
        }

        return null;
    }
    
    public AnnonceDetails getAnnonceDetailsById(String idAnnonce) throws SQLException, ClassNotFoundException{
    	Connection con = null;
        try
        {
        	Class.forName("com.mysql.jdbc.Driver");
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/agenceimmobiliere","root","");
        	String selectQueryStr = "select annonce.IdAnnonce, annonce.Titre, annonce.Description, annonce.Adresse, "
        			+ "annonce.Prix, annonce.DateAnnonce, annonce.Url_Image, typestatus.Libelle, typeannonce.Nom, "
        			+ "utilisateur.Nom, utilisateur.Prenom, utilisateur.Email, utilisateur.Telephone "
        			+ "from annonce inner join typestatus on annonce.IdStatus = typestatus.IdStatus "
        			+ "inner join typeannonce on annonce.IdTypeAnnonce = typeannonce.IdTypeAnnonce "
        			+ "inner join utilisateur on annonce.IdUtilisateur = utilisateur.IdUtilisateur "
        			+ "where annonce.IdAnnonce = " + idAnnonce;
            ResultSet resultSet = con.createStatement().executeQuery(selectQueryStr);
            if(resultSet.next()) {
            	return buildAnnonceDetails(resultSet);
            }
            
            return null;
        }
        catch(Exception ex) {
        	System.out.println("==> " +ex.getMessage());
        }
        finally {
        	con.close();
        }

        return null;
    }
    
    
    public Annonce buildAnnonce(ResultSet resultSet) throws SQLException, ClassNotFoundException{
        Annonce annonce = new Annonce();
        annonce.setIdAnnonce(resultSet.getInt("IdAnnonce"));            
        annonce.setTitre(resultSet.getString("Titre"));
        annonce.setDescription(resultSet.getString("Description"));
        annonce.setPrix(resultSet.getInt("Prix"));
        annonce.setDateAnnonce(resultSet.getDate("DateAnnonce"));
        annonce.setImageUrl(resultSet.getString("Url_Image"));
        annonce.setStatus(resultSet.getString("Nom"));
        annonce.setTypeAnnonce(resultSet.getString("Libelle"));
        annonce.setAdresse(resultSet.getString("Adresse"));

        return annonce;
    }
    
    public AnnonceDetails buildAnnonceDetails(ResultSet resultSet) throws SQLException, ClassNotFoundException{
    	AnnonceDetails AnnonceDetails = new AnnonceDetails();
    	AnnonceDetails.setIdAnnonce(resultSet.getInt("IdAnnonce"));            
    	AnnonceDetails.setTitre(resultSet.getString("Titre"));
    	AnnonceDetails.setDescription(resultSet.getString("Description"));
    	AnnonceDetails.setPrix(resultSet.getInt("Prix"));
        AnnonceDetails.setDateAnnonce(resultSet.getDate("DateAnnonce"));
        AnnonceDetails.setImageUrl(resultSet.getString("Url_Image"));
        AnnonceDetails.setStatus(resultSet.getString("Nom"));
        AnnonceDetails.setTypeAnnonce(resultSet.getString("Libelle"));
        AnnonceDetails.setAdresse(resultSet.getString("Adresse"));
        AnnonceDetails.setEmail(resultSet.getString("Email"));
        AnnonceDetails.setTelephone(resultSet.getString("Telephone"));

        return AnnonceDetails;
    }
}
