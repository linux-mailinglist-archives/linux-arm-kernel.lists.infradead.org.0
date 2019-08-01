Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2F27DEB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lkEEdGopovYiyfvzW3DdQaCOpGKWzb9fx9x1Z0k5X+c=; b=MY58c26d0LWy3O
	t/iwHXAqPsWbhiCKWlDoAEBpn/x5ipFEc3kBvE1k8mcm+H5YjahVlDnI7h7wWpVPEE67HghRsFl7z
	UnZRZglPMqaRtcUGDmjYfQ7+Vl/v1K3XeCUiON8X0Q/Bk3evgO+CHP3Mlk90ala30D26lcxUHPRm6
	8fsVUrus9MbS+nqRE6JuX6t/Ej16SScwehjOyKPzOBudHC03/6tlbmV7SSxJQQY43NYk7flzRwSAW
	pzz+LjgidKnAWIWuOEajex6a4JH4sKqp6JooiTBgBD/U8KQR5e9PPnu5u3BjSac21ccyAvEDzE12y
	3AqAg33UfFp91osbpGLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCvG-0008Sj-6q; Thu, 01 Aug 2019 15:23:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htCut-0008Et-Fv
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:22:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 670C31597;
 Thu,  1 Aug 2019 08:22:53 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B5ABE3F694;
 Thu,  1 Aug 2019 08:22:52 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will.deacon@arm.com,
	mark.rutland@arm.com
Subject: [PATCH v2 2/2] perf/smmuv3: Validate groups for global filtering
Date: Thu,  1 Aug 2019 16:22:45 +0100
Message-Id: <bb733b983dd696f6d98cc720f7185f8a89c1bc60.1564672242.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <85f2db579f90f0a89d6c6bb4e53191e9ad172805.1564672242.git.robin.murphy@arm.com>
References: <85f2db579f90f0a89d6c6bb4e53191e9ad172805.1564672242.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082255_615472_5BDD0B57 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org, shameerali.kolothum.thodi@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With global filtering, it becomes possible for users to construct
self-contradictory groups with conflicting filters. Make sure we
cover that when initially validating events.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
v2:
 - generalise to reusable event-checking helpers
 - don't forget the group leader (again)

This seems like a reasonable compromise for now vs. rewriting half the
driver just to make a 'fake PMU' approach viable.

 drivers/perf/arm_smmuv3_pmu.c | 47 +++++++++++++++++++++++++----------
 1 file changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index c65c197b52a7..9110d7d86b81 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -113,8 +113,6 @@ struct smmu_pmu {
 	u64 counter_mask;
 	u32 options;
 	bool global_filter;
-	u32 global_filter_span;
-	u32 global_filter_sid;
 };
 
 #define to_smmu_pmu(p) (container_of(p, struct smmu_pmu, pmu))
@@ -260,6 +258,19 @@ static void smmu_pmu_set_event_filter(struct perf_event *event,
 	smmu_pmu_set_smr(smmu_pmu, idx, sid);
 }
 
+static bool smmu_pmu_check_global_filter(struct perf_event *curr,
+					 struct perf_event *new)
+{
+	if (get_filter_enable(new) != get_filter_enable(curr))
+		return false;
+
+	if (!get_filter_enable(new))
+		return true;
+
+	return get_filter_span(new) == get_filter_span(curr) &&
+	       get_filter_stream_id(new) == get_filter_stream_id(curr);
+}
+
 static int smmu_pmu_apply_event_filter(struct smmu_pmu *smmu_pmu,
 				       struct perf_event *event, int idx)
 {
@@ -279,17 +290,14 @@ static int smmu_pmu_apply_event_filter(struct smmu_pmu *smmu_pmu,
 	}
 
 	/* Requested settings same as current global settings*/
-	if (span == smmu_pmu->global_filter_span &&
-	    sid == smmu_pmu->global_filter_sid)
+	idx = find_first_bit(smmu_pmu->used_counters, num_ctrs);
+	if (idx == num_ctrs ||
+	    smmu_pmu_check_global_filter(smmu_pmu->events[idx], event)) {
+		smmu_pmu_set_event_filter(event, 0, span, sid);
 		return 0;
+	}
 
-	if (!bitmap_empty(smmu_pmu->used_counters, num_ctrs))
-		return -EAGAIN;
-
-	smmu_pmu_set_event_filter(event, 0, span, sid);
-	smmu_pmu->global_filter_span = span;
-	smmu_pmu->global_filter_sid = sid;
-	return 0;
+	return -EAGAIN;
 }
 
 static int smmu_pmu_get_event_idx(struct smmu_pmu *smmu_pmu,
@@ -312,6 +320,19 @@ static int smmu_pmu_get_event_idx(struct smmu_pmu *smmu_pmu,
 	return idx;
 }
 
+static bool smmu_pmu_events_compatible(struct perf_event *curr,
+				       struct perf_event *new)
+{
+	if (new->pmu != curr->pmu)
+		return false;
+
+	if (to_smmu_pmu(new->pmu)->global_filter &&
+	    !smmu_pmu_check_global_filter(curr, new))
+		return false;
+
+	return true;
+}
+
 /*
  * Implementation of abstract pmu functionality required by
  * the core perf events code.
@@ -349,7 +370,7 @@ static int smmu_pmu_event_init(struct perf_event *event)
 
 	/* Don't allow groups with mixed PMUs, except for s/w events */
 	if (!is_software_event(event->group_leader)) {
-		if (event->group_leader->pmu != event->pmu)
+		if (!smmu_pmu_events_compatible(event->group_leader, event))
 			return -EINVAL;
 
 		if (++group_num_events > smmu_pmu->num_counters)
@@ -360,7 +381,7 @@ static int smmu_pmu_event_init(struct perf_event *event)
 		if (is_software_event(sibling))
 			continue;
 
-		if (sibling->pmu != event->pmu)
+		if (!smmu_pmu_events_compatible(sibling, event))
 			return -EINVAL;
 
 		if (++group_num_events > smmu_pmu->num_counters)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
