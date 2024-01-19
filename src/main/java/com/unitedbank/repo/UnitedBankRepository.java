package com.unitedbank.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.unitedbank.entity.UnitedBank;

@Repository
public interface UnitedBankRepository extends JpaRepository<UnitedBank, Long> 
{

}
