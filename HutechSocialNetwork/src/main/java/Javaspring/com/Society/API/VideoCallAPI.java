package Javaspring.com.Society.API;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import Javaspring.com.Society.DTO.VideoCallDTO;
import Javaspring.com.Society.ServiceUser.VideoCallService;

@RestController(value = "videocallAPIOfAdmin")
public class VideoCallAPI {
	public ModelAndView _mvShare = new ModelAndView();
	@Autowired
	public VideoCallService videoCallService;

	@PostMapping("api/user/videocall")
	public int createRoom(@RequestBody VideoCallDTO videoCallDTO) {
		VideoCallDTO video = videoCallService.findOneByRoomcode(videoCallDTO.getRoomcode());
		
		if(video == null) {
			videoCallService.save(videoCallDTO);
			return 1;
		}else {
			return 0;
		}
		
	}
}
