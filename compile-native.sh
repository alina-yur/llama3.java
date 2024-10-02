

native-image \
        -H:+UnlockExperimentalVMOptions \
        -H:+VectorAPISupport \
        -H:+ForeignAPISupport \
        -O3 \
        -march=native \
        --enable-preview \
        --add-modules jdk.incubator.vector \
        --initialize-at-build-time=com.llama4j.FloatTensor \
        -Djdk.incubator.vector.VECTOR_ACCESS_OOB_CHECK=0 \
        -jar llama3.jar \
        -o llama3