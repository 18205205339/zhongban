package org.fkit.ebuy.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.ebuy.domain.Comment;


/**
 * BookMapper接口
 * */
public interface CommentMapper {

	/**
	 * 查询所有图书
	 * @return 图书对象集合
	 * */
//	@Select(" select * from tb_comment ")
//	List<Comment> findAll( int pid);
	
	@Select("insert into comment(comments,service,logistics,quality,image1) values(#{comments},#{service},#{logistics},#{quality},#{image1})")
	Comment insertcomment(@Param("service")String service,@Param("logistics")String logistics,@Param("quality")String quality,
			@Param("comments")String comments,@Param("image1")String image1);
	
}

