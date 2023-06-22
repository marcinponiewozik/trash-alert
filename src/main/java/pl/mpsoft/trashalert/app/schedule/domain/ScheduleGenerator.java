package pl.mpsoft.trashalert.app.schedule.domain;

import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.mpsoft.trashalert.app.schedule.domain.dto.TrashCategory;
import pl.mpsoft.trashalert.app.unit.Unit;
import pl.mpsoft.trashalert.app.unit.UnitRepository;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

@Transactional
@AllArgsConstructor
@Service
public class ScheduleGenerator {
    private final UnitRepository unitRepository;
    private final ScheduleRepository scheduleRepository;
    private final SectorRepository sectorRepository;
    private final GarbageCollectionDateRepository garbageCollectionDateRepository;

    public void generate(String TERYT, LocalDate start, LocalDate end, int sectorSize) {
        Unit unit = unitRepository.findOneByUniqueCode(TERYT).orElseThrow(EntityNotFoundException::new);

        Schedule schedule = new Schedule();
        schedule.setUnit(unit);
        schedule.setStartDate(start);
        schedule.setEndDate(end);
        schedule = scheduleRepository.save(schedule);

        generateSectors(schedule, sectorSize);
    }

    private void generateSectors(Schedule schedule, int sectorSize) {
        for (int i = 0; i < sectorSize; i++) {
            Sector sector = new Sector();
            sector.setSchedule(schedule);
            sector.setRowSymbol(String.valueOf(i));
            sector.setLocalities(randomString());

            sector = sectorRepository.save(sector);

            generateGarbageCollectionDates(sector, schedule.getStartDate(), schedule.getEndDate());
        }
    }

    private void generateGarbageCollectionDates(Sector sector, LocalDate startDate, LocalDate endDate) {
        generateForCategory(sector, TrashCategory.P.name());
        generateForCategory(sector, TrashCategory.ZI.name() + "," + TrashCategory.N.name());
        generateForCategory(sector, TrashCategory.Z.name());
    }

    private void generateForCategory(Sector sector, String category) {
        System.out.println("Generowanie dat dla sektora " + sector.getId() + " i kategorii " + category);
        GarbageCollectionDate trashP = new GarbageCollectionDate();
        trashP.setSector(sector);
        trashP.setDetails(randomString());
        trashP.setTrashCategory(category);
        trashP.setDate(randomDates(sector.getSchedule().getStartDate(), sector.getSchedule().getEndDate()));
        garbageCollectionDateRepository.saveAndFlush(trashP);
    }

    private Set<LocalDate> randomDates(LocalDate start, LocalDate end) {
        long months = ChronoUnit.MONTHS.between(start, end);
        Set<LocalDate> result = new HashSet<>();

        for (long i = 0; i < months; i++) {
            LocalDate date = start.plusMonths(i);
            for (int j = 0; j < getRandomNumber(1, 3); j++) {
                result.add(date.withDayOfMonth(getRandomNumber(1, date.lengthOfMonth())));
            }
        }

        return result;
    }

    private String randomString() {
        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
        Random random = new Random();

        return random.ints(leftLimit, rightLimit + 1)
                .limit(targetStringLength)
                .collect(StringBuilder::new, StringBuilder::appendCodePoint, StringBuilder::append)
                .toString();
    }

    private int getRandomNumber(int min, int max) {
        return (int) ((Math.random() * (max - min)) + min);
    }
}
