package br.com.michelin;

import javax.persistence.*;

@Entity
public class Restaurante {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private String endereco;
    private String telefone;
    private String site;
    private String foto;
    @Enumerated(EnumType.STRING)
    private Tipo tipo;
    private boolean ehFavorito;

    @Deprecated
    public Restaurante(){
    }

    public Long getId() {
        return id;
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

    public boolean isEhFavorito() {
        return ehFavorito;
    }

    public void setEhFavorito(boolean ehFavorito) {
        this.ehFavorito = ehFavorito;
    }

    public Restaurante(String nome, String endereco, String telefone, String site, String foto, Tipo tipo) {

        this.nome = nome;
        this.endereco = endereco;
        this.telefone = telefone;
        this.site = site;
        this.foto = foto;
        this.tipo = tipo;
    }
}
