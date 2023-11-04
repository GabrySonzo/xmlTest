import java.io.*;
public class Cinema {
    protected int id;
    protected String comune;
    protected String provincia;
    protected String nome;
    protected int posti;
    
    public Cinema() {
        id=0;
        comune="";
        provincia="";
        nome="";
        posti=0;
    }

    public Cinema(int id, String comune, String provincia, String nome, int posti) {
        this.id=id;
        this.comune=comune;
        this.provincia=provincia;
        this.nome=nome;
        this.posti=posti;
    }
}