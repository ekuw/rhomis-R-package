library(testthat)
library(tibble)

testthat::test_that("Can correctly convert crop yield units", {

  data <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_use_1"=c("eat","eat sell","eat sell feed_lvstk"),
    "crop_consumed_1"=c(NA,"most","half"),
    "crop_sold_1"=c(NA,"little","half"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_2"=c("most","half","underhalf"),
    "crop_sold_2"=c("little","half","most"),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_3"=c(NA,NA,NA),
    "crop_sold_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))


  actual_result<-convert_crop_yield_units(data)
  expected_result <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_yield_units_numeric_1"=c(1,100,1000),
    "crop_use_1"=c("eat","eat sell","eat sell feed_lvstk"),
    "crop_consumed_1"=c(NA,"most","half"),
    "crop_sold_1"=c(NA,"little","half"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_yield_units_numeric_2"=c(1,NA,NA),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_2"=c("most","half","underhalf"),
    "crop_sold_2"=c("little","half","most"),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_yield_units_numeric_3"=c(1,225,NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_3"=c(NA,NA,NA),
    "crop_sold_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))

  expect_equal(actual_result, expected_result)


  data <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_use_1"=c("eat","eat sell","eat sell feed_lvstk"),
    "crop_consumed_1"=c(NA,"most","half"),
    "crop_sold_1"=c(NA,"little","half"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_2"=c("most","half","underhalf"),
    "crop_sold_2"=c("little","half","most"),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_3"=c(NA,NA,NA),
    "crop_sold_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))

  expected_result <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_use_1"=c("eat","eat sell","eat sell feed_lvstk"),
    "crop_consumed_1"=c(NA,"most","half"),
    "crop_sold_1"=c(NA,"little","half"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_2"=c("most","half","underhalf"),
    "crop_sold_2"=c("little","half","most"),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_3"=c(NA,NA,NA),
    "crop_sold_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))

  testthat::expect_warning(actual_result<-convert_crop_yield_units(data))

  expect_equal(actual_result, expected_result)




})


testthat::test_that("Can calculate crop yields for individual loops", {

  data <- tibble::as_tibble(list("crop_yield_1"=c(50,20,10),
                                 "crop_yield_units_numeric_1"=c(1,1000,NA)))



  actual_result<-crop_harvest_single_loop(data, loop_number = 1)
  expected_result <- c(50,20000,NA)
  expect_equal(actual_result, expected_result)
})

testthat::test_that("Can calculate crop yields for multiple_loops", {
  data <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_use_1"=c("eat","eat sell","eat sell feed_lvstk"),
    "crop_consumed_1"=c(NA,"most","half"),
    "crop_sold_1"=c(NA,"little","half"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_2"=c("most","half","underhalf"),
    "crop_sold_2"=c("little","half","most"),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_3"=c(NA,NA,NA),
    "crop_sold_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))

  actual_result<-crop_harvest_calculations(data)
  expected_result <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_yield_units_numeric_1"=c(1,100,1000),
    "crop_harvest_kg_per_year_1"=c(50,2000,10000),
    "crop_use_1"=c("eat","eat sell","eat sell feed_lvstk"),
    "crop_consumed_1"=c(NA,"most","half"),
    "crop_sold_1"=c(NA,"little","half"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_yield_units_numeric_2"=c(1,NA,NA),
    "crop_harvest_kg_per_year_2"=c(12,NA,NA),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_2"=c("most","half","underhalf"),
    "crop_sold_2"=c("little","half","most"),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_yield_units_numeric_3"=c(1,225,NA),
    "crop_harvest_kg_per_year_3"=c(25,22500,NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_3"=c(NA,NA,NA),
    "crop_sold_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))
  expect_equal(actual_result, expected_result)
})


testthat::test_that("Can split crop use proportions", {
  data <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_use_1"=c("eat","eat sell","eat sell feed_livestock"),
    "crop_consumed_prop_1"=c(NA,"most","half"),
    "crop_sold_prop_1"=c(NA,"little","little"),
    "crop_feed_lstk_prop_1"=c(NA,NA,"little"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_prop_2"=c("most","half","underhalf"),
    "crop_sold_prop_2"=c("little","half","most"),
    "crop_feed_lstk_prop_2"=c(NA,NA,NA),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_prop_3"=c(NA,NA,NA),
    "crop_sold_prop_3"=c(NA,NA,NA),
    "crop_feed_lstk_prop_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))

  expected_result  <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_use_1"=c("eat","eat sell","eat sell feed_livestock"),
    "crop_consumed_prop_1"=c(NA,"most","half"),
    "crop_consumed_prop_numeric_1"=c(1,0.7,0.5),
    "crop_sold_prop_1"=c(NA,"little","little"),
    "crop_sold_prop_numeric_1"=c(NA,0.1,0.1),
    "crop_feed_lstk_prop_1"=c(NA,NA,"little"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_prop_2"=c("most","half","underhalf"),
    "crop_consumed_prop_numeric_2"=c(0.7,0.5,0.2),
    "crop_sold_prop_2"=c("little","half","most"),
    "crop_sold_prop_numeric_2"=c(0.1,0.5,0.7),
    "crop_feed_lstk_prop_2"=c(NA,NA,NA),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_prop_3"=c(NA,NA,NA),
    "crop_consumed_prop_numeric_3"=c(NA,1,NA),
    "crop_sold_prop_3"=c(NA,NA,NA),
    "crop_sold_prop_numeric_3"=c(1,NA,NA),
    "crop_feed_lstk_prop_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))


  actual_result<-crop_proportions_all(data)
  expect_equal(actual_result, expected_result)
})

testthat::test_that("Can convert_crop_income_units",{
  data <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_use_1"=c("eat","eat sell","eat sell feed_livestock"),
    "crop_consumed_prop_1"=c(NA,"most","half"),
    "crop_sold_prop_1"=c(NA,"little","little"),
    "crop_feed_lstk_prop_1"=c(NA,NA,"little"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_prop_2"=c("most","half","underhalf"),
    "crop_sold_prop_2"=c("little","half","most"),
    "crop_feed_lstk_prop_2"=c(NA,NA,NA),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_prop_3"=c(NA,NA,NA),
    "crop_sold_prop_3"=c(NA,NA,NA),
    "crop_feed_lstk_prop_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))

  expected_result <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_use_1"=c("eat","eat sell","eat sell feed_livestock"),
    "crop_consumed_prop_1"=c(NA,"most","half"),
    "crop_sold_prop_1"=c(NA,"little","little"),
    "crop_feed_lstk_prop_1"=c(NA,NA,"little"),
    "crop_sold_income_1"=c(200,500,800),
    "crop_sold_price_quantityunits_1"=c("price_per_kg","price_per_bag_50kg","price_per_quintal"),
    "crop_sold_units_numeric_1"=c("1","0.02","0.01"),
    "crop_who_control_revenue_1"=c("male_adult","male_adult female_adult",NA),
    "crop_consume_control_1"=c(NA,"male_adult female_adult female_youth","male_youth"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_prop_2"=c("most","half","underhalf"),
    "crop_sold_prop_2"=c("little","half","most"),
    "crop_feed_lstk_prop_2"=c(NA,NA,NA),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),
    "crop_sold_units_numeric_2"=c("total_income_per_year","1","0.01"),
    "crop_who_control_revenue_2"=c("male_adult","female_adult","male_adult"),
    "crop_consume_control_2"=c("male_youth male_adult","female_youth female_adult","male_adult"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_prop_3"=c(NA,NA,NA),
    "crop_sold_prop_3"=c(NA,NA,NA),
    "crop_feed_lstk_prop_3"=c(NA,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA),
    "crop_sold_units_numeric_3"=c("total_income_per_year","0.022",NA),
    "crop_who_control_revenue_3"=c("male_adult","female_adult",NA),
    "crop_consume_control_3"=c("male_adult male_adult","female_adult female_adult",NA)
  ))
  actual_result <- convert_crop_sold_units(data)
  expect_equal(actual_result, expected_result)

})


testthat::test_that("Crop consumed and sold correctly calculated", {
  data  <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_harvest_kg_per_year_1"=c(50,2000,10000),
    "crop_use_1"=c("eat","eat sell","eat sell feed_livestock"),
    "crop_consumed_prop_1"=c(NA,"most","half"),
    "crop_sold_prop_1"=c(NA,"little","little"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_harvest_kg_per_year_2"=c(12,NA,NA),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_prop_2"=c("most","half","underhalf"),
    "crop_sold_prop_2"=c("little","half","most"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_harvest_kg_per_year_3"=c(25,22500,NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_prop_3"=c(NA,NA,NA),
    "crop_sold_prop_3"=c(NA,NA,NA)))

  expected_result  <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_harvest_kg_per_year_1"=c(50,2000,10000),
    "crop_use_1"=c("eat","eat sell","eat sell feed_livestock"),
    "crop_consumed_prop_1"=c(NA,"most","half"),
    "crop_consumed_prop_numeric_1"=c(1,0.7,0.5),
    "crop_consumed_kg_per_year_1"=c(50,1400,5000),
    "crop_sold_prop_1"=c(NA,"little","little"),
    "crop_sold_prop_numeric_1"=c(NA,0.1,0.1),
    "crop_sold_kg_per_year_1"=c(NA,200,1000),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_harvest_kg_per_year_2"=c(12,NA,NA),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_prop_2"=c("most","half","underhalf"),
    "crop_consumed_prop_numeric_2"=c(0.7,0.5,0.2),
    "crop_consumed_kg_per_year_2"=c(8.4,NA,NA),
    "crop_sold_prop_2"=c("little","half","most"),
    "crop_sold_prop_numeric_2"=c(0.1,0.5,0.7),
    "crop_sold_kg_per_year_2"=c(1.2,NA,NA),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_harvest_kg_per_year_3"=c(25,22500,NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_prop_3"=c(NA,NA,NA),
    "crop_consumed_prop_numeric_3"=c(NA,1,NA),
    "crop_consumed_kg_per_year_3"=c(NA,22500,NA),
    "crop_sold_prop_3"=c(NA,NA,NA),
    "crop_sold_prop_numeric_3"=c(1,NA,NA),
    "crop_sold_kg_per_year_3"=c(25,NA,NA)
  ))

  actual_result<-crop_sold_and_consumed_calculation(data)

  expect_equal(actual_result, expected_result)
})


testthat::test_that("Crop incomes calculated", {
  data <- tibble::as_tibble(list(
    "crop_name_1"=c("maize","cassava","wheat"),
    "crop_yield_1"=c(50,20,10),
    "crop_yield_units_1"=c("kg","sacks_100kg","tonnes"),
    "crop_harvest_kg_per_year_1"=c(50,2000,10000),
    "crop_use_1"=c("eat","eat sell","eat sell feed_livestock"),
    "crop_consumed_prop_1"=c(NA,"most","half"),
    "crop_consumed_prop_numeric_1"=c(1,0.7,0.5),
    "crop_consumed_kg_per_year_1"=c(50,1400,5000),
    "crop_sold_prop_1"=c(NA,"little","little"),
    "crop_sold_prop_numeric_1"=c(NA,0.1,0.1),
    "crop_sold_kg_per_year_1"=c(NA,200,1000),
    "crop_sold_income_1"=c(NA,500,800),
    "crop_sold_price_quantityunits_1"=c("other bla_unir","price_per_bag_50kg","price_per_quintal"),

    "crop_name_2"=c("wheat","maize","millet"),
    "crop_yield_2"=c(12,8,NA),
    "crop_yield_units_2"=c("kg","other_randome_unit","unit_not_registered"),
    "crop_harvest_kg_per_year_2"=c(12,NA,NA),
    "crop_use_2"=c("eat sell","eat sell","eat sell"),
    "crop_consumed_prop_2"=c("most","half","underhalf"),
    "crop_consumed_prop_numeric_2"=c(0.7,0.5,0.2),
    "crop_consumed_kg_per_year_2"=c(8.4,NA,NA),
    "crop_sold_prop_2"=c("little","half","most"),
    "crop_sold_prop_numeric_2"=c(0.1,0.5,0.7),
    "crop_sold_kg_per_year_2"=c(1.2,NA,NA),
    "crop_sold_income_2"=c(800,1000,800),
    "crop_sold_price_quantityunits_2"=c("total_income_per_year","price_per_kg","price_per_bag_100kg"),

    "crop_name_3"=c("rice","other_vegetables",NA),
    "crop_yield_3"=c(25,100,NA),
    "crop_yield_units_3"=c("kg","cart_225kg",NA),
    "crop_harvest_kg_per_year_3"=c(25,22500,NA),
    "crop_use_3"=c("sell","eat",NA),
    "crop_consumed_prop_3"=c(NA,NA,NA),
    "crop_consumed_prop_numeric_3"=c(NA,1,NA),
    "crop_consumed_kg_per_year_3"=c(NA,22500,NA),
    "crop_sold_prop_3"=c(NA,NA,NA),
    "crop_sold_prop_numeric_3"=c(1,NA,NA),
    "crop_sold_kg_per_year_3"=c(25,NA,NA),
    "crop_sold_income_3"=c(800,600,NA),
    "crop_sold_price_quantityunits_3"=c("total_income_per_year","price_per_bag_45kg",NA)
  ))
  expected_result <- structure(list(crop_name_1 = c("maize", "cassava", "wheat"),
                                    crop_yield_1 = c(50, 20, 10),
                                    crop_yield_units_1 = c("kg", "sacks_100kg", "tonnes"),
                                    crop_harvest_kg_per_year_1 = c(50, 2000, 10000),
                                    crop_use_1 = c("eat", "eat sell", "eat sell feed_livestock"),
                                    crop_consumed_prop_1 = c(NA, "most", "half"),
                                    crop_consumed_prop_numeric_1 = c(1, 0.7, 0.5),
                                    crop_consumed_kg_per_year_1 = c(50, 1400, 5000),
                                    crop_sold_prop_1 = c(NA, "little", "little"),
                                    crop_sold_prop_numeric_1 = c(NA, 0.1, 0.1),
                                    crop_sold_kg_per_year_1 = c(NA,  200, 1000),
                                    crop_sold_income_1 = c(NA, 500, 800),
                                    crop_sold_price_quantityunits_1 = c("other bla_unir", "price_per_bag_50kg", "price_per_quintal"),
                                    crop_sold_units_numeric_1 = c(NA, "0.02", "0.01"),
                                    crop_income_per_year_1 = c(NA, 2000, 8000),
                                    crop_price_1 = c(NA, 10, 8),

                                    crop_name_2 = c("wheat", "maize", "millet"),
                                    crop_yield_2 = c(12, 8, NA),
                                    crop_yield_units_2 = c("kg", "other_randome_unit", "unit_not_registered"),
                                    crop_harvest_kg_per_year_2 = c(12, NA, NA),
                                    crop_use_2 = c("eat sell", "eat sell",  "eat sell"),
                                    crop_consumed_prop_2 = c("most", "half", "underhalf"),
                                    crop_consumed_prop_numeric_2 = c(0.7, 0.5, 0.2),
                                    crop_consumed_kg_per_year_2 = c(8.4, NA, NA),
                                    crop_sold_prop_2 = c("little", "half", "most"),
                                    crop_sold_prop_numeric_2 = c(0.1, 0.5, 0.7),
                                    crop_sold_kg_per_year_2 = c(1.2, NA, NA),
                                    crop_sold_income_2 = c(800, 1000, 800),
                                    crop_sold_price_quantityunits_2 = c("total_income_per_year", "price_per_kg", "price_per_bag_100kg" ),
                                    crop_sold_units_numeric_2 = c("total_income_per_year", "1", "0.01"),
                                    crop_income_per_year_2 = c(800, NA, NA),
                                    crop_price_2 = c(666.666666666667, NA, NA),

                                    crop_name_3 = c("rice", "other_vegetables", NA),
                                    crop_yield_3 = c(25, 100, NA),
                                    crop_yield_units_3 = c("kg", "cart_225kg", NA),
                                    crop_harvest_kg_per_year_3 = c(25, 22500, NA),
                                    crop_use_3 = c("sell", "eat", NA),
                                    crop_consumed_prop_3 = c(NA, NA, NA),
                                    crop_consumed_prop_numeric_3 = c(NA, 1, NA),
                                    crop_consumed_kg_per_year_3 = c(NA, 22500, NA),
                                    crop_sold_prop_3 = c(NA, NA, NA),
                                    crop_sold_prop_numeric_3 = c(1, NA, NA),
                                    crop_sold_kg_per_year_3 = c(25,  NA, NA),
                                    crop_sold_income_3 = c(800, 600, NA),
                                    crop_sold_price_quantityunits_3 = c("total_income_per_year", "price_per_bag_45kg", NA),
                                    crop_sold_units_numeric_3 = c("total_income_per_year", "0.022", NA),
                                    crop_income_per_year_3 = c(800, NA, NA),
                                    crop_price_3 = c(32, NA, NA)),
                               row.names = c(NA, -3L),
                               class = c("tbl_df", "tbl", "data.frame"))

  actual_result<-crop_income_calculations(data)

  expect_equal(actual_result, expected_result)
})


