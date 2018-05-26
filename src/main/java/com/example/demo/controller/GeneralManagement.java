package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GeneralManagement {
	
	@GetMapping("/qlmonhoc")
	public String danhsachmonhoc() {
		return "Qlchung/qlmonhoc";
	}
	
	@GetMapping("/qlgiangvien")
	public String danhsachgiangvien() {
		return "Qlchung/qlgiangvien";
	}
	
	@GetMapping("/qldethi")
	public String danhsachdthi() {
		return "Qlchung/qldethi";
	}
	
	@GetMapping("/qllophoc")
	public String danhsachlophoc() {
		return "Qlchung/qllophoc";
	}
	
	@GetMapping("/thongkegiogiang")
	public String thongkegiogiang() {
		return "Thongke/thongkegiogiang";
	}
	
	@GetMapping("/thongkemiengiam")
	public String thongkemiengiam() {
		return "Thongke/thongkemiengiam";
	}
	
	
}
