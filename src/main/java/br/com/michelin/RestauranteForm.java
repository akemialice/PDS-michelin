package br.com.michelin;


public class RestauranteForm {

    private String nome;

    private String endereco;

    private String telefone;

    private String site;

    private String foto;

    private Tipo tipo;

    public RestauranteForm(){

    }

    public String getNome() {
        return nome;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public String getSite() {
        return site;
    }

    public String getFoto() {
        return foto;
    }

    public Tipo getTipo() {
        return tipo;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public void setTipo(Tipo tipo) {
        this.tipo = tipo;
    }

    public Restaurante toModel(){
        return new Restaurante(nome, endereco, telefone, site, foto, tipo);
    }
}


