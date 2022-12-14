package com.gogangdo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.gogangdo.dto.FileDTO;
import com.gogangdo.dto.ProductDTO;

@Mapper
public interface ProductMapper {

	int selectProductNo();


	void registerProduct(ProductDTO dto);


	List<ProductDTO> selectProductList(int pageNo);


	int selectProductCount();


	List<ProductDTO> selectProductLowPrice(int product_price);


	FileDTO selectImageFile(int fno);


	List<ProductDTO> selectProductListRecent(int pageNo);


	List<ProductDTO> selectProductListLow(int pageNo);


	List<ProductDTO> selectProductListHigh(int pageNo);


}
