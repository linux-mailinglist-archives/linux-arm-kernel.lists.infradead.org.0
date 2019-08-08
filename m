Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25728668C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLsVa2Na+z8WKNBsAURneiOcmvvW64lBNBDWK0+TDKc=; b=QUDW0MdqrC5tnG
	5s4jZUJFeqAqW/0pquwSioRLkVkAoXRCtTiq9ev6aSjyYHUWQpL6EDQD1yxoNl9BbF1bNWDKnohVI
	qTf8mJHnC0MCMlFEbunjxP01IM8mmlEjTlIem4PDW6sFLOFUU9Oe2lVgC3Jcuvsb0hG/qCAavqHq4
	oGhyyHx3lf2GzZm1SA0+ToMZXIlP6+vxCWRu8xL9rlHfXYaB0z6asG/MaPh5v/C5GJorHZdkSDbtn
	HMRbzcPrgvrA5uiemSWFDJJD4ooCiA/u5nnfnJ34ZRcvanaBVjoJhmYa/w2ytejkNRksMLd7J7Stl
	puVEV/TdyAY6Bzh2i3lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkql-00072A-LJ; Thu, 08 Aug 2019 16:01:11 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkq9-0006ZA-DB; Thu, 08 Aug 2019 16:00:34 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH 2/8] dma-mapping: move the dma_get_sgtable API comments from
 arm to common code
Date: Thu,  8 Aug 2019 18:59:59 +0300
Message-Id: <20190808160005.10325-3-hch@lst.de>
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

The comments are spot on and should be near the central API, not just
near a single implementation.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mm/dma-mapping.c | 11 -----------
 kernel/dma/mapping.c      | 11 +++++++++++
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index ad64d32fb39a..b4d65da76393 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -880,17 +880,6 @@ static void arm_coherent_dma_free(struct device *dev, size_t size, void *cpu_add
 	__arm_dma_free(dev, size, cpu_addr, handle, attrs, true);
 }
 
-/*
- * The whole dma_get_sgtable() idea is fundamentally unsafe - it seems
- * that the intention is to allow exporting memory allocated via the
- * coherent DMA APIs through the dma_buf API, which only accepts a
- * scattertable.  This presents a couple of problems:
- * 1. Not all memory allocated via the coherent DMA APIs is backed by
- *    a struct page
- * 2. Passing coherent DMA memory into the streaming APIs is not allowed
- *    as we will try to flush the memory through a different alias to that
- *    actually being used (and the flushes are redundant.)
- */
 int arm_dma_get_sgtable(struct device *dev, struct sg_table *sgt,
 		 void *cpu_addr, dma_addr_t handle, size_t size,
 		 unsigned long attrs)
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index 9c0f6a8eb5cb..41590d003465 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -136,6 +136,17 @@ int dma_common_get_sgtable(struct device *dev, struct sg_table *sgt,
 	return ret;
 }
 
+/*
+ * The whole dma_get_sgtable() idea is fundamentally unsafe - it seems
+ * that the intention is to allow exporting memory allocated via the
+ * coherent DMA APIs through the dma_buf API, which only accepts a
+ * scattertable.  This presents a couple of problems:
+ * 1. Not all memory allocated via the coherent DMA APIs is backed by
+ *    a struct page
+ * 2. Passing coherent DMA memory into the streaming APIs is not allowed
+ *    as we will try to flush the memory through a different alias to that
+ *    actually being used (and the flushes are redundant.)
+ */
 int dma_get_sgtable_attrs(struct device *dev, struct sg_table *sgt,
 		void *cpu_addr, dma_addr_t dma_addr, size_t size,
 		unsigned long attrs)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
