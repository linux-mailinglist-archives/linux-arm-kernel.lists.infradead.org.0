Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3117C3B7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQFzD2nhdWBk5uvQlD7ChwXAvEqqfmtQ3N81Nma5jBE=; b=bFDs+BtpGMSps5
	QaieJOgyD89veSP9DQD/n0f4i22A4fBfL6qOQ0dVd4i90ZI81OpTsfWOwvH9enfX4fPhlIByIv9Md
	LjbnC3ksECCmmryRFrx1nd92+NMJOy2/DPmiV9g6xU3kzbLYHoh4GCSGhzCERH0y5tFXjgSU5WQq4
	k1/f2XjLoyd/W8ftmlwLXiU5o7subW7bimUTS7HFkdFE0jz/pnrR/nc6bZK2LNjxxQLQo3e6TDw9Y
	K42Jpiax8aBjnRfSWTApLddlvmx/cXTsAvAi8Ajy8I1BtxM5ccDNkzHndhvKBuAZwLAZgUQdJB5sR
	tnSRbx0pre/0i1v3LL/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoo7-00073D-IE; Wed, 31 Jul 2019 13:38:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsonr-0006vs-9k
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:38:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 496CA1570;
 Wed, 31 Jul 2019 06:38:02 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 982363F694;
 Wed, 31 Jul 2019 06:38:01 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 2/2] perf/smmuv3: Validate groups for global filtering
Date: Wed, 31 Jul 2019 14:37:42 +0100
Message-Id: <1921604dc4cd820363ccf728ade6508e0987e082.1564580090.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
References: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_063803_382437_02AD1750 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 drivers/perf/arm_smmuv3_pmu.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index dd40df2ac895..e1e41d2fea94 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -324,6 +324,8 @@ static int smmu_pmu_event_init(struct perf_event *event)
 	struct device *dev = smmu_pmu->dev;
 	struct perf_event *sibling;
 	int group_num_events = 1;
+	bool has_filter;
+	u32 filter_span, filter_sid;
 	u16 event_id;
 
 	if (event->attr.type != event->pmu->type)
@@ -354,6 +356,10 @@ static int smmu_pmu_event_init(struct perf_event *event)
 		return -EINVAL;
 	}
 
+	has_filter = get_filter_enable(event);
+	filter_span = get_filter_span(event);
+	filter_sid = get_filter_stream_id(event);
+
 	for_each_sibling_event(sibling, event->group_leader) {
 		if (sibling->pmu != event->pmu &&
 		    !is_software_event(sibling)) {
@@ -363,6 +369,16 @@ static int smmu_pmu_event_init(struct perf_event *event)
 
 		if (++group_num_events >= smmu_pmu->num_counters)
 			return -EINVAL;
+
+		if (smmu_pmu->global_filter) {
+			if (has_filter != (bool)get_filter_enable(sibling))
+				return -EINVAL;
+
+			if (has_filter &&
+			    (filter_span != get_filter_span(sibling) ||
+			    filter_sid != get_filter_stream_id (sibling)))
+				return -EINVAL;
+		}
 	}
 
 	hwc->idx = -1;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
