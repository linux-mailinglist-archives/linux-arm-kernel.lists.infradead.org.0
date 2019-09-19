Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0793B73F2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 09:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/pIXtxQkinCF3B+bMIFR9syZH1cnMp5deKDnB0uOUoo=; b=YocNNpYxyMZhds
	2+rlRuNC38k2MG5sL9xKxGDEvu608nGluSo2ykfl5YJSx6kLVZSie+8GLw/9Tq/iUp0n4aRFWb5Dk
	aMYweJhvoD99F9ehmoa5HElpj03OqdqIpmNsgiMpmzxbnx+P05BA896x4HhO9yG5fwLyY7EW2LcQY
	hxBR0qccjHnpP6Nh3gQ4Vby/bP1d3ohzFT26x9+5N+awjME7oDMnmtSd53nY7gd54MvkDtlrpBG1S
	l2Gh44I+VsTfvVxwWM3NzImNgVlfDNhUWmSCEQTQcBfocZSqBZrD6Ag9QnjyRT7/WPxHbnh4gEZk1
	RXBRZx62pthB1i0HBHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAqkE-0006bH-Bf; Thu, 19 Sep 2019 07:20:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAqjw-0006a5-Me; Thu, 19 Sep 2019 07:20:34 +0000
X-UUID: 22b3e64706e546008fbf5e3525d82424-20190918
X-UUID: 22b3e64706e546008fbf5e3525d82424-20190918
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yt.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1439371941; Wed, 18 Sep 2019 23:20:24 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 00:20:22 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 15:20:23 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 19 Sep 2019 15:20:21 +0800
From: YT Chang <yt.chang@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH 1/1] sched/eas: introduce system-wide overutil indicator
Date: Thu, 19 Sep 2019 15:20:22 +0800
Message-ID: <1568877622-28073-1-git-send-email-yt.chang@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_002032_741592_2DD925BF 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-arm-kernel@lists.infradead.org, YT Chang <yt.chang@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When the system is overutilization, the load-balance crossing
clusters will be triggered and scheduler will not use energy
aware scheduling to choose CPUs.

The overutilization means the loading of  ANY CPUs
exceeds threshold (80%).

However, only 1 heavy task or while-1 program will run on highest
capacity CPUs and it still result to trigger overutilization. So
the system will not use Energy Aware scheduling.

To avoid it, a system-wide over-utilization indicator to trigger
load-balance cross clusters.

The policy is:
	The loading of "ALL CPUs in the highest capacity"
						exceeds threshold(80%) or
	The loading of "Any CPUs not in the highest capacity"
						exceed threshold(80%)

Signed-off-by: YT Chang <yt.chang@mediatek.com>
---
 kernel/sched/fair.c | 76 +++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 65 insertions(+), 11 deletions(-)

diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
index 036be95..f4c3d70 100644
--- a/kernel/sched/fair.c
+++ b/kernel/sched/fair.c
@@ -5182,10 +5182,71 @@ static inline bool cpu_overutilized(int cpu)
 static inline void update_overutilized_status(struct rq *rq)
 {
 	if (!READ_ONCE(rq->rd->overutilized) && cpu_overutilized(rq->cpu)) {
-		WRITE_ONCE(rq->rd->overutilized, SG_OVERUTILIZED);
-		trace_sched_overutilized_tp(rq->rd, SG_OVERUTILIZED);
+		if (capacity_orig_of(cpu_of(rq)) < rq->rd->max_cpu_capacity) {
+			WRITE_ONCE(rq->rd->overutilized, SG_OVERUTILIZED);
+			trace_sched_overutilized_tp(rq->rd, SG_OVERUTILIZED);
+		}
 	}
 }
+
+static
+void update_system_overutilized(struct sched_domain *sd, struct cpumask *cpus)
+{
+	unsigned long group_util;
+	bool intra_overutil = false;
+	unsigned long max_capacity;
+	struct sched_group *group = sd->groups;
+	struct root_domain *rd;
+	int this_cpu;
+	bool overutilized;
+	int i;
+
+	this_cpu = smp_processor_id();
+	rd = cpu_rq(this_cpu)->rd;
+	overutilized = READ_ONCE(rd->overutilized);
+	max_capacity = rd->max_cpu_capacity;
+
+	do {
+		group_util = 0;
+		for_each_cpu_and(i, sched_group_span(group), cpus) {
+			group_util += cpu_util(i);
+			if (cpu_overutilized(i)) {
+				if (capacity_orig_of(i) < max_capacity) {
+					intra_overutil = true;
+					break;
+				}
+			}
+		}
+
+		/*
+		 * A capacity base hint for over-utilization.
+		 * Not to trigger system overutiled if heavy tasks
+		 * in Big.cluster, so
+		 * add the free room(20%) of Big.cluster is impacted which means
+		 * system-wide over-utilization,
+		 * that considers whole cluster not single cpu
+		 */
+		if (group->group_weight > 1 && (group->sgc->capacity * 1024 <
+						group_util * capacity_margin)) {
+			intra_overutil = true;
+			break;
+		}
+
+		group = group->next;
+
+	} while (group != sd->groups && !intra_overutil);
+
+	if (overutilized != intra_overutil) {
+		if (intra_overutil == true) {
+			WRITE_ONCE(rd->overutilized, SG_OVERUTILIZED);
+			trace_sched_overutilized_tp(rd, SG_OVERUTILIZED);
+		} else {
+			WRITE_ONCE(rd->overutilized, 0);
+			trace_sched_overutilized_tp(rd, 0);
+		}
+	}
+}
+
 #else
 static inline void update_overutilized_status(struct rq *rq) { }
 #endif
@@ -8242,15 +8303,6 @@ static inline void update_sd_lb_stats(struct lb_env *env, struct sd_lb_stats *sd
 
 		/* update overload indicator if we are at root domain */
 		WRITE_ONCE(rd->overload, sg_status & SG_OVERLOAD);
-
-		/* Update over-utilization (tipping point, U >= 0) indicator */
-		WRITE_ONCE(rd->overutilized, sg_status & SG_OVERUTILIZED);
-		trace_sched_overutilized_tp(rd, sg_status & SG_OVERUTILIZED);
-	} else if (sg_status & SG_OVERUTILIZED) {
-		struct root_domain *rd = env->dst_rq->rd;
-
-		WRITE_ONCE(rd->overutilized, SG_OVERUTILIZED);
-		trace_sched_overutilized_tp(rd, SG_OVERUTILIZED);
 	}
 }
 
@@ -8476,6 +8528,8 @@ static struct sched_group *find_busiest_group(struct lb_env *env)
 	 */
 	update_sd_lb_stats(env, &sds);
 
+	update_system_overutilized(env->sd, env->cpus);
+
 	if (sched_energy_enabled()) {
 		struct root_domain *rd = env->dst_rq->rd;
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
