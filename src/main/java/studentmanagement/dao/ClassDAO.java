package studentmanagement.dao;

import java.util.List;

import studentmanagement.dto.ClassDTO;

public interface ClassDAO {

	public int insert(ClassDTO dto);
	
	public List<ClassDTO> selectOne(ClassDTO dto);
	
	public List<ClassDTO> selectAll();
}
