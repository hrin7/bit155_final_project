package kr.or.bit3004.kanban;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public interface KanbanService {
	//List title insert

	public int updateListTite(KanbanList kanbanlist);
	
	public List<Map> allKanbanList(int allBoardListNo);

	public List<Map> kanbanCardList();
	public List<Map> kanbanListJoinCard(int allBoardListNo);

	public int insertListTite(KanbanList kanbanlist, Principal principal);


	public List<Map> kanbanList(int teamNo);
	
	
	
	
	//delete kanban list
	public void deleteKanbanList(String listTitle);
	
	public int insertCardTitle(String title , int kanbanListNo);
	
	public List<KanbanList> kanbanListFromAllBoardListNo(int allBoardListNo);
	public void updateCardTitle(String title , int cardNo);
	public KanbanCard kanbanCardContent(int cardNo);
}
