package com.projekat.spring_projekat.entitet;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Entity(name = "radnik")
@NoArgsConstructor
@Getter
@Setter
public class Radnik {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "radnik_id")
    private Integer id;
    @Column(nullable = false )
    private String ime;
    @Column(nullable = false)
    private String prezime;
    @Column(nullable = false, unique = true)
    private String email;
    @Column(nullable = false)
    private Float satnica;

}
