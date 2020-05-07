Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF1A1C89FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALZ6AXybDzeqDocv9ciaNVwpJVicb8i4hJmgPvXpKFs=; b=fXq17oR5b5PlMk
	niohn9++29UnR62iMKLvKndMbYqcF25CtjvNp2GnIeeV1NNudLJZKJWkbZQ0fPVxDKpPzAK6vWqQw
	WBFVgoXKKWwuBY2ia2scc+LirWRjdD4iKGzZOj9BBk4naUqPQ98wva1LRkNvRaCHOA7qaWTk91apH
	izvl9R0Haa9hq+X9bWjm3vVaYoaKsjmQaGNWsTSmIs3tnNqb/4BlPHjHJ6yAsyz/J8doIjrDwfTKo
	If6Q070YCIRjJvpbEmzlTantXWOZqttor+9SzQuGM4lo1EmKO47A5I+afuGEMKbx6x33zmR1R00mC
	PbIQQbyhK64N4508xmtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfEq-0007tJ-MB; Thu, 07 May 2020 12:02:52 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfEH-0007c2-Kn
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:02:19 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9590B2471D12B6EA3F03;
 Thu,  7 May 2020 20:02:04 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:01:58 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH RFC v3 07/12] perf pmu: Add pmu_add_sys_aliases()
Date: Thu, 7 May 2020 19:57:46 +0800
Message-ID: <1588852671-61996-8-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050217_851117_AFAF4980 
X-CRM114-Status: GOOD (  11.20  )
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

Add pmu_add_sys_aliases() to add system PMU events aliases.

For adding system PMU events, we iterate through all the events per
SoC event table in pmu_sys_event_tables[].

Matches must satisfy both:
- PMU identifer matches event "compat" value
- like uncore event matching, the event "Unit" member must match; this
  match under return value of pmu_uncore_alias_match() (maybe rename that
  function?)

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/pmu.c | 78 +++++++++++++++++++++++++++++++++++++++++++++++++++
 tools/perf/util/pmu.h |  2 ++
 2 files changed, 80 insertions(+)

diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
index 6f77c6af9e04..3986d2360fc1 100644
--- a/tools/perf/util/pmu.c
+++ b/tools/perf/util/pmu.c
@@ -809,6 +809,83 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
 	pmu_add_cpu_aliases_map(head, pmu, map);
 }
 
+void pmu_for_each_sys_event(pmu_sys_event_iter_fn fn, void *data)
+{
+	int i = 0;
+
+	while (1) {
+		struct pmu_sys_events *event_table;
+		int j = 0;
+
+		event_table = &pmu_sys_event_tables[i++];
+
+		if (!event_table->table)
+			break;
+
+		while (1) {
+			struct pmu_event *pe = &event_table->table[j++];
+			int ret;
+
+			if (!pe->name && !pe->metric_group && !pe->metric_name)
+				break;
+
+			ret = fn(pe, data);
+			if (ret)
+				break;
+		}
+	}
+}
+
+struct pmu_sys_event_iter_data {
+	struct list_head *head;
+	struct perf_pmu *pmu;
+};
+
+static int pmu_add_sys_aliases_iter_fn(struct pmu_event *pe, void *data)
+{
+	struct pmu_sys_event_iter_data *idata = data;
+	struct perf_pmu *pmu = idata->pmu;
+
+	if (!pe->name) {
+		if (pe->metric_group || pe->metric_name)
+			return 0;
+		return -EINVAL;
+	}
+
+	if (!pe->compat || !pe->pmu)
+		return 0;
+
+	if (!strcmp(pmu->id, pe->compat) &&
+	    pmu_uncore_alias_match(pe->pmu, pmu->name)) {
+		__perf_pmu__new_alias(idata->head, NULL,
+				      (char *)pe->name,
+				      (char *)pe->desc,
+				      (char *)pe->event,
+				      (char *)pe->long_desc,
+				      (char *)pe->topic,
+				      (char *)pe->unit,
+				      (char *)pe->perpkg,
+				      (char *)pe->metric_expr,
+				      (char *)pe->metric_name,
+				      (char *)pe->deprecated);
+	}
+
+	return 0;
+}
+
+static void pmu_add_sys_aliases(struct list_head *head, struct perf_pmu *pmu)
+{
+	struct pmu_sys_event_iter_data idata = {
+		.head = head,
+		.pmu = pmu,
+	};
+
+	if (!pmu->id)
+		return;
+
+	pmu_for_each_sys_event(pmu_add_sys_aliases_iter_fn, &idata);
+}
+
 struct perf_event_attr * __weak
 perf_pmu__get_default_config(struct perf_pmu *pmu __maybe_unused)
 {
@@ -864,6 +941,7 @@ static struct perf_pmu *pmu_lookup(const char *name)
 		pmu->id = pmu_id(name);
 	pmu->max_precise = pmu_max_precise(name);
 	pmu_add_cpu_aliases(&aliases, pmu);
+	pmu_add_sys_aliases(&aliases, pmu);
 
 	INIT_LIST_HEAD(&pmu->format);
 	INIT_LIST_HEAD(&pmu->aliases);
diff --git a/tools/perf/util/pmu.h b/tools/perf/util/pmu.h
index 62ebca9481fe..f75f54afb354 100644
--- a/tools/perf/util/pmu.h
+++ b/tools/perf/util/pmu.h
@@ -106,6 +106,8 @@ void pmu_add_cpu_aliases_map(struct list_head *head, struct perf_pmu *pmu,
 struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu);
 bool pmu_uncore_alias_match(const char *pmu_name, const char *name);
 
+typedef int (*pmu_sys_event_iter_fn)(struct pmu_event *pe, void *data);
+void pmu_for_each_sys_event(pmu_sys_event_iter_fn fn, void *data);
 int perf_pmu__convert_scale(const char *scale, char **end, double *sval);
 
 #endif /* __PMU_H */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
