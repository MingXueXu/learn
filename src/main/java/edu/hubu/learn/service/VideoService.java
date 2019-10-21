package edu.hubu.learn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import edu.hubu.learn.dao.VideoDao;
import edu.hubu.learn.entity.Video;

@Service
public class VideoService {

    @Autowired
    private VideoDao dao;

    public Video getVideo(Long id) {
        return dao.findById(id).get();
    }

    public List<Video> getVideos() {
        return dao.findAll(new Sort(Direction.DESC, "id"));
    }
    
}