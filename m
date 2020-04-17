Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F001ADB6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcyVGbUZeFDSSx5WlQ1K9qAPf3vRp3HKiIoGkphdckI=; b=SghWyEyDFo61fX
	OXhndtS8IYF8wgbMlzCup8ZoBPeJHunADs3CzxHkyrSVSsMEpkkydXmXzbAuIaNjvY4kXLCDaskBn
	5unmhgusD8k9lXzre/BCnIaT0I3MMkcr6xcOMUKXDP0eK9lw5YfG33RXC5Kyp7tLJKVeubVCD6KdA
	q+0KAQL+2sF31PuK00BtCYSi3K5kyBu/cTz5Vekh7reMtAmoUw/9Gbk0FXnxtFGZCn7U63OZz4vil
	j2xs7A8++iOUyrCj5dDprdHklcnSmmb4nZAmXzynfzZuicif8UI1HI+9IvM3D5TyNUtQzO2McAQjT
	JDhH7Yy9yZ5nLuO92Ekg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOX4-0002Qf-H5; Fri, 17 Apr 2020 10:47:38 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOV5-0000oT-6Z
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:37 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B57A69A7C71A36E71477;
 Fri, 17 Apr 2020 18:45:31 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:22 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 12/13] perf metricgroup: Support printing metric groups
 for system PMUs
Date: Fri, 17 Apr 2020 18:41:23 +0800
Message-ID: <1587120084-18990-13-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034535_484073_89BC6FFD 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

Currently only metricgroups for core- or uncore-based events is supported.
Extend this for system events.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/metricgroup.c | 61 ++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 57 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
index 31e97e24c2b0..81a6aa04a601 100644
--- a/tools/perf/util/metricgroup.c
+++ b/tools/perf/util/metricgroup.c
@@ -377,19 +377,55 @@ static void metricgroup__print_pmu_event(struct pmu_event *pe,
 	}
 }
 
+struct metricgroup_print_sys_idata {
+	struct strlist *metriclist;
+	bool metricgroups;
+	char *filter;
+	bool raw;
+	bool details;
+	struct rblist *groups;
+};
+
+typedef int (*metricgroup_sys_event_iter_fn)(struct pmu_event *pe, void *);
+
+struct metricgroup_iter_data {
+	metricgroup_sys_event_iter_fn fn;
+	void *data;
+};
+
+static int metricgroup__sys_event_iter(struct perf_pmu *pmu,
+				       struct pmu_event *pe,
+				       void *data)
+{
+	struct metricgroup_iter_data *d = data;
+
+	if (!pe->metric_expr || !pe->compat || strcmp(pe->compat, pmu->id))
+		return 0;
+
+	return d->fn(pe, d->data);
+}
+
+static int metricgroup__print_sys_event_iter(struct pmu_event *pe, void *data)
+{
+	struct metricgroup_print_sys_idata *d = data;
+
+	metricgroup__print_pmu_event(pe, d->metricgroups, d->filter, d->raw,
+				     d->details, d->groups, d->metriclist);
+
+	return 0;
+}
+
 void metricgroup__print(bool metrics, bool metricgroups, char *filter,
 			bool raw, bool details)
 {
 	struct pmu_events_map *map = perf_pmu__find_map(NULL);
 	struct pmu_event *pe;
+	struct perf_pmu *pmu = NULL;
 	int i;
 	struct rblist groups;
 	struct rb_node *node, *next;
 	struct strlist *metriclist = NULL;
 
-	if (!map)
-		return;
-
 	if (!metricgroups) {
 		metriclist = strlist__new(NULL, NULL);
 		if (!metriclist)
@@ -400,7 +436,7 @@ void metricgroup__print(bool metrics, bool metricgroups, char *filter,
 	groups.node_new = mep_new;
 	groups.node_cmp = mep_cmp;
 	groups.node_delete = mep_delete;
-	for (i = 0; ; i++) {
+	for (i = 0; map; i++) {
 		pe = &map->table[i];
 
 		if (!pe->name && !pe->metric_group && !pe->metric_name)
@@ -412,6 +448,23 @@ void metricgroup__print(bool metrics, bool metricgroups, char *filter,
 					     details, &groups, metriclist);
 	}
 
+	while ((pmu = perf_pmu__scan(pmu)) != NULL) {
+		struct metricgroup_iter_data data = {
+			.fn = metricgroup__print_sys_event_iter,
+			.data = (void *) &(struct metricgroup_print_sys_idata){
+				.metriclist = metriclist,
+				.metricgroups = metricgroups,
+				.filter = filter,
+				.raw = raw,
+				.details = details,
+				.groups = &groups,
+			},
+		};
+
+		pmu_for_each_sys_event(pmu, metricgroup__sys_event_iter,
+				       &data);
+	}
+
 	if (metricgroups && !raw)
 		printf("\nMetric Groups:\n\n");
 	else if (metrics && !raw)
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
