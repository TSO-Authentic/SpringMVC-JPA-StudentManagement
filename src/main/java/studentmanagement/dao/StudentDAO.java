package studentmanagement.dao;

import java.util.List;

import studentmanagement.dto.StudentDTO;

public interface StudentDAO {

	public int insert(StudentDTO dto);
	
	public int update(StudentDTO dto);
	
	public int delete(StudentDTO dto);
	
	public List<StudentDTO> selectOne(StudentDTO dto);
	
	public List<StudentDTO> selectAll();
}
