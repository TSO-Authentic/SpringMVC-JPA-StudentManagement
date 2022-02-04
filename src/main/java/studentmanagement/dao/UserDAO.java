package studentmanagement.dao;

import java.util.List;

import studentmanagement.dto.UserDTO;

public interface UserDAO {

	public int insert(UserDTO dto);

	public int update(UserDTO dto);

	public int delete(UserDTO dto);

	public List<UserDTO> selectOne(UserDTO dto);

	public List<UserDTO> selectAll();
}
