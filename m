Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61C08668D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:01:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UslyRc0wNhKiSpOmTLjg9WhjB0Zg6DxsIGLb42znD7A=; b=Lg9dT5E65vHZwh
	2k1ih/2Q+FWf/S+Jl73tWqzt0sdAKKCF/72QuVXUury9+I6R6t2HnVefk/NGu0+SWdzkeRFIVqnir
	cFV11zRyNvQ1CZiueb7fZ75dW0w7LJYgVGbQq8bOZbl8cnCgr5OK6xoNLX8asxAHUrff58Qmt4opy
	Hade/ZRPM8t9g4xG8Gt1ukq1ZelbZm0ZXlxM8jM2Oub3orLfK876GVTGI0vfo3M3LjjjfXRalSRT3
	OdLimTQYlqNNcvhzGCbOKVezbppxVAc6JjWO3hr0RmyoDa3lNeIcA0iX1eU5L8ybWocp4TkD9dt7q
	zmZyImuaS+rZ14+8d6mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkqx-0007I1-WD; Thu, 08 Aug 2019 16:01:24 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkqD-0006cv-0F; Thu, 08 Aug 2019 16:00:38 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH 3/8] dma-mapping: explicitly wire up ->mmap and ->get_sgtable
Date: Thu,  8 Aug 2019 19:00:00 +0300
Message-Id: <20190808160005.10325-4-hch@lst.de>
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

While the default ->mmap and ->get_sgtable implementations work for the
majority of our dma_map_ops impementations they are inherently safe
for others that don't use the page allocator or CMA and/or use their
own way of remapping not covered by the common code.  So remove the
defaults if these methods are not wired up, but instead wire up the
default implementations for all safe instances.

Fixes: e1c7e324539a ("dma-mapping: always provide the dma_map_ops based implementation")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/alpha/kernel/pci_iommu.c           |  2 ++
 arch/ia64/hp/common/sba_iommu.c         |  2 ++
 arch/ia64/sn/pci/pci_dma.c              |  2 ++
 arch/mips/jazz/jazzdma.c                |  2 ++
 arch/powerpc/kernel/dma-iommu.c         |  2 ++
 arch/powerpc/platforms/ps3/system-bus.c |  4 ++++
 arch/powerpc/platforms/pseries/vio.c    |  2 ++
 arch/s390/pci/pci_dma.c                 |  2 ++
 arch/x86/kernel/amd_gart_64.c           |  2 ++
 arch/x86/kernel/pci-calgary_64.c        |  2 ++
 drivers/iommu/amd_iommu.c               |  2 ++
 drivers/iommu/intel-iommu.c             |  2 ++
 drivers/parisc/ccio-dma.c               |  2 ++
 drivers/parisc/sba_iommu.c              |  2 ++
 kernel/dma/mapping.c                    | 20 ++++++++++++--------
 15 files changed, 42 insertions(+), 8 deletions(-)

diff --git a/arch/alpha/kernel/pci_iommu.c b/arch/alpha/kernel/pci_iommu.c
index 242108439f42..7f1925a32c99 100644
--- a/arch/alpha/kernel/pci_iommu.c
+++ b/arch/alpha/kernel/pci_iommu.c
@@ -955,5 +955,7 @@ const struct dma_map_ops alpha_pci_ops = {
 	.map_sg			= alpha_pci_map_sg,
 	.unmap_sg		= alpha_pci_unmap_sg,
 	.dma_supported		= alpha_pci_supported,
+	.mmap			= dma_common_mmap,
+	.get_sgtable		= dma_common_get_sgtable,
 };
 EXPORT_SYMBOL(alpha_pci_ops);
diff --git a/arch/ia64/hp/common/sba_iommu.c b/arch/ia64/hp/common/sba_iommu.c
index 3d24cc43385b..4c0ea6c2833d 100644
--- a/arch/ia64/hp/common/sba_iommu.c
+++ b/arch/ia64/hp/common/sba_iommu.c
@@ -2183,6 +2183,8 @@ const struct dma_map_ops sba_dma_ops = {
 	.map_sg			= sba_map_sg_attrs,
 	.unmap_sg		= sba_unmap_sg_attrs,
 	.dma_supported		= sba_dma_supported,
+	.mmap			= dma_common_mmap,
+	.get_sgtable		= dma_common_get_sgtable,
 };
 
 void sba_dma_init(void)
diff --git a/arch/ia64/sn/pci/pci_dma.c b/arch/ia64/sn/pci/pci_dma.c
index b7d42e4edc1f..12ffb9c0d738 100644
--- a/arch/ia64/sn/pci/pci_dma.c
+++ b/arch/ia64/sn/pci/pci_dma.c
@@ -438,6 +438,8 @@ static struct dma_map_ops sn_dma_ops = {
 	.unmap_sg		= sn_dma_unmap_sg,
 	.dma_supported		= sn_dma_supported,
 	.get_required_mask	= sn_dma_get_required_mask,
+	.mmap			= dma_common_mmap,
+	.get_sgtable		= dma_common_get_sgtable,
 };
 
 void sn_dma_init(void)
diff --git a/arch/mips/jazz/jazzdma.c b/arch/mips/jazz/jazzdma.c
index 1804dc9d8136..a01e14955187 100644
--- a/arch/mips/jazz/jazzdma.c
+++ b/arch/mips/jazz/jazzdma.c
@@ -682,5 +682,7 @@ const struct dma_map_ops jazz_dma_ops = {
 	.sync_sg_for_device	= jazz_dma_sync_sg_for_device,
 	.dma_supported		= dma_direct_supported,
 	.cache_sync		= arch_dma_cache_sync,
+	.mmap			= dma_common_mmap,
+	.get_sgtable		= dma_common_get_sgtable,
 };
 EXPORT_SYMBOL(jazz_dma_ops);
diff --git a/arch/powerpc/kernel/dma-iommu.c b/arch/powerpc/kernel/dma-iommu.c
index a0879674a9c8..2f5a53874f6d 100644
--- a/arch/powerpc/kernel/dma-iommu.c
+++ b/arch/powerpc/kernel/dma-iommu.c
@@ -208,4 +208,6 @@ const struct dma_map_ops dma_iommu_ops = {
 	.sync_single_for_device	= dma_iommu_sync_for_device,
 	.sync_sg_for_cpu	= dma_iommu_sync_sg_for_cpu,
 	.sync_sg_for_device	= dma_iommu_sync_sg_for_device,
+	.mmap			= dma_common_mmap,
+	.get_sgtable		= dma_common_get_sgtable,
 };
diff --git a/arch/powerpc/platforms/ps3/system-bus.c b/arch/powerpc/platforms/ps3/system-bus.c
index 6818317073b9..3542b7bd6a46 100644
--- a/arch/powerpc/platforms/ps3/system-bus.c
+++ b/arch/powerpc/platforms/ps3/system-bus.c
@@ -694,6 +694,8 @@ static const struct dma_map_ops ps3_sb_dma_ops = {
 	.dma_supported = ps3_dma_supported,
 	.map_page = ps3_sb_map_page,
 	.unmap_page = ps3_unmap_page,
+	.mmap = dma_common_mmap,
+	.get_sgtable = dma_common_get_sgtable,
 };
 
 static const struct dma_map_ops ps3_ioc0_dma_ops = {
@@ -704,6 +706,8 @@ static const struct dma_map_ops ps3_ioc0_dma_ops = {
 	.dma_supported = ps3_dma_supported,
 	.map_page = ps3_ioc0_map_page,
 	.unmap_page = ps3_unmap_page,
+	.mmap = dma_common_mmap,
+	.get_sgtable = dma_common_get_sgtable,
 };
 
 /**
diff --git a/arch/powerpc/platforms/pseries/vio.c b/arch/powerpc/platforms/pseries/vio.c
index 6601b9d404dc..3473eef7628c 100644
--- a/arch/powerpc/platforms/pseries/vio.c
+++ b/arch/powerpc/platforms/pseries/vio.c
@@ -605,6 +605,8 @@ static const struct dma_map_ops vio_dma_mapping_ops = {
 	.unmap_page        = vio_dma_iommu_unmap_page,
 	.dma_supported     = dma_iommu_dma_supported,
 	.get_required_mask = dma_iommu_get_required_mask,
+	.mmap		   = dma_common_mmap,
+	.get_sgtable	   = dma_common_get_sgtable,
 };
 
 /**
diff --git a/arch/s390/pci/pci_dma.c b/arch/s390/pci/pci_dma.c
index 9e52d1527f71..03d8c1c9f82f 100644
--- a/arch/s390/pci/pci_dma.c
+++ b/arch/s390/pci/pci_dma.c
@@ -668,6 +668,8 @@ const struct dma_map_ops s390_pci_dma_ops = {
 	.unmap_sg	= s390_dma_unmap_sg,
 	.map_page	= s390_dma_map_pages,
 	.unmap_page	= s390_dma_unmap_pages,
+	.mmap		= dma_common_mmap,
+	.get_sgtable	= dma_common_get_sgtable,
 	/* dma_supported is unconditionally true without a callback */
 };
 EXPORT_SYMBOL_GPL(s390_pci_dma_ops);
diff --git a/arch/x86/kernel/amd_gart_64.c b/arch/x86/kernel/amd_gart_64.c
index 03ed9675f954..a6ac3712db8b 100644
--- a/arch/x86/kernel/amd_gart_64.c
+++ b/arch/x86/kernel/amd_gart_64.c
@@ -677,6 +677,8 @@ static const struct dma_map_ops gart_dma_ops = {
 	.unmap_page			= gart_unmap_page,
 	.alloc				= gart_alloc_coherent,
 	.free				= gart_free_coherent,
+	.mmap				= dma_common_mmap,
+	.get_sgtable			= dma_common_get_sgtable,
 	.dma_supported			= dma_direct_supported,
 	.get_required_mask		= dma_direct_get_required_mask,
 };
diff --git a/arch/x86/kernel/pci-calgary_64.c b/arch/x86/kernel/pci-calgary_64.c
index 9d4343aa481b..23fdec030c37 100644
--- a/arch/x86/kernel/pci-calgary_64.c
+++ b/arch/x86/kernel/pci-calgary_64.c
@@ -468,6 +468,8 @@ static const struct dma_map_ops calgary_dma_ops = {
 	.map_page = calgary_map_page,
 	.unmap_page = calgary_unmap_page,
 	.dma_supported = dma_direct_supported,
+	.mmap = dma_common_mmap,
+	.get_sgtable = dma_common_get_sgtable,
 };
 
 static inline void __iomem * busno_to_bbar(unsigned char num)
diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index b607a92791d3..2e74ad659985 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -2722,6 +2722,8 @@ static const struct dma_map_ops amd_iommu_dma_ops = {
 	.map_sg		= map_sg,
 	.unmap_sg	= unmap_sg,
 	.dma_supported	= amd_iommu_dma_supported,
+	.mmap		= dma_common_mmap,
+	.get_sgtable	= dma_common_get_sgtable,
 };
 
 static int init_reserved_iova_ranges(void)
diff --git a/drivers/iommu/intel-iommu.c b/drivers/iommu/intel-iommu.c
index bdaed2da8a55..7505c5d9cf78 100644
--- a/drivers/iommu/intel-iommu.c
+++ b/drivers/iommu/intel-iommu.c
@@ -3737,6 +3737,8 @@ static const struct dma_map_ops intel_dma_ops = {
 	.map_resource = intel_map_resource,
 	.unmap_resource = intel_unmap_resource,
 	.dma_supported = dma_direct_supported,
+	.mmap = dma_common_mmap,
+	.get_sgtable = dma_common_get_sgtable,
 };
 
 static inline int iommu_domain_cache_init(void)
diff --git a/drivers/parisc/ccio-dma.c b/drivers/parisc/ccio-dma.c
index 217f15aafa4a..1d7125d29bee 100644
--- a/drivers/parisc/ccio-dma.c
+++ b/drivers/parisc/ccio-dma.c
@@ -1024,6 +1024,8 @@ static const struct dma_map_ops ccio_ops = {
 	.unmap_page =		ccio_unmap_page,
 	.map_sg = 		ccio_map_sg,
 	.unmap_sg = 		ccio_unmap_sg,
+	.mmap =			dma_common_mmap,
+	.get_sgtable =		dma_common_get_sgtable,
 };
 
 #ifdef CONFIG_PROC_FS
diff --git a/drivers/parisc/sba_iommu.c b/drivers/parisc/sba_iommu.c
index 296668caf7e5..fa4df65b7e28 100644
--- a/drivers/parisc/sba_iommu.c
+++ b/drivers/parisc/sba_iommu.c
@@ -1084,6 +1084,8 @@ static const struct dma_map_ops sba_ops = {
 	.unmap_page =		sba_unmap_page,
 	.map_sg =		sba_map_sg,
 	.unmap_sg =		sba_unmap_sg,
+	.mmap =			dma_common_mmap,
+	.get_sgtable =		dma_common_get_sgtable,
 };
 
 
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index 41590d003465..67b900ad0836 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -153,11 +153,12 @@ int dma_get_sgtable_attrs(struct device *dev, struct sg_table *sgt,
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 
-	if (!dma_is_direct(ops) && ops->get_sgtable)
-		return ops->get_sgtable(dev, sgt, cpu_addr, dma_addr, size,
-					attrs);
-	return dma_common_get_sgtable(dev, sgt, cpu_addr, dma_addr, size,
-			attrs);
+	if (dma_is_direct(ops))
+		return dma_common_get_sgtable(dev, sgt, cpu_addr, dma_addr,
+				size, attrs);
+	if (!ops->get_sgtable)
+		return -ENXIO;
+	return ops->get_sgtable(dev, sgt, cpu_addr, dma_addr, size, attrs);
 }
 EXPORT_SYMBOL(dma_get_sgtable_attrs);
 
@@ -238,9 +239,12 @@ int dma_mmap_attrs(struct device *dev, struct vm_area_struct *vma,
 {
 	const struct dma_map_ops *ops = get_dma_ops(dev);
 
-	if (!dma_is_direct(ops) && ops->mmap)
-		return ops->mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
-	return dma_common_mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
+	if (dma_is_direct(ops))
+		return dma_common_mmap(dev, vma, cpu_addr, dma_addr, size,
+				attrs);
+	if (!ops->mmap)
+		return -ENXIO;
+	return ops->mmap(dev, vma, cpu_addr, dma_addr, size, attrs);
 }
 EXPORT_SYMBOL(dma_mmap_attrs);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
