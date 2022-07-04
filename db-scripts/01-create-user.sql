CREATE DATABASE planillas;package com.example.asys.Entities;

public class Course {
    private String aula;
    private String horario;
    private String nombrecurso;
    private String nombredocente;

    public String getAula() {
        return aula;
    }

    public void setAula(String aula) {
        this.aula = aula;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getNombrecurso() {
        return nombrecurso;
    }

    public void setNombrecurso(String nombrecurso) {
        this.nombrecurso = nombrecurso;
    }

    public String getNombredocente() {
        return nombredocente;
    }

    public void setNombredocente(String nombredocente) {
        this.nombredocente = nombredocente;
    }

    public Course(){}

    public Course(String aula, String horario, String nombrecurso, String nombredocente) {
        this.aula = aula;
        this.horario = horario;
        this.nombrecurso = nombrecurso;
        this.nombredocente = nombredocente;
    }
}
