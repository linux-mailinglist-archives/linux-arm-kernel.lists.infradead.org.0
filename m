Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310004615F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ox9f5b22CtWA9nCW+OJwq88H3RHwJvJhYt39o8vDDT0=; b=gxD9jPiUdRL4GW
	lGBhDhhCw3t6DI6ormEMNr+RwO3z9fwVcpWHPrPzPWOB1aUmgWV0xwbvel6zlDv6wV1tCJ0KECmf/
	Y+4aMd/mmnzSmSEPQKDX3n4zxu18115+cS63p/cHsbkFT5zqHYpgEw/qAbPzXoYP/q2QakCt2cveE
	RBzXBfaxWJwEOlhSIM/L3mjwasXXw3SI+BZJ3sVoK143k+mxdT1J4xdiLvB2c1d2oIOrPhnosKkzK
	rSJPb5xx0xczdlxiE1GStRHRqvy0VkdlGHHkAHfN1bpdbem7g82IUqSDo4PfvgWkInUZPmu0FnRFK
	zxL/uy7sbQC2Vp4s+KgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnT9-0008Ia-Ox; Fri, 14 Jun 2019 14:46:19 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRi-0005yA-Mt; Fri, 14 Jun 2019 14:44:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 4/7] dma-mapping: add a dma_alloc_need_uncached helper
Date: Fri, 14 Jun 2019 16:44:28 +0200
Message-Id: <20190614144431.21760-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190614144431.21760-1-hch@lst.de>
References: <20190614144431.21760-1-hch@lst.de>
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
Cc: Jonas Bonn <jonas@southpole.se>, linux-xtensa@linux-xtensa.org,
 Vladimir Murzin <vladimir.murzin@arm.com>, linux-parisc@vger.kernel.org,
 Helge Deller <deller@gmx.de>, linux-kernel@vger.kernel.org,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Stafford Horne <shorne@gmail.com>, linux-snps-arc@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Check if we need to allocate uncached memory for a device given the
allocation flags.  Switch over the uncached segment check to this helper
to deal with architectures that do not support the dma_cache_sync
operation and thus should not returned cacheable memory for
DMA_ATTR_NON_CONSISTENT allocations.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/dma-noncoherent.h | 14 ++++++++++++++
 kernel/dma/direct.c             |  4 ++--
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
index 7e0126a04e02..732919ac5c11 100644
--- a/include/linux/dma-noncoherent.h
+++ b/include/linux/dma-noncoherent.h
@@ -20,6 +20,20 @@ static inline bool dev_is_dma_coherent(struct device *dev)
 }
 #endif /* CONFIG_ARCH_HAS_DMA_COHERENCE_H */
 
+/*
+ * Check if an allocation needs to be marked uncached to be coherent.
+ */
+static inline bool dma_alloc_need_uncached(struct device *dev,
+		unsigned long attrs)
+{
+	if (dev_is_dma_coherent(dev))
+		return false;
+	if (IS_ENABLED(CONFIG_DMA_NONCOHERENT_CACHE_SYNC) &&
+	    (attrs & DMA_ATTR_NON_CONSISTENT))
+		return false;
+	return true;
+}
+
 void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
 		gfp_t gfp, unsigned long attrs);
 void arch_dma_free(struct device *dev, size_t size, void *cpu_addr,
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index b67f0aa08aa3..c2893713bf80 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -160,7 +160,7 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 	memset(ret, 0, size);
 
 	if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
-	    !dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_NON_CONSISTENT)) {
+	    dma_alloc_need_uncached(dev, attrs)) {
 		arch_dma_prep_coherent(page, size);
 		ret = uncached_kernel_address(ret);
 	}
@@ -182,7 +182,7 @@ void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
 		set_memory_encrypted((unsigned long)cpu_addr, 1 << page_order);
 
 	if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
-	    !dev_is_dma_coherent(dev) && !(attrs & DMA_ATTR_NON_CONSISTENT))
+	    dma_alloc_need_uncached(dev, attrs))
 		cpu_addr = cached_kernel_address(cpu_addr);
 	__dma_direct_free_pages(dev, size, virt_to_page(cpu_addr));
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
