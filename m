Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D8986681
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMDfYkgabQRhkiAZxibfenar3+hbZGRrMgrCRLmtJoA=; b=kGDiUksn0Z5Sot
	FKTgY2Es/JobaSDRSRrBKriqhraFuQ1mkzxkQJ8NrqXN0lPnEPJfxV+/QSslU+pU92R1b+SBgw/Is
	cIWGJcphk7f4WNwziU5qzocEZRRpxyTvftwsQqjP4+i3p3/Un7jQO7EAEDsiH7EOQ41PEQJW+eoQJ
	M6wP2I6scXQga/qCBmqvpMKU0xzlksl/xJS7d/Q9tG59jooaKAqubmUNG4yy7+0Bs0dWrdmLtUNfw
	fPMpu8QvCnAecKpeXL2qPsgp5anjI3VX/21fTUlzdMZ2Jra5sE2ezwMT0aAcjawvkKdvN/aK8sjbQ
	4DYP0sZJbXuas7eUGoCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkqX-0006lI-0T; Thu, 08 Aug 2019 16:00:57 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkq4-0006XB-S9; Thu, 08 Aug 2019 16:00:30 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH 1/8] dma-mapping: provide a better default ->get_required_mask
Date: Thu,  8 Aug 2019 18:59:58 +0300
Message-Id: <20190808160005.10325-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808160005.10325-1-hch@lst.de>
References: <20190808160005.10325-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: linux-xtensa@linux-xtensa.org, Michal Simek <monstr@monstr.eu>,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 linuxppc-dev@lists.ozlabs.org, Helge Deller <deller@gmx.de>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Most dma_map_ops instances are IOMMUs that work perfectly fine in 32-bits
of IOVA space, and the generic direct mapping code already provides its
own routines that is intelligent based on the amount of memory actually
present.  Wire up the dma-direct routine for the ARM direct mapping code
as well, and otherwise default to the constant 32-bit mask.  This way
we only need to override it for the occasional odd IOMMU that requires
64-bit IOVA support, or IOMMU drivers that are more efficient if they
can fall back to the direct mapping.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mm/dma-mapping.c               |  3 +++
 arch/powerpc/platforms/ps3/system-bus.c |  7 ------
 arch/x86/kernel/amd_gart_64.c           |  1 +
 kernel/dma/mapping.c                    | 30 +++++++++----------------
 4 files changed, 14 insertions(+), 27 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 8c0b0baeb398..ad64d32fb39a 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -14,6 +14,7 @@
 #include <linux/list.h>
 #include <linux/init.h>
 #include <linux/device.h>
+#include <linux/dma-direct.h>
 #include <linux/dma-mapping.h>
 #include <linux/dma-noncoherent.h>
 #include <linux/dma-contiguous.h>
@@ -192,6 +193,7 @@ const struct dma_map_ops arm_dma_ops = {
 	.sync_sg_for_cpu	= arm_dma_sync_sg_for_cpu,
 	.sync_sg_for_device	= arm_dma_sync_sg_for_device,
 	.dma_supported		= arm_dma_supported,
+	.get_required_mask	= dma_direct_get_required_mask,
 };
 EXPORT_SYMBOL(arm_dma_ops);
 
@@ -212,6 +214,7 @@ const struct dma_map_ops arm_coherent_dma_ops = {
 	.map_sg			= arm_dma_map_sg,
 	.map_resource		= dma_direct_map_resource,
 	.dma_supported		= arm_dma_supported,
+	.get_required_mask	= dma_direct_get_required_mask,
 };
 EXPORT_SYMBOL(arm_coherent_dma_ops);
 
diff --git a/arch/powerpc/platforms/ps3/system-bus.c b/arch/powerpc/platforms/ps3/system-bus.c
index 98410119c47b..6818317073b9 100644
--- a/arch/powerpc/platforms/ps3/system-bus.c
+++ b/arch/powerpc/platforms/ps3/system-bus.c
@@ -686,18 +686,12 @@ static int ps3_dma_supported(struct device *_dev, u64 mask)
 	return mask >= DMA_BIT_MASK(32);
 }
 
-static u64 ps3_dma_get_required_mask(struct device *_dev)
-{
-	return DMA_BIT_MASK(32);
-}
-
 static const struct dma_map_ops ps3_sb_dma_ops = {
 	.alloc = ps3_alloc_coherent,
 	.free = ps3_free_coherent,
 	.map_sg = ps3_sb_map_sg,
 	.unmap_sg = ps3_sb_unmap_sg,
 	.dma_supported = ps3_dma_supported,
-	.get_required_mask = ps3_dma_get_required_mask,
 	.map_page = ps3_sb_map_page,
 	.unmap_page = ps3_unmap_page,
 };
@@ -708,7 +702,6 @@ static const struct dma_map_ops ps3_ioc0_dma_ops = {
 	.map_sg = ps3_ioc0_map_sg,
 	.unmap_sg = ps3_ioc0_unmap_sg,
 	.dma_supported = ps3_dma_supported,
-	.get_required_mask = ps3_dma_get_required_mask,
 	.map_page = ps3_ioc0_map_page,
 	.unmap_page = ps3_unmap_page,
 };
diff --git a/arch/x86/kernel/amd_gart_64.c b/arch/x86/kernel/amd_gart_64.c
index a585ea6f686a..03ed9675f954 100644
--- a/arch/x86/kernel/amd_gart_64.c
+++ b/arch/x86/kernel/amd_gart_64.c
@@ -678,6 +678,7 @@ static const struct dma_map_ops gart_dma_ops = {
 	.alloc				= gart_alloc_coherent,
 	.free				= gart_free_coherent,
 	.dma_supported			= dma_direct_supported,
+	.get_required_mask		= dma_direct_get_required_mask,
 };
 
 static void gart_iommu_shutdown(void)
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index b0038ca3aa92..9c0f6a8eb5cb 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -233,25 +233,6 @@ int dma_mmap_attrs(struct device *dev, struct vm_area_struct *vma,
 }
 EXPORT_SYMBOL(dma_mmap_attrs);
 
-static u64 dma_default_get_required_mask(struct device *dev)
-{
-	u32 low_totalram = ((max_pfn - 1) << PAGE_SHIFT);
-	u32 high_totalram = ((max_pfn - 1) >> (32 - PAGE_SHIFT));
-	u64 mask;
-
-	if (!high_totalram) {
-		/* convert to mask just covering totalram */
-		low_totalram = (1 << (fls(low_totalram) - 1));
-		low_totalram += low_totalram - 1;
-		mask = low_totalram;
-	} else {
-		high_totalram = (1 << (fls(high_totalram) - 1));
-		high_totalram += high_totalram - 1;
-		mask = (((u64)high_totalram) << 32) + 0xffffffff;
-	}
-	return mask;
-}
-
 u64 dma_get_required_mask(struct device *dev)
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
@@ -260,7 +241,16 @@ u64 dma_get_required_mask(struct device *dev)
 		return dma_direct_get_required_mask(dev);
 	if (ops->get_required_mask)
 		return ops->get_required_mask(dev);
-	return dma_default_get_required_mask(dev);
+
+	/*
+	 * We require every DMA ops implementation to at least support a 32-bit
+	 * DMA mask (and use bounce buffering if that isn't supported in
+	 * hardware).  As the direct mapping code has its own routine to
+	 * actually report an optimal mask we default to 32-bit here as that
+	 * is the right thing for most IOMMUs, and at least not actively
+	 * harmful in general.
+	 */
+	return DMA_BIT_MASK(32);
 }
 EXPORT_SYMBOL_GPL(dma_get_required_mask);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
