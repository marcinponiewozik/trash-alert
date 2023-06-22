package pl.mpsoft.trashalert.app.schedule.domain;

import org.springframework.data.repository.Repository;

public interface GarbageCollectionDateRepository extends Repository<GarbageCollectionDate, Long> {
    GarbageCollectionDate saveAndFlush(GarbageCollectionDate date);
}
