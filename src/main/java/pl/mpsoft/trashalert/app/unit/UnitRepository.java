package pl.mpsoft.trashalert.app.unit;

import org.springframework.data.repository.Repository;

import java.time.LocalDate;
import java.util.Optional;
import java.util.Set;

public interface UnitRepository extends Repository<Unit, Long> {
    Optional<Unit> findOneByUniqueCode(String uniqueCode);
    Set<Unit> findTop10ByLicenseEndDateGreaterThanEqualAndNameContainingIgnoreCase(LocalDate licenseEndDate, String nameSearch);
    Set<Unit> findTop10ByLicenseEndDateGreaterThanEqual(LocalDate licenseEndDate);

    Unit findOneById(Long id);
}
