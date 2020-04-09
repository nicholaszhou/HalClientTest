# include <android/hardware/test/1.0/ITest.h>

# include <hidl/Status.h>

# include <hidl/LegacySupport.h>

# include <utils/misc.h>

# include <hidl/HidlSupport.h>

# include <stdio.h>

using android::hardware::test::V1_0::ITest;
using android::sp;
using android::hardware::hidl_string;

int main()
{
    fprintf(stderr,"%s\n" , "start");
    android::sp<ITest> service = ITest::getService();
    printf("%s\n", "service");
    if(service == nullptr) {
        printf("Failed to get service\n");
        return -1;
    }

    service->helloWorld("JayZhang", [&](hidl_string result) {
                printf("%s\n", result.c_str());
        });
    printf("%s\n", "end");


    return 0;
}