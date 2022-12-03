package com.mycompany.myapp.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mycompany.myapp.board.BoardVO;
import com.mycompany.myapp.common.JDBCUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    private final String BOARD_INSERT = "insert into ITEMS (item, writer, photo, price, content, method) values (?,?,?,?,?,?)";
    private final String BOARD_UPDATE = "update ITEMS set item=?, writer=?, photo=?, price=?, content=?, method=? where seq=?";
    private final String BOARD_DELETE = "delete from ITEMS  where seq=?";
    private final String BOARD_GET = "select * from ITEMS  where seq=?";
    private final String BOARD_LIST = "select * from ITEMS order by seq desc";

    public void setJdbcTemplate(JdbcTemplate jdbctemplate){
        this.jdbcTemplate = jdbctemplate;
    }



    public int insertBoard(BoardVO vo) {
        String sql = "insert into ITEMS (item, writer, photo, price, content, method) values ("
                +"'"+vo.getItem()+"',"
                +"'"+vo.getWriter()+"',"
                +"'"+vo.getPhoto()+"',"
                +"'"+vo.getPrice()+"',"
                +"'"+vo.getContent()+"',"
                +"'"+vo.getMethod()+"')";
                return jdbcTemplate.update(sql);
    }

    // 글 삭제
    public int deleteBoard(int seq) {
        String sql = "delete from ITEMS where seq =" + seq;
        return jdbcTemplate.update(sql);
    }
    public int updateBoard(BoardVO vo) {
        String sql = "update ITEMS set item ='" + vo.getItem() + "',"
                + "writer ='" + vo.getWriter() + "',"
                + "photo ='" + vo.getPhoto() + "',"
                + "price ='" + vo.getPrice() + "',"
                + "content ='" + vo.getContent() + "',"
                + "method ='" + vo.getMethod() + "'where seq =" +vo.getSeq();
        return jdbcTemplate.update(sql);
    }

    class BoardRowMapper implements RowMapper<BoardVO>{
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setItem(rs.getString("item"));
            vo.setWriter(rs.getString("writer"));
            vo.setPhoto(rs.getString("photo"));
            vo.setPrice(rs.getString("price"));
            vo.setContent(rs.getString("content"));
            vo.setMethod(rs.getString("method"));
            vo.setRegdate(rs.getDate("regdate"));
            vo.setUpdateAt(rs.getDate("updateAt"));

            return vo;
        }
    }

    public BoardVO getBoard(int seq) {
        String sql ="select * from ITEMS where seq =" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList() {
        String sql = "select * from ITEMS order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }

}



