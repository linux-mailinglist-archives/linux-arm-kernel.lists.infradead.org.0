Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABF78668E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nZgpS+JCNl3Q243EdGaFGc5U/y7MQkCeJ76/bLD7VpE=; b=c+ZQc87IjjBKDS
	Q/IE8XD0HVrETd8IY8eInLMQirck931+LVX0RopigwMphFy9+Y/YZDlb8sChqb7s/oJFMKrswCW8A
	tY++uL0lr45cFh42qJjP6EqYMOf9/lnASBwejTiXPbuJj6lQPEg/MlQTg4INpWrUu6KimC4iRsD+V
	VpRt+rhpPGr5ZhttClEWu6yFpFtj9b3HUrTWmtzJ0DhsqugjvTpQCFxshLQIrIxtnSRpUSABC9q5z
	FaOq05EWc/KPO1omNtYnkuhYfxXs9mimK3kdsQ/WqI89KWivTttDaO2C9qt8C9saAwv1qNctTQzfI
	g15zr9dBz3zppY3yK14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkrE-0007a7-Pe; Thu, 08 Aug 2019 16:01:41 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkqH-0006ib-Nf; Thu, 08 Aug 2019 16:00:42 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH 4/8] dma-mapping: add a dma_can_mmap helper
Date: Thu,  8 Aug 2019 19:00:01 +0300
Message-Id: <20190808160005.10325-5-hch@lst.de>
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

Add a helper to check if DMA allocations for a specific device can be
mapped to userspace using dma_mmap_*.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/dma-mapping.h |  5 +++++
 kernel/dma/mapping.c        | 23 +++++++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index f7d1eea32c78..17271857be5d 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -462,6 +462,7 @@ int dma_get_sgtable_attrs(struct device *dev, struct sg_table *sgt,
 int dma_mmap_attrs(struct device *dev, struct vm_area_struct *vma,
 		void *cpu_addr, dma_addr_t dma_addr, size_t size,
 		unsigned long attrs);
+bool dma_can_mmap(struct device *dev);
 int dma_supported(struct device *dev, u64 mask);
 int dma_set_mask(struct device *dev, u64 mask);
 int dma_set_coherent_mask(struct device *dev, u64 mask);
@@ -552,6 +553,10 @@ static inline int dma_mmap_attrs(struct device *dev, struct vm_area_struct *vma,
 {
 	return -ENXIO;
 }
+static inline bool dma_can_mmap(struct device *dev)
+{
+	return false;
+}
 static inline int dma_supported(struct device *dev, u64 mask)
 {
 	return 0;
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index 67b900ad0836..64d1de59e133 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -220,6 +220,29 @@ int dma_common_mmap(struct device *dev, struct vm_area_struct *vma,
 #endif /* !CONFIG_ARCH_NO_COHERENT_DMA_MMAP */
 }
 
+/**
+ * dma_can_mmap - check if a given device supports dma_mmap_*
+ * @dev: device to check
+ *
+ * Returns %true if @dev supports dma_mmap_coherent() and dma_mmap_attrs() to
+ * map DMA allocations to userspace.
+ */
+bool dma_can_mmap(struct device *dev)
+{
+	const struct dma_map_ops *ops = get_dma_ops(dev);
+
+	if (IS_ENABLED(CONFIG_ARCH_NO_COHERENT_DMA_MMAP))
+		return false;
+
+	if (dma_is_direct(ops)) {
+		return dev_is_dma_coherent(dev) ||
+			IS_ENABLED(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN);
+	}
+
+	return ops->mmap != NULL;
+}
+EXPORT_SYMBOL_GPL(dma_can_mmap);
+
 /**
  * dma_mmap_attrs - map a coherent DMA allocation into user space
  * @dev: valid struct device pointer, or NULL for ISA and EISA-like devices
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
