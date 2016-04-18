context("start epiviz")

test_that("startEpiviz creates a proper object", {
  skip("for now")
  mgr <- .startMGR(openBrowser)
  expect_is(mgr, "EpivizDeviceMgr")
  
  expect_is(mgr$msList, "list")
  expect_equal(length(mgr$msList), 3)
  
  expect_is(mgr$msList$gene, "list")
  expect_equal(length(mgr$msList$gene), 0)
  
  expect_is(mgr$msList$bp, "list")
  expect_equal(length(mgr$msList$bp), 0)
  
  expect_is(mgr$msList$block, "list")
  expect_equal(length(mgr$msList$block), 0)
  
  expect_is(mgr$server, "EpivizServer")
  expect_equal(mgr$chartIdMap, list())
  
  expect_equal(mgr$isClosed(), !openBrowser)
  mgr$stopServer()
})