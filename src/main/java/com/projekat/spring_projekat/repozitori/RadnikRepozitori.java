package com.projekat.spring_projekat.repozitori;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.projekat.spring_projekat.entitet.Radnik;


import java.util.List;
import java.util.Optional;

@Repository
public interface RadnikRepozitori extends JpaRepository<Radnik, Integer> {

    List<Radnik> findByEmailContains(String email);
}
