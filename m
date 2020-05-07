Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A151C8A13
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:05:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTaA/f8cXzx36vg36c0qukO6R4w4eYMBaPtZU0xx2Xs=; b=L5v4kYchVOwVD8
	tO1la5SzM0OHpZsqGu5LJ2AflcD31LjGegRbw1T/FaaFay6lY28Q4K9AWj6qaiGrDymybjEgdJGje
	6P3zc1J+CMiNPJCHkZCWSW9l8SYp51wjzqxSADKz70LXR4491onJMzV3BSwPaxmubUU6LaL+fNAXk
	6sm++SFWQ8JHuhVf+RiRCrsrlSXAZy3k15P6CeZB+F8iWIZrP77UDp8XyPjUmIrap3JPY4N/sM/qx
	YNUbhe2SItKVio57VBQG3ezOh+ruMIe1aLwPqORWXxP4Vz9uIQNffC6QuVPMOJJAwWZuQIO9xLJUT
	d9Yb+28e6MQsw3ObiDUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfH6-0001jT-OX; Thu, 07 May 2020 12:05:12 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfEP-0007k1-AO
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:02:27 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D05AFE545BD120C91F3D;
 Thu,  7 May 2020 20:02:09 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:02:00 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH RFC v3 12/12] perf metricgroup: Support adding metrics for
 system PMUs
Date: Thu, 7 May 2020 19:57:51 +0800
Message-ID: <1588852671-61996-13-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050225_545396_C614EC16 
X-CRM114-Status: GOOD (  12.91  )
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

Currently only adding metrics for core- or uncore-based events is
supported. Extend this for system events.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/metricgroup.c | 39 +++++++++++++++++++++++++++++++++++----
 1 file changed, 35 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
index ecf14aa01a59..4062bb33912a 100644
--- a/tools/perf/util/metricgroup.c
+++ b/tools/perf/util/metricgroup.c
@@ -598,6 +598,25 @@ static int metricgroup__add_metric_pmu_event(struct pmu_event *pe,
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
@@ -605,10 +624,7 @@ static int metricgroup__add_metric(const char *metric, struct strbuf *events,
 	struct pmu_event *pe;
 	int i, ret = -EINVAL;
 
-	if (!map)
-		return 0;
-
-	for (i = 0; ; i++) {
+	for (i = 0; map; i++) {
 		pe = &map->table[i];
 
 		if (!pe->name && !pe->metric_group && !pe->metric_name)
@@ -623,6 +639,21 @@ static int metricgroup__add_metric(const char *metric, struct strbuf *events,
 				return ret;
 		}
 	}
+
+	{
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
+		pmu_for_each_sys_event(metricgroup__sys_event_iter, &data);
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
