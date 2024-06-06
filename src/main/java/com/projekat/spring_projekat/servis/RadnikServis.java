package com.projekat.spring_projekat.servis;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.projekat.spring_projekat.entitet.Radnik;
import com.projekat.spring_projekat.model.RadnikModel;
import com.projekat.spring_projekat.repozitori.RadnikRepozitori;



import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Component;
@Component

@Service
@RequiredArgsConstructor
public class RadnikServis {

    private final RadnikRepozitori repository;

    public List<Radnik> getAllRadnik(){

        return repository.findAll();
    }
    public  Optional<Radnik> getRadnikById(Integer id){
        return repository.findById(id);

    }
    public List<Radnik> getRadnikByEmail(String email){

        return repository.findByEmailContains(email);
    }
    public  Radnik createRadnik(RadnikModel model){
        Radnik radnik = new Radnik();
        radnik.setIme(model.getIme());
        radnik.setPrezime(model.getPrezime());
        radnik.setEmail(model.getEmail());
        radnik.setSatnica(model.getSatnica());
        return repository.save(radnik);
    }
    public Radnik editRadnik(Integer id, RadnikModel model){
        Radnik radnik = repository.findById(id).orElseThrow();
        radnik.setIme(model.getIme());
        radnik.setPrezime(model.getPrezime());
        radnik.setEmail(model.getEmail());
        radnik.setSatnica(model.getSatnica());
        return repository.save(radnik);
    }

    public void deleteRadnik(Integer id){
        Radnik radnik = repository.findById(id).orElseThrow();
        repository.delete(radnik);
    }
}
