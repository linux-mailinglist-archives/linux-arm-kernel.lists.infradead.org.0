Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6227C3B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 15:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DhepmApZRnDUq/Iy+N/kyz4gB220ngLP7L0HZ19WRbU=; b=j1xYs1inHkX4Pd
	QfPUjpZ1CTUVgciD1vj1VX+1E8zwgcEocyUfTlOJv2hPpUc1ulWSVuJsfxMdjsKzUaMaxmJkEhz1m
	UHTTVNdeOSuRMtWpBcb8c4mpNj7tcGhKB6GD+3257vuj/autmgv7YKyazZI5ECwrZJyoE66VgmSAx
	cR7rxW9oT3dEWb6UcMG850EWnCGSxp4ec/oL0zNsL0DYW39ElTeaDLcI3UVLNuDXIAPFrVHO5L46M
	dffMebYifWgZWpgoVyqZfBqHYKnis1BKxpHAmlwUkhwh7nCNgnbU7JldRhGzIsEDgYCX2/efHBK9T
	eayN6FkTv0Dt9PIZ/bHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsonx-0006wK-TJ; Wed, 31 Jul 2019 13:38:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsonq-0006vI-Bi
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 13:38:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63F36344;
 Wed, 31 Jul 2019 06:38:01 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A899E3F694;
 Wed, 31 Jul 2019 06:38:00 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 1/2] perf/smmuv3: Validate group size
Date: Wed, 31 Jul 2019 14:37:41 +0100
Message-Id: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_063802_452147_A3D22953 
X-CRM114-Status: GOOD (  11.98  )
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

Ensure that a group will actually fit into the available counters.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/perf/arm_smmuv3_pmu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index da71c741cb46..dd40df2ac895 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -323,6 +323,7 @@ static int smmu_pmu_event_init(struct perf_event *event)
 	struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);
 	struct device *dev = smmu_pmu->dev;
 	struct perf_event *sibling;
+	int group_num_events = 1;
 	u16 event_id;
 
 	if (event->attr.type != event->pmu->type)
@@ -359,6 +360,9 @@ static int smmu_pmu_event_init(struct perf_event *event)
 			dev_dbg(dev, "Can't create mixed PMU group\n");
 			return -EINVAL;
 		}
+
+		if (++group_num_events >= smmu_pmu->num_counters)
+			return -EINVAL;
 	}
 
 	hwc->idx = -1;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
