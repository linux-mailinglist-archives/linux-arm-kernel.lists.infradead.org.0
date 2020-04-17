Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DBA1ADB99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxkWJo0Fgqcia9QPg4UTol+0ARB9TsEPXYwY0boJGrc=; b=HC74Y0TVYSXsX0
	zjOLVAnFBE0LC0ubyQ02J2M+v7w8WQLrR8mMiZY35hfmbLq53EtR9birvbIjc5JmAy1C6H3QINE73
	7O6lnU1W2ABS9q1GbWF7r30G/5SVDkN3LG5l2fHdNXbwo0ngNzw25/aup4UfT4hLrgWoMn3rpgR75
	9BdQx4R1abUucgtcKkJYxX4vw5f1BddtfdoNM4yvuR/LvuNvsu9kx+ZbmBTJGm+a6TWLtqy6eu7ae
	id0z7YEjJSCSsCOpEhvXXeo8ZmD6lYINP+dJsetHGuSHJQSinleEU6Dj7uJc+Kw0+YuzpqgaipirK
	vSUhjEHnjdV2TpkVhXdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOZK-0005ZJ-Bf; Fri, 17 Apr 2020 10:49:58 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOV5-0000q3-Oo
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:39 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id ACD165155E2A6DD9803C;
 Fri, 17 Apr 2020 18:45:31 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:22 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 13/13] perf metricgroup: Support adding metrics for
 system PMUs
Date: Fri, 17 Apr 2020 18:41:24 +0800
Message-ID: <1587120084-18990-14-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034536_035088_8A35987E 
X-CRM114-Status: GOOD (  12.24  )
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

Currently only adding metrics for core- or uncore-based events is
supported. Extend this for system events.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/metricgroup.c | 40 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 36 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
index 81a6aa04a601..85bf5333e4c6 100644
--- a/tools/perf/util/metricgroup.c
+++ b/tools/perf/util/metricgroup.c
@@ -593,17 +593,34 @@ static int metricgroup__add_metric_pmu_event(struct pmu_event *pe,
 	return 0;
 }
 
+struct metricgroup_add_iter_data {
+	const char *metric;
+	struct strbuf *events;
+	struct list_head *group_list;
+	int *ret;
+};
+
+static int metricgroup__add_metric_sys_event_iter(struct pmu_event *pe,
+						  void *data)
+{
+	struct metricgroup_add_iter_data *d = data;
+
+	if (!match_pe_metric(pe, d->metric))
+		return 0;
+
+	return (*d->ret = metricgroup__add_metric_pmu_event(pe, d->events,
+							    d->group_list));
+}
+
 static int metricgroup__add_metric(const char *metric, struct strbuf *events,
 				   struct list_head *group_list)
 {
 	struct pmu_events_map *map = perf_pmu__find_map(NULL);
+	struct perf_pmu *pmu = NULL;
 	struct pmu_event *pe;
 	int i, ret = -EINVAL;
 
-	if (!map)
-		return 0;
-
-	for (i = 0; ; i++) {
+	for (i = 0; map; i++) {
 		pe = &map->table[i];
 
 		if (!pe->name && !pe->metric_group && !pe->metric_name)
@@ -618,6 +635,21 @@ static int metricgroup__add_metric(const char *metric, struct strbuf *events,
 				return ret;
 		}
 	}
+
+	while ((pmu = perf_pmu__scan(pmu)) != NULL) {
+		struct metricgroup_iter_data data = {
+			.fn = metricgroup__add_metric_sys_event_iter,
+			.data = (void *) &(struct metricgroup_add_iter_data){
+				.metric = metric,
+				.events = events,
+				.group_list = group_list,
+				.ret = &ret,
+			},
+		};
+
+		pmu_for_each_sys_event(pmu, metricgroup__sys_event_iter, &data);
+	}
+
 	return ret;
 }
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
