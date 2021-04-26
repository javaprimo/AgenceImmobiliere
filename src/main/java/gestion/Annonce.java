package gestion;

import java.sql.Date;

public class Annonce {
    private int IdAnnonce;
    private String Titre;
    private String Description;
    private int Prix;
    private boolean IsActive;
    private String Status;
    private String TypeAnnonce;
    private String ImageUrl;
    private Date DateAnnonce;
    private String Adresse;
    private int IdUtilisateur;
            
    public Annonce(){
        IdAnnonce = -1;
        Titre = "";
        Description = "";
        Prix = 0;
        IsActive = false;
        Status = "";
        TypeAnnonce = "";
        ImageUrl = "";
    }
    
       
    public int getIdAnnonce(){
        return IdAnnonce;
    }
    
    public String getTitre(){
        return Titre;
    }
    
    public String getDescription(){
        return Description;
    }
    
    public int getPrix(){
        return Prix;
    }
    
    public boolean getIsActive(){
        return IsActive;
    }
    
    public String getStatus(){
        return Status;
    }
    
    public String getTypeAnnonce(){
        return TypeAnnonce;
    }
    
    public String getImageUrl(){
        return ImageUrl;
    }
    
	public Date getDateAnnonce() {
		return DateAnnonce;
	}

	public String getAdresse() {
		return Adresse;
	}
	
	public int getIdUtilisateur() {
		return IdUtilisateur;
	}
	
	
	
	public void setDateAnnonce(Date dateAnnonce) {
		DateAnnonce = dateAnnonce;
	}
	
	public void setIdAnnonce(int idAnnonce){
        IdAnnonce = idAnnonce;
    }
    
    public void setTitre(String titre){
        Titre = titre;
    }
    
    public void setDescription(String description){
        Description = description;
    }
    
    public void setPrix(int prix){
        Prix = prix;
    }
    
    public void setIsActive(boolean isActive){
        IsActive = isActive;
    }
    
    public void setStatus(String status){
        Status = status;
    }
    
    public void setTypeAnnonce(String typeAnnonce){
        TypeAnnonce = typeAnnonce;
    }
    
    public void setImageUrl(String imageUrl){
        ImageUrl = imageUrl;
    }

	public void setAdresse(String adresse) {
		Adresse = adresse;
	}

	public void setIdUtilisateur(int idUtilisateur) {
		IdUtilisateur = idUtilisateur;
	}
}
