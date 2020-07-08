package kr.or.bit3004.service;

import java.util.List;

import kr.or.bit3004.dto.GroupAndTeam;

public interface TeamMainService {
	public List<GroupAndTeam> selectGroupName(String id);
	public List<GroupAndTeam> selectGroupAndTeam(String id);
	public int getCurrGroupNo();
	public void insertGroup(GroupAndTeam group);
	public void moveAndDelGroup(int groupNo);
}