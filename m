Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1231311E512
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 14:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r1H8MW5khktYY/9eo1pw5duRfgOKUrMHbEv/bX8PnNs=; b=KmLDkoyENzEPYX
	wB+Ieftr/aW+Y3B9a5XVnQsXS2NRxIY61g/7dFrheXUsltWgp++URYvLpAdZEk2md3zeYR+k8m7Ag
	MirpzFdE1pVntJyqqlZfagdjEZJ3Q8wIZ+sfuTfBBg0X6LOpzfoF95Ov7Y5RquQt9n7PGREx1zc9G
	aDOozmQ9IjK6O76uEK175pcaV3MPkLrHyjs84n9L0r4rKXEJaefXqhyQ2v+qEIZUnGQ10ViZ7ogQo
	IBbL8sXdNKt0zt5yzfLGnkZmwiYrGv7QY4AMc2FTxFyZxrb4AsrkhTra7T+lUHXUUMk0+XtvLQO2Z
	lCLVBCjC7C631PvdO+sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iflSZ-000231-Qs; Fri, 13 Dec 2019 13:58:23 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iflSR-0001v5-Mv
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 13:58:17 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 28D915C864E049F2EFC2;
 Fri, 13 Dec 2019 21:58:01 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Fri, 13 Dec 2019 21:57:50 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH] perf tools: Add arm64 version of get_cpuid()
Date: Fri, 13 Dec 2019 21:54:15 +0800
Message-ID: <1576245255-210926-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_055815_943127_A3C0B8B8 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: John Garry <john.garry@huawei.com>, will@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linuxarm@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an arm64 version of get_cpuid(), which is used for various annotation
and headers - for example, I now get the CPUID in "perf report --header",
as shown in this snippet:

# hostname : ubuntu
# os release : 5.5.0-rc1-dirty
# perf version : 5.5.rc1.gbf8a13dc9851
# arch : aarch64
# nrcpus online : 96
# nrcpus avail : 96
# cpuid : 0x00000000480fd010

Since much of the code to read the MIDR is already in get_cpuid_str(),
factor out this code.

Signed-off-by: John Garry <john.garry@huawei.com>

diff --git a/tools/perf/arch/arm64/util/header.c b/tools/perf/arch/arm64/util/header.c
index a32e4b72a98f..d730666ab95d 100644
--- a/tools/perf/arch/arm64/util/header.c
+++ b/tools/perf/arch/arm64/util/header.c
@@ -1,8 +1,10 @@
 #include <stdio.h>
 #include <stdlib.h>
 #include <perf/cpumap.h>
+#include <util/cpumap.h>
 #include <internal/cpumap.h>
 #include <api/fs/fs.h>
+#include <errno.h>
 #include "debug.h"
 #include "header.h"
 
@@ -12,26 +14,21 @@
 #define MIDR_VARIANT_SHIFT      20
 #define MIDR_VARIANT_MASK       (0xf << MIDR_VARIANT_SHIFT)
 
-char *get_cpuid_str(struct perf_pmu *pmu)
+static int _get_cpuid(char *buf, size_t sz, struct perf_cpu_map *cpus)
 {
-	char *buf = NULL;
-	char path[PATH_MAX];
 	const char *sysfs = sysfs__mountpoint();
-	int cpu;
 	u64 midr = 0;
-	struct perf_cpu_map *cpus;
-	FILE *file;
+	int cpu;
 
-	if (!sysfs || !pmu || !pmu->cpus)
-		return NULL;
+	if (!sysfs || sz < MIDR_SIZE)
+		return EINVAL;
 
-	buf = malloc(MIDR_SIZE);
-	if (!buf)
-		return NULL;
+	cpus = perf_cpu_map__get(cpus);
 
-	/* read midr from list of cpus mapped to this pmu */
-	cpus = perf_cpu_map__get(pmu->cpus);
 	for (cpu = 0; cpu < perf_cpu_map__nr(cpus); cpu++) {
+		char path[PATH_MAX];
+		FILE *file;
+
 		scnprintf(path, PATH_MAX, "%s/devices/system/cpu/cpu%d"MIDR,
 				sysfs, cpus->map[cpu]);
 
@@ -57,12 +54,48 @@ char *get_cpuid_str(struct perf_pmu *pmu)
 		break;
 	}
 
-	if (!midr) {
+	perf_cpu_map__put(cpus);
+
+	if (!midr)
+		return EINVAL;
+
+	return 0;
+}
+
+int get_cpuid(char *buf, size_t sz)
+{
+	struct perf_cpu_map *cpus = perf_cpu_map__new(NULL);
+	int ret;
+
+	if (!cpus)
+		return EINVAL;
+
+	ret = _get_cpuid(buf, sz, cpus);
+
+	perf_cpu_map__put(cpus);
+
+	return ret;
+}
+
+char *get_cpuid_str(struct perf_pmu *pmu)
+{
+	char *buf = NULL;
+	int res;
+
+	if (!pmu || !pmu->cpus)
+		return NULL;
+
+	buf = malloc(MIDR_SIZE);
+	if (!buf)
+		return NULL;
+
+	/* read midr from list of cpus mapped to this pmu */
+	res = _get_cpuid(buf, MIDR_SIZE, pmu->cpus);
+	if (res) {
 		pr_err("failed to get cpuid string for PMU %s\n", pmu->name);
 		free(buf);
 		buf = NULL;
 	}
 
-	perf_cpu_map__put(cpus);
 	return buf;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
