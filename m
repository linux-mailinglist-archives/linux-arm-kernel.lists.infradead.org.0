Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCDE2FD87
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 16:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRBb6P8HIIGQT2jaSniBHmQsUDdwbsNNyPMnrlzfDSk=; b=oSu1V0cynvmX3z
	m8/Q56XoE/6+5fzLHpXm9pm1v8Ab53FU+gZvb/XqGeN6O3tADs0/CdJTHcmkeBu5laClYjJDLU0lm
	QYAHi7VwfIbdGbPUmNBtOu971tciQfQAmOn6Uv3rQzo+bu54AzTfZa4cecnwL3e0ljHsvzt7OX+pI
	9VPiIlAyD3w7/om+PCmfWHFC2dhEef6iaOL8Ir+MzmqQu6IqZw0YNyZ0i6lN4HJBJ4pb5p+G86Gka
	41spGp4hnJ11amEMDSp7F8+6YhqXIobTF5DGdWrGkAbriSl8kHgoWIAyWaybng+r7zbgGlj2UObfX
	45dBL8QrDa6D4kd6ADcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLvB-0005hm-96; Thu, 30 May 2019 14:20:45 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLrN-0000tl-Ln
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 14:17:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75483A78;
 Thu, 30 May 2019 07:16:49 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5D65C3F59C;
 Thu, 30 May 2019 07:16:46 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH v6 19/19] kselftest: Extend vDSO selftest
Date: Thu, 30 May 2019 15:15:31 +0100
Message-Id: <20190530141531.43462-20-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530141531.43462-1-vincenzo.frascino@arm.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_071650_360406_20378542 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Shuah Khan <shuah@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 Mark Salyzyn <salyzyn@android.com>, Paul Burton <paul.burton@mips.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current version of the multiarch vDSO selftest verifies only
gettimeofday.

Extend the vDSO selftest to the other library functions:
 - time
 - clock_getres
 - clock_gettime

The extension has been used to verify the unified vdso library on the
supported architectures.

Cc: Shuah Khan <shuah@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 tools/testing/selftests/vDSO/Makefile         |   2 +
 tools/testing/selftests/vDSO/vdso_full_test.c | 261 ++++++++++++++++++
 2 files changed, 263 insertions(+)
 create mode 100644 tools/testing/selftests/vDSO/vdso_full_test.c

diff --git a/tools/testing/selftests/vDSO/Makefile b/tools/testing/selftests/vDSO/Makefile
index 9e03d61f52fd..68e9b4a1cdcf 100644
--- a/tools/testing/selftests/vDSO/Makefile
+++ b/tools/testing/selftests/vDSO/Makefile
@@ -5,6 +5,7 @@ uname_M := $(shell uname -m 2>/dev/null || echo not)
 ARCH ?= $(shell echo $(uname_M) | sed -e s/i.86/x86/ -e s/x86_64/x86/)
 
 TEST_GEN_PROGS := $(OUTPUT)/vdso_test
+TEST_GEN_PROGS += $(OUTPUT)/vdso_full_test
 ifeq ($(ARCH),x86)
 TEST_GEN_PROGS += $(OUTPUT)/vdso_standalone_test_x86
 endif
@@ -18,6 +19,7 @@ endif
 
 all: $(TEST_GEN_PROGS)
 $(OUTPUT)/vdso_test: parse_vdso.c vdso_test.c
+$(OUTPUT)/vdso_full_test: parse_vdso.c vdso_full_test.c
 $(OUTPUT)/vdso_standalone_test_x86: vdso_standalone_test_x86.c parse_vdso.c
 	$(CC) $(CFLAGS) $(CFLAGS_vdso_standalone_test_x86) \
 		vdso_standalone_test_x86.c parse_vdso.c \
diff --git a/tools/testing/selftests/vDSO/vdso_full_test.c b/tools/testing/selftests/vDSO/vdso_full_test.c
new file mode 100644
index 000000000000..62001d3d241b
--- /dev/null
+++ b/tools/testing/selftests/vDSO/vdso_full_test.c
@@ -0,0 +1,261 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * vdso_full_test.c: Sample code to test all the timers.
+ * Copyright (c) 2019 Arm Ltd.
+ *
+ * Compile with:
+ * gcc -std=gnu99 vdso_full_test.c parse_vdso.c
+ *
+ * Tested on ARM, ARM64, MIPS32 and x86 (32-bit and 64-bit).
+ * Might work on other architectures.
+ */
+
+#include <stdint.h>
+#include <elf.h>
+#include <stdio.h>
+#include <time.h>
+#include <sys/auxv.h>
+#include <sys/time.h>
+#define _GNU_SOURCE
+#include <unistd.h>
+#include <sys/syscall.h>
+
+#include "../kselftest.h"
+
+extern void *vdso_sym(const char *version, const char *name);
+extern void vdso_init_from_sysinfo_ehdr(uintptr_t base);
+extern void vdso_init_from_auxv(void *auxv);
+
+/*
+ * ARM64's vDSO exports its vDSO implementation with different names and
+ * a different version from other architectures, so we need to handle it
+ * as a special case.
+ */
+#if defined(__aarch64__)
+const char *version = "LINUX_2.6.39";
+const char *name[4] = {
+	"__kernel_gettimeofday",
+	"__kernel_clock_gettime",
+	"__kernel_time",
+	"__kernel_clock_getres",
+};
+#else
+/* Tested on x86, arm, mips */
+const char *version = "LINUX_2.6";
+const char *name[4] = {
+	"__vdso_gettimeofday",
+	"__vdso_clock_gettime",
+	"__vdso_time",
+	"__vdso_clock_getres",
+};
+#endif
+
+typedef long (*vdso_gettimeofday_t)(struct timeval *tv, struct timezone *tz);
+typedef long (*vdso_clock_gettime_t)(clockid_t clk_id, struct timespec *ts);
+typedef long (*vdso_clock_getres_t)(clockid_t clk_id, struct timespec *ts);
+typedef time_t (*vdso_time_t)(time_t *t);
+
+static int vdso_test_gettimeofday(void)
+{
+	/* Find gettimeofday. */
+	vdso_gettimeofday_t vdso_gettimeofday =
+		(vdso_gettimeofday_t)vdso_sym(version, name[0]);
+
+	if (!vdso_gettimeofday) {
+		printf("Could not find %s\n", name[0]);
+		return KSFT_SKIP;
+	}
+
+	struct timeval tv;
+	long ret = vdso_gettimeofday(&tv, 0);
+
+	if (ret == 0) {
+		printf("The time is %lld.%06lld\n",
+		       (long long)tv.tv_sec, (long long)tv.tv_usec);
+	} else {
+		printf("%s failed\n", name[0]);
+		return KSFT_FAIL;
+	}
+
+	return KSFT_PASS;
+}
+
+static int vdso_test_clock_gettime(clockid_t clk_id)
+{
+	/* Find clock_gettime. */
+	vdso_clock_gettime_t vdso_clock_gettime =
+		(vdso_clock_gettime_t)vdso_sym(version, name[1]);
+
+	if (!vdso_clock_gettime) {
+		printf("Could not find %s\n", name[1]);
+		return KSFT_SKIP;
+	}
+
+	struct timespec ts;
+	long ret = vdso_clock_gettime(clk_id, &ts);
+
+	if (ret == 0) {
+		printf("The time is %lld.%06lld\n",
+		       (long long)ts.tv_sec, (long long)ts.tv_nsec);
+	} else {
+		printf("%s failed\n", name[1]);
+		return KSFT_FAIL;
+	}
+
+	return KSFT_PASS;
+}
+
+static int vdso_test_time(void)
+{
+	/* Find time. */
+	vdso_time_t vdso_time =
+		(vdso_time_t)vdso_sym(version, name[2]);
+
+	if (!vdso_time) {
+		printf("Could not find %s\n", name[2]);
+		return KSFT_SKIP;
+	}
+
+	long ret = vdso_time(NULL);
+
+	if (ret > 0) {
+		printf("The time in hours since January 1, 1970 is %lld\n",
+				(long long)(ret / 3600));
+	} else {
+		printf("%s failed\n", name[2]);
+		return KSFT_FAIL;
+	}
+
+	return KSFT_PASS;
+}
+
+static int vdso_test_clock_getres(clockid_t clk_id)
+{
+	/* Find clock_getres. */
+	vdso_clock_getres_t vdso_clock_getres =
+		(vdso_clock_getres_t)vdso_sym(version, name[3]);
+
+	if (!vdso_clock_getres) {
+		printf("Could not find %s\n", name[3]);
+		return KSFT_SKIP;
+	}
+
+	struct timespec ts, sys_ts;
+	long ret = vdso_clock_getres(clk_id, &ts);
+
+	if (ret == 0) {
+		printf("The resolution is %lld %lld\n",
+		       (long long)ts.tv_sec, (long long)ts.tv_nsec);
+	} else {
+		printf("%s failed\n", name[3]);
+		return KSFT_FAIL;
+	}
+
+	ret = syscall(SYS_clock_getres, clk_id, &sys_ts);
+
+	if ((sys_ts.tv_sec != ts.tv_sec) || (sys_ts.tv_nsec != ts.tv_nsec)) {
+		printf("%s failed\n", name[3]);
+		return KSFT_FAIL;
+	}
+
+	return KSFT_PASS;
+}
+
+const char *vdso_clock_name[12] = {
+	"CLOCK_REALTIME",
+	"CLOCK_MONOTONIC",
+	"CLOCK_PROCESS_CPUTIME_ID",
+	"CLOCK_THREAD_CPUTIME_ID",
+	"CLOCK_MONOTONIC_RAW",
+	"CLOCK_REALTIME_COARSE",
+	"CLOCK_MONOTONIC_COARSE",
+	"CLOCK_BOOTTIME",
+	"CLOCK_REALTIME_ALARM",
+	"CLOCK_BOOTTIME_ALARM",
+	"CLOCK_SGI_CYCLE",
+	"CLOCK_TAI",
+};
+
+/*
+ * This function calls vdso_test_clock_gettime and vdso_test_clock_getres
+ * with different values for clock_id.
+ */
+static inline int vdso_test_clock(clockid_t clock_id)
+{
+	int ret0, ret1;
+
+	ret0 = vdso_test_clock_gettime(clock_id);
+	/* A skipped test is considered passed */
+	if (ret0 == KSFT_SKIP)
+		ret0 = KSFT_PASS;
+
+	ret1 = vdso_test_clock_getres(clock_id);
+	/* A skipped test is considered passed */
+	if (ret1 == KSFT_SKIP)
+		ret1 = KSFT_PASS;
+
+	ret0 += ret1;
+
+	printf("clock_id: %s", vdso_clock_name[clock_id]);
+
+	if (ret0 > 0)
+		printf(" [FAIL]\n");
+	else
+		printf(" [PASS]\n");
+
+	return ret0;
+}
+
+int main(int argc, char **argv)
+{
+	unsigned long sysinfo_ehdr = getauxval(AT_SYSINFO_EHDR);
+	int ret;
+
+	if (!sysinfo_ehdr) {
+		printf("AT_SYSINFO_EHDR is not present!\n");
+		return KSFT_SKIP;
+	}
+
+	vdso_init_from_sysinfo_ehdr(getauxval(AT_SYSINFO_EHDR));
+
+	ret = vdso_test_gettimeofday();
+
+#if _POSIX_TIMERS > 0
+
+#ifdef CLOCK_REALTIME
+	ret += vdso_test_clock(CLOCK_REALTIME);
+#endif
+
+#ifdef CLOCK_BOOTTIME
+	ret += vdso_test_clock(CLOCK_BOOTTIME);
+#endif
+
+#ifdef CLOCK_TAI
+	ret += vdso_test_clock(CLOCK_TAI);
+#endif
+
+#ifdef CLOCK_REALTIME_COARSE
+	ret += vdso_test_clock(CLOCK_REALTIME_COARSE);
+#endif
+
+#ifdef CLOCK_MONOTONIC
+	ret += vdso_test_clock(CLOCK_MONOTONIC);
+#endif
+
+#ifdef CLOCK_MONOTONIC_RAW
+	ret += vdso_test_clock(CLOCK_MONOTONIC_RAW);
+#endif
+
+#ifdef CLOCK_MONOTONIC_COARSE
+	ret += vdso_test_clock(CLOCK_MONOTONIC_COARSE);
+#endif
+
+#endif
+
+	ret += vdso_test_time();
+
+	if (ret > 0)
+		return KSFT_FAIL;
+
+	return KSFT_PASS;
+}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
