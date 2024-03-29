package ru.digitalliague.questionsserver.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import ru.digitalliague.questionsserver.entity.Profile;
import ru.digitalliague.questionsserver.exceptions.ProfileNotFoundException;
import ru.digitalliague.questionsserver.modelDTO.ProfileDto;
import ru.digitalliague.questionsserver.repositories.ProfileRepository;
import ru.digitalliague.questionsserver.util.Mapper;

import java.util.List;

@Service
@AllArgsConstructor
public class ProfileService {

       private ProfileRepository repository;
       private Mapper mapper;

       public List<ProfileDto> getAllProfile(){
           List<Profile> all = repository.findAll();
           if (all.isEmpty()) throw new ProfileNotFoundException();
          return mapper.mapping(all,ProfileDto.class);

       }

       public void addProfile(ProfileDto profileDto){
           Profile profile = mapper.mapping(profileDto, Profile.class);
           repository.save(profile);
       }

}
