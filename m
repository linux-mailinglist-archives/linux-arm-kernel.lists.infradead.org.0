Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEA815F67A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 20:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WSUjixkZEviotMGyvRGPMPHtN6S2M+Za+fPYuZaNXPQ=; b=eW0OtfYDaa1c8E
	to8bZK5V2CevCo7358+I+BH0yREXDi98JKN5uzgxlgZ0DT313rIuf75IeieH8dNVVIvidm4+ntuQS
	T1GhVk4UbSPh6ZenLJTMU+3DANadSD3enxjIxfrN8OssKXqIfQlS1bxZUQIKlFw0LcT7Xw0C0fA53
	VWsigcjFxzwYBaRnZKEBO38WUctNMFlnbfG+VpcHUENA2n/obMw8z1N0ovfuHlM9Hs++GrYjA+e/J
	HVp9lrY7afAoP6w+6zkluD4cZ41cg3kvhsQKTHdEyVpSFKPXVqAzw/aqgf58Bxr+1zRx3MADJaI+o
	FJYr3heXhhDZVEclClAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2gOD-0003a9-HF; Fri, 14 Feb 2020 19:12:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2gO6-0003ZO-8P
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 19:12:31 +0000
Received: from quaco.ghostprotocols.net (187-26-102-114.3g.claro.net.br
 [187.26.102.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA2A224654;
 Fri, 14 Feb 2020 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581707549;
 bh=6QVl2Y6AQgc438oMSLIit47nbEPKECWEiKiMG+7af9g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bk6Uf7KC22XYeh+HLkJbPBRnc7nkJ95dqM9HBdABCiraYQL1oLNNactuXYO0JcZ2V
 aeBXRBLwVj1kyx9oKcyvC+OvYk+m2oiuioaOQT1zQE9sMiE318Ho17hjsuO83d/Koz
 GaAlQyjHZ5BdvA1L06ZuZ+1JXtSkNTArUXNlmmSs=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 16/23] perf tools: Add arm64 version of get_cpuid()
Date: Fri, 14 Feb 2020 16:10:50 -0300
Message-Id: <20200214191057.26266-17-acme@kernel.org>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200214191057.26266-1-acme@kernel.org>
References: <20200214191057.26266-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_111230_341303_1354E7A0 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Clark Williams <williams@redhat.com>, Will Deacon <will@kernel.org>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linuxarm@huawei.com, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Garry <john.garry@huawei.com>

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

Tester notes:

I tested this patch on my new ARM64 Kunpeng 920 server.
[root@node1 zsk]# ./perf --version
perf version 5.6.rc1.g2cdb955b7252

Both perf list and perf stat can work.

Signed-off-by: John Garry <john.garry@huawei.com>
Tested-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linuxarm@huawei.com
Link: http://lore.kernel.org/lkml/1576245255-210926-1-git-send-email-john.garry@huawei.com
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/arch/arm64/util/header.c | 63 ++++++++++++++++++++++-------
 1 file changed, 48 insertions(+), 15 deletions(-)

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
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
