Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9496C1ADB6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTsgHUNM2gy1fO912LnlJmUg3D8OkzjpD+DKnSoKISk=; b=F51ygZz5VFUoMi
	IycpXhBNwTNZA9RMC8DBJyY5ddz5KY673be5Ga9kYKp1ARo5v5X8e+VOj0odvLnoBJsQfau78GBmV
	X51r12H/653huJqtqna7jzoPqAuAfJ8NcQaFKeGrxlYG0/SUaAPKhMaIzS3EzlzNtaZSwG5Cn89BG
	6KWMYhQcu3CLiON0trp1eSzUQUJJtdJirJdVRS0KHiH+XMb1VGRu/9rAPoYdSKzjYa39TKwxICJja
	B33J7aZ4htBZMdmOoyfvYwLlO1aRgtbu3kCjGa6FRYHfKEr4VDI5qiu240FPJo34eL+tNeK6jgzUT
	Ijg6sfWNjHc0WFBS7HGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOY5-0003DP-FQ; Fri, 17 Apr 2020 10:48:41 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOV3-0000n3-EA
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:35 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D4E62AB3D0B362BDEA7C;
 Fri, 17 Apr 2020 18:45:26 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:20 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 07/13] perf pmu: Add pmu_id()
Date: Fri, 17 Apr 2020 18:41:18 +0800
Message-ID: <1587120084-18990-8-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034533_700340_4D90B333 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: irogers@google.com, ak@linux.intel.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, qiangqing.zhang@nxp.com,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a function to read the PMU id sysfs entry. We only do it for uncore
PMUs where this would be relevant.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 36 ++++++++++++++++++++++++++++++++++++
 tools/perf/util/pmu.h |  1 +
 2 files changed, 37 insertions(+)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index ef6a63f3d386..6a67c6a28d08 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -594,6 +594,7 @@ static struct perf_cpu_map *__pmu_cpumask(const char *path)
  * Uncore PMUs have a "cpumask" file under sysfs. CPU PMUs (e.g. on arm/arm64)
  * may have a "cpus" file.
  */
+#define CPUS_TEMPLATE_ID	"%s/bus/event_source/devices/%s/identifier"
 #define CPUS_TEMPLATE_UNCORE	"%s/bus/event_source/devices/%s/cpumask"
 #define CPUS_TEMPLATE_CPU	"%s/bus/event_source/devices/%s/cpus"
 
@@ -632,6 +633,39 @@ static bool pmu_is_uncore(const char *name)
 	return file_available(path);
 }
 
+static char *pmu_id(const char *name)
+{
+	char path[PATH_MAX], *id;
+	const char *sysfs;
+	FILE *file;
+	int n;
+
+	sysfs = sysfs__mountpoint();
+	snprintf(path, PATH_MAX, CPUS_TEMPLATE_ID, sysfs, name);
+
+	id = malloc(PATH_MAX);
+	if (!id)
+		return NULL;
+
+	file = fopen(path, "r");
+	if (!file) {
+		free(id);
+		return NULL;
+	}
+
+	n = fscanf(file, "%s", id);
+
+	fclose(file);
+
+	if (!n) {
+		free(id);
+		return NULL;
+	}
+
+	return id;
+}
+
+
 /*
  *  PMU CORE devices have different name other than cpu in sysfs on some
  *  platforms.
@@ -844,6 +878,8 @@ static struct perf_pmu *pmu_lookup(const char *name)
 	pmu->name = strdup(name);
 	pmu->type = type;
 	pmu->is_uncore = pmu_is_uncore(name);
+	if (pmu->is_uncore)
+		pmu->id = pmu_id(name);
 	pmu->max_precise = pmu_max_precise(name);
 	pmu_add_cpu_aliases(&aliases, pmu);
 
diff --git a/tools/perf/util/pmu.h b/tools/perf/util/pmu.h
index 5fb3f16828df..62ebca9481fe 100644
--- a/tools/perf/util/pmu.h
+++ b/tools/perf/util/pmu.h
@@ -24,6 +24,7 @@ struct perf_event_attr;
 
 struct perf_pmu {
 	char *name;
+	char *id;
 	__u32 type;
 	bool selectable;
 	bool is_uncore;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
