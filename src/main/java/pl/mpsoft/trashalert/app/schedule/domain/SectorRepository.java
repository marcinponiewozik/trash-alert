package pl.mpsoft.trashalert.app.schedule.domain;

import org.springframework.data.repository.Repository;

import java.util.Set;

public interface SectorRepository extends Repository<Sector, Long> {
    Sector save(Sector sector);

    Set<Sector> findAll();
}
