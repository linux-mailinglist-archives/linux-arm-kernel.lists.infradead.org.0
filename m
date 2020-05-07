Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D58A81C8A01
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KdQXKtgPOOPY6NbcrsrNKQI7xflAHarfsZDK3vi0BiQ=; b=CvOfbZgz9EbFkm
	bioAz83UOgomnN92nU2qQWtd0bE4BXoZrTRssniNjkWHvdALAXcPF6AR+YlxtCsR+VSVi2D346RhA
	snaWa6sHojyWspT/BDzDW2rNoJbzerBpFfMgvSKfMONr8FBpZvAVSmmezJRGeByHHmHWcS3ltEj1r
	Qa1+5Wd5gp4vI73o/VC4NOQJcEo7RZSv3qo1NNeomeLuaEHUXIt0D3M2PTDeGh7SmuTtdSE/ccKnx
	2ag7VAKotmtHHP9t+xTa2I0en9QdP6ZY9WqABPoXoDv94esemOnx0sI6MDUmVo9cygWSQtLFFRNuI
	24OWweRXna3n3laL5XeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfF6-0008CQ-9O; Thu, 07 May 2020 12:03:08 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfEK-0007cS-D5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:02:22 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A036DE4807D337282B8E;
 Thu,  7 May 2020 20:02:09 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:01:59 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH RFC v3 10/12] perf metricgroup: Split up metricgroup__print()
Date: Thu, 7 May 2020 19:57:49 +0800
Message-ID: <1588852671-61996-11-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050220_646245_D6FC6337 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

To aid supporting system event metric groups, break up the function
metricgroup__print() into a part which iterates metrics and a part
which actually "prints" the metric.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/util/metricgroup.c | 117 ++++++++++++++++++++++++------------------
 1 file changed, 66 insertions(+), 51 deletions(-)

diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
index d1033756a1bc..31e97e24c2b0 100644
--- a/tools/perf/util/metricgroup.c
+++ b/tools/perf/util/metricgroup.c
@@ -315,6 +315,68 @@ static void metricgroup__print_strlist(struct strlist *metrics, bool raw)
 		putchar('\n');
 }
 
+
+static void metricgroup__print_pmu_event(struct pmu_event *pe,
+					 bool metricgroups, char *filter,
+					 bool raw, bool details,
+					 struct rblist *groups,
+					 struct strlist *metriclist)
+{
+	const char *g;
+
+	g = pe->metric_group;
+	if (!g && pe->metric_name) {
+		if (pe->name)
+			return;
+		g = "No_group";
+	}
+
+	if (g) {
+		char *omg;
+		char *mg = strdup(g);
+
+		if (!mg)
+			return;
+		omg = mg;
+		while ((g = strsep(&mg, ";")) != NULL) {
+			struct mep *me;
+			char *s;
+
+			g = skip_spaces(g);
+			if (*g == 0)
+				g = "No_group";
+			if (filter && !strstr(g, filter))
+				continue;
+			if (raw)
+				s = (char *)pe->metric_name;
+			else {
+				if (asprintf(&s, "%s\n%*s%s]", pe->metric_name,
+					     8, "[", pe->desc) < 0)
+					return;
+
+				if (details) {
+					if (asprintf(&s, "%s\n%*s%s]", s, 8,
+						     "[", pe->metric_expr) < 0)
+						return;
+				}
+			}
+
+			if (!s)
+				continue;
+
+			if (!metricgroups) {
+				strlist__add(metriclist, s);
+			} else {
+				me = mep_lookup(groups, g);
+				if (!me)
+					continue;
+				strlist__add(me->metrics, s);
+			}
+		}
+		free(omg);
+	}
+}
+
 void metricgroup__print(bool metrics, bool metricgroups, char *filter,
 			bool raw, bool details)
 {
@@ -339,63 +401,15 @@ void metricgroup__print(bool metrics, bool metricgroups, char *filter,
 	groups.node_cmp = mep_cmp;
 	groups.node_delete = mep_delete;
 	for (i = 0; ; i++) {
-		const char *g;
 		pe = &map->table[i];
 
 		if (!pe->name && !pe->metric_group && !pe->metric_name)
 			break;
 		if (!pe->metric_expr)
 			continue;
-		g = pe->metric_group;
-		if (!g && pe->metric_name) {
-			if (pe->name)
-				continue;
-			g = "No_group";
-		}
-		if (g) {
-			char *omg;
-			char *mg = strdup(g);
-
-			if (!mg)
-				return;
-			omg = mg;
-			while ((g = strsep(&mg, ";")) != NULL) {
-				struct mep *me;
-				char *s;
-
-				g = skip_spaces(g);
-				if (*g == 0)
-					g = "No_group";
-				if (filter && !strstr(g, filter))
-					continue;
-				if (raw)
-					s = (char *)pe->metric_name;
-				else {
-					if (asprintf(&s, "%s\n%*s%s]",
-						     pe->metric_name, 8, "[", pe->desc) < 0)
-						return;
-
-					if (details) {
-						if (asprintf(&s, "%s\n%*s%s]",
-							     s, 8, "[", pe->metric_expr) < 0)
-							return;
-					}
-				}
-
-				if (!s)
-					continue;
 
-				if (!metricgroups) {
-					strlist__add(metriclist, s);
-				} else {
-					me = mep_lookup(&groups, g);
-					if (!me)
-						continue;
-					strlist__add(me->metrics, s);
-				}
-			}
-			free(omg);
-		}
+		metricgroup__print_pmu_event(pe, metricgroups, filter, raw,
+					     details, &groups, metriclist);
 	}
 
 	if (metricgroups && !raw)
@@ -407,7 +421,8 @@ void metricgroup__print(bool metrics, bool metricgroups, char *filter,
 		struct mep *me = container_of(node, struct mep, nd);
 
 		if (metricgroups)
-			printf("%s%s%s", me->name, metrics && !raw ? ":" : "", raw ? " " : "\n");
+			printf("%s%s%s", me->name, metrics && !raw ? ":" : "",
+			       raw ? " " : "\n");
 		if (metrics)
 			metricgroup__print_strlist(me->metrics, raw);
 		next = rb_next(node);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
