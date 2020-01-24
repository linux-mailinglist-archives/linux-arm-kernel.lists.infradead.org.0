Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9C41489FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:40:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iY0ninp+PZNVMREXniAPl/iWwtX1Dnp624JiS2bsYTY=; b=q2Er9tnVv0tg3Q
	CJ5KrayCUQA18fCyrHyFRquCFR5i1fQHrvQDhmSF/C4QndrlZOuqtalzGJ9/yzwU1u5S8gyjhdhi2
	oJK2/S6T33yVAchjAuc4VO/bh7MSL4Mp+mLs5EUiNnVB0Q4mCZ4rjMUC8xjg0MUj9kHKYvLyaWaoE
	t57SnyDuUaj8kR+TzTr5SKvdQ0xsbWNPvEbjPabYVkbkmv7khyvxRYSmmo8awMQ9UmQxPnLRGlpyQ
	gcZ161mU+h9AB+vm2j010uvTv+frI6+vmyB/lIXMtWSbsBjFkpfn8TJfd07YRznxS6TjstIXQkKLE
	fb6YklJwdZC7pcvBwE4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv08d-0004XZ-J5; Fri, 24 Jan 2020 14:40:47 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv073-00029U-Rf
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:39:12 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5116C6EDBC484FAE0A6D;
 Fri, 24 Jan 2020 22:39:03 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 24 Jan 2020 22:38:54 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>,
 <ak@linux.intel.com>
Subject: [PATCH RFC 5/7] perf pmu: Support matching by sysid
Date: Fri, 24 Jan 2020 22:35:03 +0800
Message-ID: <1579876505-113251-6-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_063910_057647_CE6AA9BB 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: suzuki.poulose@arm.com, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 james.clark@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Match system or uncore PMU aliases by system id, SYSID.

We use a SYSID read from sysfs or from an env variable to match against
uncore or system PMU events.

For x86, they want to match uncore events with cpuid - this still works
fine for x86 as it would not have system event tables for uncore PMUs.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 105 +++++++++++++++++++++++++++++++++++++-----
 1 file changed, 94 insertions(+), 11 deletions(-)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 569aba4cec89..4d4fe0c1ae22 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -672,11 +672,78 @@ static char *perf_pmu__getcpuid(struct perf_pmu *pmu)
 	return cpuid;
 }
 
+static char *get_sysid_str(void)
+{
+	char *buf = NULL;
+	char path[PATH_MAX];
+	const char *sysfs = sysfs__mountpoint();
+	FILE *file;
+	int s, i;
+
+	if (!sysfs)
+		return NULL;
+
+	buf = malloc(PATH_MAX);
+	if (!buf) {
+		pr_err("%s alloc failed\n", __func__);
+		return NULL;
+	}
+
+	scnprintf(path, PATH_MAX, "%s/devices/soc0/machine", sysfs);
+
+	file = fopen(path, "r");
+	if (!file) {
+		pr_debug("fopen failed for file %s\n", path);
+		free(buf);
+		return NULL;
+	}
+
+	if (!fgets(buf, PATH_MAX, file)) {
+		fclose(file);
+		pr_debug("gets failed for file %s\n", path);
+		free(buf);
+		return NULL;
+	}
+	fclose(file);
+
+	/* Remove any whitespace, this could be from ACPI HID */
+	s = strlen(buf);
+	for (i = 0; i < s; i++) {
+		if (buf[i] == ' ') {
+			buf[i] = 0;
+			break;
+		};
+	}
+
+	return buf;
+}
+
+static char *perf_pmu__getsysid(void)
+{
+	char *sysid;
+	static bool printed;
+
+	sysid = getenv("PERF_SYSID");
+	if (sysid)
+		sysid = strdup(sysid);
+
+	if (!sysid)
+		sysid = get_sysid_str();
+	if (!sysid)
+		return NULL;
+
+	if (!printed) {
+		pr_debug("Using SYSID %s\n", sysid);
+		printed = true;
+	}
+	return sysid;
+}
+
 struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
 {
-	struct pmu_events_map *map;
+	struct pmu_events_map *map, *found_map = NULL;
 	char *cpuid = perf_pmu__getcpuid(pmu);
-	int i;
+	char *sysid;
 
 	/* on some platforms which uses cpus map, cpuid can be NULL for
 	 * PMUs other than CORE PMUs.
@@ -684,19 +751,35 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
 	if (!cpuid)
 		return NULL;
 
-	i = 0;
-	for (;;) {
-		map = &pmu_events_map[i++];
-		if (!map->table) {
-			map = NULL;
-			break;
+	sysid = perf_pmu__getsysid();
+
+	/*
+	 * Match sysid as first perference for uncore/sys PMUs.
+	 *
+	 * x86 uncore events match by cpuid, but we would not have map->socid
+	 * set for that arch (so any matching here would fail for that).
+	 */
+	if (pmu && pmu_is_uncore_or_sys(pmu->name) &&
+	    !is_arm_pmu_core(pmu->name) && sysid) {
+		for (map = &pmu_events_map[0]; map->table; map++) {
+			if (map->sysid && !strcmp(map->sysid, sysid)) {
+				found_map = map;
+				goto out;
+			}
 		}
+	}
 
-		if (!strcmp_cpuid_str(map->cpuid, cpuid))
-			break;
+	for (map = &pmu_events_map[0]; map->table; map++) {
+		if (map->cpuid && cpuid &&
+		    !strcmp_cpuid_str(map->cpuid, cpuid)) {
+			found_map = map;
+			goto out;
+		}
 	}
+out:
 	free(cpuid);
-	return map;
+	free(sysid); /* Can safely handle is sysid is NULL */
+	return found_map;
 }
 
 static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
