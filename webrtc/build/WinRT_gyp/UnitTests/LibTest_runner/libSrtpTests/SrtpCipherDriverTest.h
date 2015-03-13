#pragma once

namespace libSrtpTests
{
  //=============================================================================
  //         class: CSrtpCipherDriverValidationTest
  //   Description: class executes replay_driver test project, 
  //                see chromium\src\third_party\libsrtp\srtp_test_cipher_driver.vcxproj
  // History: 
  // 2015/02/27 TP: created
  //=============================================================================
  class CSrtpCipherDriverValidationTest :
    public CLibSrtpTestBase
  {
  private:
    AUTO_ADD_TEST(SingleInstanceTestSolutionProvider, CSrtpCipherDriverValidationTest);
  protected:
    int InterchangeableExecute();
  public:
    virtual ~CSrtpCipherDriverValidationTest() {};
    TEST_NAME_IMPL(SrtpCipherDriverValidationTest);
    TEST_PROJECT_IMPL(srtp_test_cipher_driver);
    TEST_LIBRARY_IMPL(libSrtp);
  };

  //=============================================================================
  //         class: CSrtpCipherDriverTimingTest
  //   Description: class executes replay_driver test project, 
  //                see chromium\src\third_party\libsrtp\srtp_test_cipher_driver.vcxproj
  // History: 
  // 2015/02/27 TP: created
  //=============================================================================
  class CSrtpCipherDriverTimingTest :
    public CLibSrtpTestBase
  {
  private:
    AUTO_ADD_TEST(SingleInstanceTestSolutionProvider, CSrtpCipherDriverTimingTest);
  protected:
    int InterchangeableExecute();
  public:
    virtual ~CSrtpCipherDriverTimingTest() {};
    TEST_NAME_IMPL(SrtpCipherDriverTimingTest);
    TEST_PROJECT_IMPL(srtp_test_cipher_driver);
    TEST_LIBRARY_IMPL(libSrtp);

    virtual void InterchangeableVerifyResult();

  };

  //=============================================================================
  //         class: CSrtpCipherDriverArrayTimingTest
  //   Description: class executes replay_driver test project, 
  //                see chromium\src\third_party\libsrtp\srtp_test_cipher_driver.vcxproj
  // History: 
  // 2015/02/27 TP: created
  //=============================================================================
  class CSrtpCipherDriverArrayTimingTest :
    public CLibSrtpTestBase
  {
  private:
    AUTO_ADD_TEST(SingleInstanceTestSolutionProvider, CSrtpCipherDriverArrayTimingTest);
  protected:
    int InterchangeableExecute();
  public:
    virtual ~CSrtpCipherDriverArrayTimingTest() {};
    TEST_NAME_IMPL(SrtpCipherDriverArrayTimingTest);
    TEST_PROJECT_IMPL(srtp_test_cipher_driver);
    TEST_LIBRARY_IMPL(libSrtp);

    virtual void InterchangeableVerifyResult();

  };
}

