Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C675B842F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 05:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rqjUGy2RUgd25T2T0H2Lx+UcB48d0iAqzpOIRYKOYfU=; b=FX1NrHST/Iihum
	tdnpOjysNmd0oTsyYsP5W2obGkDDNlbcbZXJA+GmACv1Nho04Cvf75wPnMYNsON8etX1AAzMfm77D
	WO61jCmghag7YC4IQMLPPrdXFjEJw9MZbFJAxIbky9UfETQk9+QG60BNXTH3OjoFZ9cQ+VwlvMBqo
	4yAY9Of8vxbKkGUmGzs9wUNTXeDiWH4WqrjZSOghsIBqxwk78cLcxV9IifTITMXw7LPHilyiY9NTs
	Rigs1AsFjYL5BlmvwR2hTSG2Gw3PvHJ26y3PYr1sqlMBgc99OasTSX710K+4y45eo0LCUWUJHD17N
	tWl/5VdVmJNkSVHJ6ZKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvClg-0005I7-Fn; Wed, 07 Aug 2019 03:37:40 +0000
Received: from mx0b-00190b01.pphosted.com ([2620:100:9005:57f::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvCko-0004Yt-6m
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 03:36:49 +0000
Received: from pps.filterd (m0122331.ppops.net [127.0.0.1])
 by mx0b-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x773VYYQ003028; Wed, 7 Aug 2019 04:36:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=edg0O2+ml5BYIcRbGIumUYTqya04hIZ6gRSWYDOfb7g=;
 b=TpFJPi2Wzc8nfPiKoLs4+ViteCnMePxj5WBGfHCraQzrEmQRWsVWxXxovAub/afZ4xuR
 8g62IdolqJf0VPvhkCAFG+ioRZKlcRk4ZZHfmOU0KBE36fBXRlxXIzN7C5rLisQy64lv
 6VK3MwP24TapUSJFSWMquQpsLzVU3yTioYgQiVaVb0i6RoCrxAiCS4OQl1lThM20/vL+
 KBO6Mhegb0XDJ4TJHAcnagsdASbTL1iDCWJ/cALVox8mTMUBTtJbx6EuPePrlO3/1kBI
 JpG/OhUECVaLxHk4S3FVORUvd7TIpXTB1sMnpCCTc+18gzEKzDcCQetpzvLQdgspjW2Z wQ== 
Received: from prod-mail-ppoint5 (prod-mail-ppoint5.akamai.com [184.51.33.60]
 (may be forged))
 by mx0b-00190b01.pphosted.com with ESMTP id 2u4y4tfn1g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 04:36:27 +0100
Received: from pps.filterd (prod-mail-ppoint5.akamai.com [127.0.0.1])
 by prod-mail-ppoint5.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x773WUQp031724; Tue, 6 Aug 2019 20:36:26 -0700
Received: from email.msg.corp.akamai.com ([172.27.123.57])
 by prod-mail-ppoint5.akamai.com with ESMTP id 2u5888ebjn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 06 Aug 2019 20:36:26 -0700
Received: from USMA1EX-DAG1MB5.msg.corp.akamai.com (172.27.123.105) by
 usma1ex-dag3mb6.msg.corp.akamai.com (172.27.123.54) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 6 Aug 2019 23:36:25 -0400
Received: from USMA1EX-CAS1.msg.corp.akamai.com (172.27.123.30) by
 usma1ex-dag1mb5.msg.corp.akamai.com (172.27.123.105) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 6 Aug 2019 23:36:25 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 USMA1EX-CAS1.msg.corp.akamai.com (172.27.123.30) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Tue, 6 Aug 2019 23:36:25 -0400
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 0D6FE61D6C; Tue,  6 Aug 2019 23:36:23 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Alexey Budankov
 <alexey.budankov@linux.intel.com>
Subject: [PATCH v2 1/4] perf: Add capability-related utilities
Date: Tue, 6 Aug 2019 23:35:54 -0400
Message-ID: <8a1e76cf5c7c9796d0d4d240fbaa85305298aafa.1565146171.git.ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565146171.git.ilubashe@akamai.com>
References: <cover.1565146171.git.ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070034
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-07_01:2019-08-05,2019-08-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 priorityscore=1501
 lowpriorityscore=0 impostorscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 suspectscore=2 phishscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1906280000 definitions=main-1908070034
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_203646_368919_ACBB42EF 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9005:57f:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add utilities to help checking capabilities of the running procss.
Make perf link with libcap, if it is available. If no libcap-dev[el],
assume no capabilities.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/build/Makefile.feature       |  2 ++
 tools/build/feature/Makefile       |  4 ++++
 tools/build/feature/test-libcap.c  | 20 ++++++++++++++++++++
 tools/perf/Makefile.config         | 11 +++++++++++
 tools/perf/Makefile.perf           |  2 ++
 tools/perf/util/Build              |  2 ++
 tools/perf/util/cap.c              | 29 +++++++++++++++++++++++++++++
 tools/perf/util/cap.h              | 24 ++++++++++++++++++++++++
 tools/perf/util/event.h            |  1 +
 tools/perf/util/python-ext-sources |  1 +
 tools/perf/util/util.c             |  9 +++++++++
 11 files changed, 105 insertions(+)
 create mode 100644 tools/build/feature/test-libcap.c
 create mode 100644 tools/perf/util/cap.c
 create mode 100644 tools/perf/util/cap.h

diff --git a/tools/build/Makefile.feature b/tools/build/Makefile.feature
index 86b793dffbc4..8a19753cc26a 100644
--- a/tools/build/Makefile.feature
+++ b/tools/build/Makefile.feature
@@ -42,6 +42,7 @@ FEATURE_TESTS_BASIC :=                  \
         gtk2-infobar                    \
         libaudit                        \
         libbfd                          \
+        libcap                          \
         libelf                          \
         libelf-getphdrnum               \
         libelf-gelf_getnote             \
@@ -110,6 +111,7 @@ FEATURE_DISPLAY ?=              \
          gtk2                   \
          libaudit               \
          libbfd                 \
+         libcap                 \
          libelf                 \
          libnuma                \
          numa_num_possible_cpus \
diff --git a/tools/build/feature/Makefile b/tools/build/feature/Makefile
index 0658b8cd0e53..8499385365c0 100644
--- a/tools/build/feature/Makefile
+++ b/tools/build/feature/Makefile
@@ -20,6 +20,7 @@ FILES=                                          \
          test-libbfd-liberty.bin                \
          test-libbfd-liberty-z.bin              \
          test-cplus-demangle.bin                \
+         test-libcap.bin			\
          test-libelf.bin                        \
          test-libelf-getphdrnum.bin             \
          test-libelf-gelf_getnote.bin           \
@@ -105,6 +106,9 @@ $(OUTPUT)test-fortify-source.bin:
 $(OUTPUT)test-bionic.bin:
 	$(BUILD)
 
+$(OUTPUT)test-libcap.bin:
+	$(BUILD) -lcap
+
 $(OUTPUT)test-libelf.bin:
 	$(BUILD) -lelf
 
diff --git a/tools/build/feature/test-libcap.c b/tools/build/feature/test-libcap.c
new file mode 100644
index 000000000000..d2a2e152195f
--- /dev/null
+++ b/tools/build/feature/test-libcap.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <sys/capability.h>
+#include <linux/capability.h>
+
+int main(void)
+{
+	cap_flag_value_t val;
+	cap_t caps = cap_get_proc();
+
+	if (!caps)
+		return 1;
+
+	if (cap_get_flag(caps, CAP_SYS_ADMIN, CAP_EFFECTIVE, &val) != 0)
+		return 1;
+
+	if (cap_free(caps) != 0)
+		return 1;
+
+	return 0;
+}
diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
index e4988f49ea79..9a06787fedc6 100644
--- a/tools/perf/Makefile.config
+++ b/tools/perf/Makefile.config
@@ -824,6 +824,17 @@ ifndef NO_LIBZSTD
   endif
 endif
 
+ifndef NO_LIBCAP
+  ifeq ($(feature-libcap), 1)
+    CFLAGS += -DHAVE_LIBCAP_SUPPORT
+    EXTLIBS += -lcap
+    $(call detected,CONFIG_LIBCAP)
+  else
+    msg := $(warning No libcap found, disables capability support, please install libcap-devel/libcap-dev);
+    NO_LIBCAP := 1
+  endif
+endif
+
 ifndef NO_BACKTRACE
   ifeq ($(feature-backtrace), 1)
     CFLAGS += -DHAVE_BACKTRACE_SUPPORT
diff --git a/tools/perf/Makefile.perf b/tools/perf/Makefile.perf
index 67512a12276b..f9807d8c005b 100644
--- a/tools/perf/Makefile.perf
+++ b/tools/perf/Makefile.perf
@@ -88,6 +88,8 @@ include ../scripts/utilities.mak
 #
 # Define NO_LIBBPF if you do not want BPF support
 #
+# Define NO_LIBCAP if you do not want process capabilities considered by perf
+#
 # Define NO_SDT if you do not want to define SDT event in perf tools,
 # note that it doesn't disable SDT scanning support.
 #
diff --git a/tools/perf/util/Build b/tools/perf/util/Build
index 7abf05131889..7cda749059a9 100644
--- a/tools/perf/util/Build
+++ b/tools/perf/util/Build
@@ -148,6 +148,8 @@ perf-$(CONFIG_ZLIB) += zlib.o
 perf-$(CONFIG_LZMA) += lzma.o
 perf-$(CONFIG_ZSTD) += zstd.o
 
+perf-$(CONFIG_LIBCAP) += cap.o
+
 perf-y += demangle-java.o
 perf-y += demangle-rust.o
 
diff --git a/tools/perf/util/cap.c b/tools/perf/util/cap.c
new file mode 100644
index 000000000000..c3ba841bbf37
--- /dev/null
+++ b/tools/perf/util/cap.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Capability utilities
+ */
+
+#ifdef HAVE_LIBCAP_SUPPORT
+
+#include "cap.h"
+#include <stdbool.h>
+#include <sys/capability.h>
+
+bool perf_cap__capable(cap_value_t cap)
+{
+	cap_flag_value_t val;
+	cap_t caps = cap_get_proc();
+
+	if (!caps)
+		return false;
+
+	if (cap_get_flag(caps, cap, CAP_EFFECTIVE, &val) != 0)
+		val = CAP_CLEAR;
+
+	if (cap_free(caps) != 0)
+		return false;
+
+	return val == CAP_SET;
+}
+
+#endif  /* HAVE_LIBCAP_SUPPORT */
diff --git a/tools/perf/util/cap.h b/tools/perf/util/cap.h
new file mode 100644
index 000000000000..514b1f8992f6
--- /dev/null
+++ b/tools/perf/util/cap.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __PERF_CAP_H
+#define __PERF_CAP_H
+
+#include <stdbool.h>
+#include <linux/capability.h>
+#include <linux/compiler.h>
+
+#ifdef HAVE_LIBCAP_SUPPORT
+
+#include <sys/capability.h>
+
+bool perf_cap__capable(cap_value_t cap);
+
+#else
+
+static inline bool perf_cap__capable(int cap __maybe_unused)
+{
+	return false;
+}
+
+#endif /* HAVE_LIBCAP_SUPPORT */
+
+#endif /* __PERF_CAP_H */
diff --git a/tools/perf/util/event.h b/tools/perf/util/event.h
index 70841d115349..0e164e8ae28d 100644
--- a/tools/perf/util/event.h
+++ b/tools/perf/util/event.h
@@ -851,6 +851,7 @@ void  cpu_map_data__synthesize(struct cpu_map_data *data, struct perf_cpu_map *m
 void event_attr_init(struct perf_event_attr *attr);
 
 int perf_event_paranoid(void);
+bool perf_event_paranoid_check(int max_level);
 
 extern int sysctl_perf_event_max_stack;
 extern int sysctl_perf_event_max_contexts_per_stack;
diff --git a/tools/perf/util/python-ext-sources b/tools/perf/util/python-ext-sources
index 235bd9803390..c6dd478956f1 100644
--- a/tools/perf/util/python-ext-sources
+++ b/tools/perf/util/python-ext-sources
@@ -7,6 +7,7 @@
 
 util/python.c
 ../lib/ctype.c
+util/cap.c
 util/evlist.c
 util/evsel.c
 util/cpumap.c
diff --git a/tools/perf/util/util.c b/tools/perf/util/util.c
index 9c3c97697387..6fd130a5d8f2 100644
--- a/tools/perf/util/util.c
+++ b/tools/perf/util/util.c
@@ -16,10 +16,12 @@
 #include <string.h>
 #include <errno.h>
 #include <limits.h>
+#include <linux/capability.h>
 #include <linux/kernel.h>
 #include <linux/log2.h>
 #include <linux/time64.h>
 #include <unistd.h>
+#include "cap.h"
 #include "strlist.h"
 #include "string2.h"
 
@@ -403,6 +405,13 @@ int perf_event_paranoid(void)
 
 	return value;
 }
+
+bool perf_event_paranoid_check(int max_level)
+{
+	return perf_cap__capable(CAP_SYS_ADMIN) ||
+			perf_event_paranoid() <= max_level;
+}
+
 static int
 fetch_ubuntu_kernel_version(unsigned int *puint)
 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
