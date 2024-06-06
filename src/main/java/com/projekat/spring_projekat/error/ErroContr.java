package com.projekat.spring_projekat.error;


import jakarta.servlet.http.HttpServletRequest;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice

public class ErroContr {
    @ExceptionHandler (DataIntegrityViolationException.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ExModel handleDataIntegrityViolationException(Exception ex, HttpServletRequest request) {
        ExModel model=new ExModel();
        model.setPoruka("Doslo je do greske");
        model.setPoruka(ex.getMessage());
        return model;
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    public ExModel exception(Exception ex, HttpServletRequest request){
        ExModel model=new ExModel();
        model.setPoruka(ex.getMessage());
        return model;
    }



}
