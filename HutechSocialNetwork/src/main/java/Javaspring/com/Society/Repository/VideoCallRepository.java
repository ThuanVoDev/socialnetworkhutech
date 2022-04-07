package Javaspring.com.Society.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import Javaspring.com.Society.Entities.VideoCallEntity;

public interface VideoCallRepository extends JpaRepository<VideoCallEntity, Long>{
	public VideoCallEntity findOneByRoomcode(String roomcode);

}
