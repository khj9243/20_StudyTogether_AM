package com.kh.lector.model.vo;

import java.util.Date;

public class LectorWatch {

    private int watchNo;
    private int watchNoRef;
    private String watchTitle;
    private String watchWriter;
    private String watchDetail;
    private int watchPrice;
    private String watchOriginalVideo;
    private String watchRenamedVideo;
    private Date watchDate;
    private int watchLevel;
   
  
	public LectorWatch() {
		// TODO Auto-generated constructor stub
	}


	public LectorWatch(int watchNo, int watchNoRef, String watchTitle, String watchWriter, String watchDetail,
			int watchPrice, String watchOriginalVideo, String watchRenamedVideo, Date watchDate, int watchLevel) {
		super();
		this.watchNo = watchNo;
		this.watchNoRef = watchNoRef;
		this.watchTitle = watchTitle;
		this.watchWriter = watchWriter;
		this.watchDetail = watchDetail;
		this.watchPrice = watchPrice;
		this.watchOriginalVideo = watchOriginalVideo;
		this.watchRenamedVideo = watchRenamedVideo;
		this.watchDate = watchDate;
		this.watchLevel = watchLevel;
	}


	public int getWatchNo() {
		return watchNo;
	}


	public void setWatchNo(int watchNo) {
		this.watchNo = watchNo;
	}


	public int getWatchNoRef() {
		return watchNoRef;
	}


	public void setWatchNoRef(int watchNoRef) {
		this.watchNoRef = watchNoRef;
	}


	public String getWatchTitle() {
		return watchTitle;
	}


	public void setWatchTitle(String watchTitle) {
		this.watchTitle = watchTitle;
	}


	public String getWatchWriter() {
		return watchWriter;
	}


	public void setWatchWriter(String watchWriter) {
		this.watchWriter = watchWriter;
	}


	public String getWatchDetail() {
		return watchDetail;
	}


	public void setWatchDetail(String watchDetail) {
		this.watchDetail = watchDetail;
	}


	public int getWatchPrice() {
		return watchPrice;
	}


	public void setWatchPrice(int watchPrice) {
		this.watchPrice = watchPrice;
	}


	public String getWatchOriginalVideo() {
		return watchOriginalVideo;
	}


	public void setWatchOriginalVideo(String watchOriginalVideo) {
		this.watchOriginalVideo = watchOriginalVideo;
	}


	public String getWatchRenamedVideo() {
		return watchRenamedVideo;
	}


	public void setWatchRenamedVideo(String watchRenamedVideo) {
		this.watchRenamedVideo = watchRenamedVideo;
	}


	public Date getWatchDate() {
		return watchDate;
	}


	public void setWatchDate(Date watchDate) {
		this.watchDate = watchDate;
	}


	public int getWatchLevel() {
		return watchLevel;
	}


	public void setWatchLevel(int watchLevel) {
		this.watchLevel = watchLevel;
	}


	@Override
	public String toString() {
		return "LectorWatch [watchNo=" + watchNo + ", watchNoRef=" + watchNoRef + ", watchTitle=" + watchTitle
				+ ", watchWriter=" + watchWriter + ", watchDetail=" + watchDetail + ", watchPrice=" + watchPrice
				+ ", watchOriginalVideo=" + watchOriginalVideo + ", watchRenamedVideo=" + watchRenamedVideo
				+ ", watchDate=" + watchDate + ", watchLevel=" + watchLevel + "]";
	}


	
 

}
