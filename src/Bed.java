/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Asus
 */
public class Bed {
    private String bedType;
    Bed(String bedType){
        setBedType(bedType);  
    } 
    public void setBedType(String bedType){
        this.bedType = bedType;
    }
    
    public String getBedType(){
        return bedType;
    }
    
} 
class Single extends Bed{
        public Single(String bed){
            super(bed);     
                    
    }
}

class Twin extends Bed{
    public Twin(String bed){
        super(bed);
    }
}
interface Label{
    static String getNama(){
        return "Hotel Transylvania";
    }
        

}
