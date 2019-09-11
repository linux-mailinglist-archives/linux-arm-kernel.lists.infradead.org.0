Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B93CAFF06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 16:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PmC0viTvYzrPPhaYO/A48eCh+khvL2yYnAbzr5EfHN8=; b=NdWhFGT+GAA623
	wDYx8sqcFk59iN3JbMFqhaMIHD4LTv1mNxu37doIiXcKcdSSAXie7g2LP0MmnqPzWa5aLoeg8IztS
	KdZP7O2Zi2QE4PRA7FpgNMqIKjOW8pClvaR6NjcJfDvqtGpzqf57Q83SHM3unQ4CFaiaoWZR/JdbP
	X52a6Z4jQV4YUJ/3Mbc8v47hEd6STWlZcaisQ7GuLxJzch+GXGyqv8+Jkgcu/Jk8higzJCjHXepBb
	j1akkUB3q2En2Qv3h1WkGgoDGLemDnGqtS9NFZ64im8T3ooIa8I2RU7LTHO3WYtNQaK7XUWRcMURC
	jlFVCy3HBu7R4Kagp9rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i83pr-0002K6-In; Wed, 11 Sep 2019 14:43:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i83p7-0001pZ-Es
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 14:42:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10A1F1576;
 Wed, 11 Sep 2019 07:42:19 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E6BA83F67D;
 Wed, 11 Sep 2019 07:42:17 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	joro@8bytes.org
Subject: [PATCH 2/3] iommu/io-pgtable-arm: Support more Mali configurations
Date: Wed, 11 Sep 2019 15:42:08 +0100
Message-Id: <69c934789ad2bf486b03682563ea2262ea6d9301.1568211045.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1568211045.git.robin.murphy@arm.com>
References: <cover.1568211045.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_074221_539929_7BDFECCD 
X-CRM114-Status: GOOD (  15.03  )
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, narmstrong@baylibre.com,
 steven.price@arm.com, iommu@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In principle, Midgard GPUs supporting smaller VA sizes should only
require 3-level pagetables, since the address bits resolved at level 0
(47:40) will never change. However, the kbase driver does not appear to
have any notion of a variable start level, and empirically T720 and T820
rapidly blow up with translation faults unless given a full 4-level
table, despite only supporting a 33-bit VA size.

The 'real' IAS value is still valuable in terms of validating addresses
on map/unmap, so tweak the allocator to allow smaller values while still
forcing the resultant tables to the full 4 levels.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/io-pgtable-arm.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index 9e35cd991f06..77f41c9dd9be 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -1022,7 +1022,7 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	if (cfg->quirks)
 		return NULL;
 
-	if (cfg->ias != 48 || cfg->oas > 40)
+	if (cfg->ias > 48 || cfg->oas > 40)
 		return NULL;
 
 	cfg->pgsize_bitmap &= (SZ_4K | SZ_2M | SZ_1G);
@@ -1031,6 +1031,11 @@ arm_mali_lpae_alloc_pgtable(struct io_pgtable_cfg *cfg, void *cookie)
 	if (!data)
 		return NULL;
 
+	/* Mali seems to need a full 4-level table regardless of IAS */
+	if (data->levels < ARM_LPAE_MAX_LEVELS) {
+		data->levels = ARM_LPAE_MAX_LEVELS;
+		data->pgd_size = sizeof(arm_lpae_iopte);
+	}
 	/*
 	 * MEMATTR: Mali has no actual notion of a non-cacheable type, so the
 	 * best we can do is mimic the out-of-tree driver and hope that the
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
