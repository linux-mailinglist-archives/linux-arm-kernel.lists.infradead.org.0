Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 811971C8A04
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOMBg3PUUKQdZ+m1JhNuIOCwqPn1eI/uOGydCTFZ9xg=; b=lhFmpdgM3c4w25
	Sh2/HVEWq2w5y1fA6mbty/JX10yac9HX6Gw2I49Nb5Ol7C1TbuLVA4CeaQEVAwA50SS/jLSqAGXel
	3frnYnRRbw9zSB/g4qxgC8T72ueJqeHlcTluCeeixh6hJRMAG0Oac/TMfh+ryIwXKLYM+NNSpN/pE
	SqfyZiZJBnFfYmPay48mT6Dh/O2cRAiSYtP35pPpwCncAoxag4d6PD4TKaujoKMykAvOFSDHg8/A7
	iu6c/jTAFp1w8lOPWtTLfhsSVkiaeg+rZT4QcOie4YkLoRDDsVJ9JdqHFAzqnFUrwQheOHLPMLdDt
	BlZxarpxHUNFdSLXkp9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfFa-0000Gm-CU; Thu, 07 May 2020 12:03:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfEL-0007ei-5n
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:02:25 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B653B1428696BD3F08A5;
 Thu,  7 May 2020 20:02:04 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:01:58 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH RFC v3 06/12] perf pmu: Add pmu_id()
Date: Thu, 7 May 2020 19:57:45 +0800
Message-ID: <1588852671-61996-7-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050221_404000_A9F36A66 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
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
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a function to read the PMU id sysfs entry. We only do it for uncore
PMUs where this would be relevant.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 18 ++++++++++++++++++
 tools/perf/util/pmu.h |  1 +
 2 files changed, 19 insertions(+)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index ef6a63f3d386..6f77c6af9e04 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -594,6 +594,7 @@ static struct perf_cpu_map *__pmu_cpumask(const char *path)
  * Uncore PMUs have a "cpumask" file under sysfs. CPU PMUs (e.g. on arm/arm64)
  * may have a "cpus" file.
  */
+#define CPUS_TEMPLATE_ID	"./bus/event_source/devices/%s/identifier"
 #define CPUS_TEMPLATE_UNCORE	"%s/bus/event_source/devices/%s/cpumask"
 #define CPUS_TEMPLATE_CPU	"%s/bus/event_source/devices/%s/cpus"
 
@@ -632,6 +633,21 @@ static bool pmu_is_uncore(const char *name)
 	return file_available(path);
 }
 
+static char *pmu_id(const char *name)
+{
+	char path[PATH_MAX], *str;
+	size_t len;
+
+	snprintf(path, PATH_MAX, CPUS_TEMPLATE_ID, name);
+
+	if (sysfs__read_str(path, &str, &len) < 0)
+		return NULL;
+
+	str[len - 1] = 0; // remove line feed
+
+	return str;
+}
+
 /*
  *  PMU CORE devices have different name other than cpu in sysfs on some
  *  platforms.
@@ -844,6 +860,8 @@ static struct perf_pmu *pmu_lookup(const char *name)
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
