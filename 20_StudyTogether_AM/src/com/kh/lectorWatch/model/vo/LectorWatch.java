package com.kh.lectorWatch.model.vo;

import java.util.Date;

public class LectorWatch {

    private int WatchNo;
    private int refLectorNo;
    private String watchTitle;
    private String watchWriter;
    private String watchDetail;
    private int watchPrice;
    private String watchOriginalVideo;
    private String watchRenamedVideo;
    private Date watchDate;
    
    public LectorWatch() {
		// TODO Auto-generated constructor stub
	}

	public LectorWatch(int watchNo, int refLectorNo, String watchTitle, String watchWriter, String watchDetail,
			int watchPrice, String watchOriginalVideo, String watchRenamedVideo, Date watchDate) {
		super();
		WatchNo = watchNo;
		this.refLectorNo = refLectorNo;
		this.watchTitle = watchTitle;
		this.watchWriter = watchWriter;
		this.watchDetail = watchDetail;
		this.watchPrice = watchPrice;
		this.watchOriginalVideo = watchOriginalVideo;
		this.watchRenamedVideo = watchRenamedVideo;
		this.watchDate = watchDate;
	}

	public int getWatchNo() {
		return WatchNo;
	}

	public void setWatchNo(int watchNo) {
		WatchNo = watchNo;
	}

	public int getRefLectorNo() {
		return refLectorNo;
	}

	public void setRefLectorNo(int refLectorNo) {
		this.refLectorNo = refLectorNo;
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

	@Override
	public String toString() {
		return "LectorWatch [WatchNo=" + WatchNo + ", refLectorNo=" + refLectorNo + ", watchTitle=" + watchTitle
				+ ", watchWriter=" + watchWriter + ", watchDetail=" + watchDetail + ", watchPrice=" + watchPrice
				+ ", watchOriginalVideo=" + watchOriginalVideo + ", watchRenamedVideo=" + watchRenamedVideo
				+ ", watchDate=" + watchDate + "]";
	}

	
    
    
    
    
 

}
