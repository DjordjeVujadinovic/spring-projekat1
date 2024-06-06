package com.projekat.spring_projekat.controller;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.projekat.spring_projekat.entitet.Radnik;
import com.projekat.spring_projekat.model.RadnikModel;
import com.projekat.spring_projekat.servis.RadnikServis;



import java.util.List;
@RestController
@RequestMapping (path="/api/radnik")
@RequiredArgsConstructor
@CrossOrigin
public class RadnikController {
    private final RadnikServis servis;
    @GetMapping()
    public List<Radnik> getAllRadnik() {

        return servis.getAllRadnik();
    }
    @GetMapping(path = "/{id}")
    public ResponseEntity<Radnik> getRadnikById(@PathVariable Integer id) {
        return ResponseEntity.of(servis.getRadnikById(id));
    }
    @GetMapping(path = "/email/{email}")
    public List<Radnik> getRadnikByEmail(@PathVariable String email) {

        return servis.getRadnikByEmail(email);
    }
    @PostMapping
    public Radnik createRadnik(@RequestBody RadnikModel radnik) {

        return servis.createRadnik(radnik);
    }
    @PostMapping(path = "/{id}")
    public Radnik editRadnik(@PathVariable Integer id, @RequestBody RadnikModel radnik) {
        return servis.editRadnik(id,radnik);
    }
    @DeleteMapping(path ="/{id}")
    @ResponseStatus(code= HttpStatus.NO_CONTENT)
    public void deleteRadnik(@PathVariable Integer id) {

        servis.deleteRadnik(id);
    }
}

