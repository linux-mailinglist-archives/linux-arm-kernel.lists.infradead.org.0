Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2526E1ADB6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:48:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E34z4plsa3BSYPY+6/8nedcFtMRzRbsHRLepQdVuf+Q=; b=b0r+tbwAQXN7LO
	XRODyfD4tL7hNLcEdwo+KDPa6RxKMDKESUf5lbUuKQ0tQhrg22O8LGL/x0atxBAE4mD03x2EW4SRi
	LN09oDoySuECsT05v7MOW7hdT3S94L/WNgoP7RheYRDzl6AmwTZD+HuECSHKBMUlQwquNvxcs0XmC
	hH/9BYdhVelYnjij+yyHDAocIwchN2tMQbtrkNXQOd+HL/oaGlKOgb7283kC29hcaBJogzZnZTeqT
	Fg8qMqywTm5nmV8yXu1KZe8WvJGrxuU2CzEERF0QC54NQwIMhb/b+maS7uLRhJID/gjVU/FhEQ5QC
	+YW7pRFSyf81h2QHW99g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOXO-0002g2-E4; Fri, 17 Apr 2020 10:47:58 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOV5-0000oV-GA
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:38 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A3ACF16856F9D903B27A;
 Fri, 17 Apr 2020 18:45:31 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:21 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 10/13] perf metricgroup: Split up
 metricgroup__add_metric()
Date: Fri, 17 Apr 2020 18:41:21 +0800
Message-ID: <1587120084-18990-11-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034535_789867_EA8BFA05 
X-CRM114-Status: GOOD (  12.46  )
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

To aid supporting system event metric groups, break up the function
metricgroup__add_metric() into a part which iterates metrics and a part
which actually "adds" the metric.

No functional change intended.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/metricgroup.c | 75 ++++++++++++++++++++++++++-----------------
 1 file changed, 45 insertions(+), 30 deletions(-)

diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
index 926449a7cdbf..d1033756a1bc 100644
--- a/tools/perf/util/metricgroup.c
+++ b/tools/perf/util/metricgroup.c
@@ -231,6 +231,12 @@ static bool match_metric(const char *n, const char *list)
 	return false;
 }
 
+static bool match_pe_metric(struct pmu_event *pe, const char *metric)
+{
+	return match_metric(pe->metric_group, metric) ||
+	       match_metric(pe->metric_name, metric);
+}
+
 struct mep {
 	struct rb_node nd;
 	const char *name;
@@ -485,6 +491,40 @@ static bool metricgroup__has_constraint(struct pmu_event *pe)
 	return false;
 }
 
+static int metricgroup__add_metric_pmu_event(struct pmu_event *pe,
+					     struct strbuf *events,
+					     struct list_head *group_list)
+{
+	const char **ids;
+	int idnum;
+	struct egroup *eg;
+
+	pr_debug("metric expr %s for %s\n", pe->metric_expr, pe->metric_name);
+
+	if (expr__find_other(pe->metric_expr, NULL, &ids, &idnum) < 0)
+		return 0;
+
+	if (events->len > 0)
+		strbuf_addf(events, ",");
+
+	if (metricgroup__has_constraint(pe))
+		metricgroup__add_metric_non_group(events, ids, idnum);
+	else
+		metricgroup__add_metric_weak_group(events, ids, idnum);
+
+	eg = malloc(sizeof(*eg));
+	if (!eg)
+		return -ENOMEM;
+	eg->ids = ids;
+	eg->idnum = idnum;
+	eg->metric_name = pe->metric_name;
+	eg->metric_expr = pe->metric_expr;
+	eg->metric_unit = pe->unit;
+	list_add_tail(&eg->nd, group_list);
+
+	return 0;
+}
+
 static int metricgroup__add_metric(const char *metric, struct strbuf *events,
 				   struct list_head *group_list)
 {
@@ -502,37 +542,12 @@ static int metricgroup__add_metric(const char *metric, struct strbuf *events,
 			break;
 		if (!pe->metric_expr)
 			continue;
-		if (match_metric(pe->metric_group, metric) ||
-		    match_metric(pe->metric_name, metric)) {
-			const char **ids;
-			int idnum;
-			struct egroup *eg;
-
-			pr_debug("metric expr %s for %s\n", pe->metric_expr, pe->metric_name);
 
-			if (expr__find_other(pe->metric_expr,
-					     NULL, &ids, &idnum) < 0)
-				continue;
-			if (events->len > 0)
-				strbuf_addf(events, ",");
-
-			if (metricgroup__has_constraint(pe))
-				metricgroup__add_metric_non_group(events, ids, idnum);
-			else
-				metricgroup__add_metric_weak_group(events, ids, idnum);
-
-			eg = malloc(sizeof(struct egroup));
-			if (!eg) {
-				ret = -ENOMEM;
-				break;
-			}
-			eg->ids = ids;
-			eg->idnum = idnum;
-			eg->metric_name = pe->metric_name;
-			eg->metric_expr = pe->metric_expr;
-			eg->metric_unit = pe->unit;
-			list_add_tail(&eg->nd, group_list);
-			ret = 0;
+		if (match_pe_metric(pe, metric)) {
+			ret = metricgroup__add_metric_pmu_event(pe, events,
+								group_list);
+			if (ret)
+				return ret;
 		}
 	}
 	return ret;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
