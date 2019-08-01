Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D877DEB1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 17:23:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vil5pXOwXeeyjjr89jTE6GGC8x+AwfQMoEpGbAa9ygw=; b=CEzy7FrRAzHt6a
	Wtk/3QcnCWXAbKy15wpG3FFY4lORaPa0mPZ17As8E9B2Pqbbx6BEasa/gRWdmJuFP+Ax2jueRl4KK
	XalQd83Ztja8sALCDCameM/yexG58G/mLNN0iFhYoY+jV+PBkENNI29podPhwv0B9c7X7690l8nge
	GncaAzKHlIZTgBCILm7c9lmQRu82sjqn1WHnMV0cynuyJsDy6Ny4Dx2e8oBZhuIuJAp7/YSsLhj2D
	6NauIgd0bUqhefWhj2eTlCnK0t4BXnPXZHXGAH9TimsJbqoraJKuf3JBnTCR7yu9pA5xOmmtrFxJa
	5NtH0vEDKZ8C3hFK/cVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htCv2-0008Ft-Du; Thu, 01 Aug 2019 15:23:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htCus-0008Er-RU
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 15:22:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 84BD9337;
 Thu,  1 Aug 2019 08:22:52 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CF5D63F694;
 Thu,  1 Aug 2019 08:22:51 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will.deacon@arm.com,
	mark.rutland@arm.com
Subject: [PATCH v2 1/2] perf/smmuv3: Validate group size
Date: Thu,  1 Aug 2019 16:22:44 +0100
Message-Id: <85f2db579f90f0a89d6c6bb4e53191e9ad172805.1564672242.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_082254_933237_417245BE 
X-CRM114-Status: GOOD (  15.17  )
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

Ensure that a group will actually fit into the available counters.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
v2:
 - fix condition that thought we were only counting siblings
 - don't inadvertently count software events
 - and don't forget the group leader isn't a sibling, grr...

 drivers/perf/arm_smmuv3_pmu.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index da71c741cb46..c65c197b52a7 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -323,6 +323,7 @@ static int smmu_pmu_event_init(struct perf_event *event)
 	struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);
 	struct device *dev = smmu_pmu->dev;
 	struct perf_event *sibling;
+	int group_num_events = 1;
 	u16 event_id;
 
 	if (event->attr.type != event->pmu->type)
@@ -347,18 +348,23 @@ static int smmu_pmu_event_init(struct perf_event *event)
 	}
 
 	/* Don't allow groups with mixed PMUs, except for s/w events */
-	if (event->group_leader->pmu != event->pmu &&
-	    !is_software_event(event->group_leader)) {
-		dev_dbg(dev, "Can't create mixed PMU group\n");
-		return -EINVAL;
+	if (!is_software_event(event->group_leader)) {
+		if (event->group_leader->pmu != event->pmu)
+			return -EINVAL;
+
+		if (++group_num_events > smmu_pmu->num_counters)
+			return -EINVAL;
 	}
 
 	for_each_sibling_event(sibling, event->group_leader) {
-		if (sibling->pmu != event->pmu &&
-		    !is_software_event(sibling)) {
-			dev_dbg(dev, "Can't create mixed PMU group\n");
+		if (is_software_event(sibling))
+			continue;
+
+		if (sibling->pmu != event->pmu)
+			return -EINVAL;
+
+		if (++group_num_events > smmu_pmu->num_counters)
 			return -EINVAL;
-		}
 	}
 
 	hwc->idx = -1;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
