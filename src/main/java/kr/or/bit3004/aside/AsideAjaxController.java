package kr.or.bit3004.aside;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.or.bit3004.groupAndTeam.TeamMember;
import kr.or.bit3004.user.User;

@RestController
public class AsideAjaxController {
	
	@Autowired
	private AsideService service;
	
	@RequestMapping("insertAllBoard.do")
	public int insertAllBoard(AllBoardList allBoard) {
		service.insertAllBoard(allBoard);
		return service.getCurrAllBoardListNo();
	}

	@RequestMapping("searchUser.do")
	public List<String> searchUser(String id) {
		return service.searchUser(id);
	}
	
	@RequestMapping("inviteMember.do")
	public User selectInvitedMemberInfo(TeamMember teamMember) {
		service.inviteMember(teamMember);
		return service.selectInvitedMemberInfo(teamMember.getId());
	}
}
