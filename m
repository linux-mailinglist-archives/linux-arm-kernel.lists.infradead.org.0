Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17C746163
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AV8eGUjw/t7JnPmABDwB2WZlUiyJLnd3kfXiDTKaWWk=; b=ggZg9SBhFIzgTF
	7Rd4ZRqicCel4cQ44cIOwp4+5RQB9hlTQaxQvBJbCwvzl/oWiddJ/fIukq36IohTnALt31IV9pztf
	I/Wg7MssJ2+Qrk7n1Tuc/SysykOyAbBmTjhFtXQFOjwqejUyAyEOmRj039hOyCFfXxSQlnZuF/xIb
	rW14/CQQMx/LGkzb9s7JGLttpMRahBRTs3BKMc3PMs0OAK/cfdy4VevyIXkar4/5dabv4/v49nB54
	m6tdBnranJiSBHswItatZ81EWdUwHmBqT7TBgJ/mGPR98ZUtlLaFCd4mNKKUh/jSTrk9xx55PSjSQ
	yzPNahmTOId8Qcv4JgYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnTR-0000Bs-9l; Fri, 14 Jun 2019 14:46:37 +0000
Received: from 213-225-9-13.nat.highway.a1.net ([213.225.9.13] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnRm-00061n-3l; Fri, 14 Jun 2019 14:44:54 +0000
From: Christoph Hellwig <hch@lst.de>
To: Vineet Gupta <vgupta@synopsys.com>
Subject: [PATCH 5/7] dma-direct: handle DMA_ATTR_NON_CONSISTENT in common code
Date: Fri, 14 Jun 2019 16:44:29 +0200
Message-Id: <20190614144431.21760-6-hch@lst.de>
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

Only call into arch_dma_alloc if we require an uncached mapping,
and remove the parisc code manually doing normal cached
DMA_ATTR_NON_CONSISTENT allocations.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/parisc/kernel/pci-dma.c | 48 ++++++++++--------------------------
 kernel/dma/direct.c          |  4 +--
 2 files changed, 15 insertions(+), 37 deletions(-)

diff --git a/arch/parisc/kernel/pci-dma.c b/arch/parisc/kernel/pci-dma.c
index 239162355b58..ca35d9a76e50 100644
--- a/arch/parisc/kernel/pci-dma.c
+++ b/arch/parisc/kernel/pci-dma.c
@@ -394,17 +394,20 @@ pcxl_dma_init(void)
 
 __initcall(pcxl_dma_init);
 
-static void *pcxl_dma_alloc(struct device *dev, size_t size,
-		dma_addr_t *dma_handle, gfp_t flag, unsigned long attrs)
+void *arch_dma_alloc(struct device *dev, size_t size,
+		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
 	unsigned long vaddr;
 	unsigned long paddr;
 	int order;
 
+	if (boot_cpu_data.cpu_type != pcxl2 && boot_cpu_data.cpu_type != pcxl)
+		return NULL;
+
 	order = get_order(size);
 	size = 1 << (order + PAGE_SHIFT);
 	vaddr = pcxl_alloc_range(size);
-	paddr = __get_free_pages(flag | __GFP_ZERO, order);
+	paddr = __get_free_pages(gfp | __GFP_ZERO, order);
 	flush_kernel_dcache_range(paddr, size);
 	paddr = __pa(paddr);
 	map_uncached_pages(vaddr, size, paddr);
@@ -421,44 +424,19 @@ static void *pcxl_dma_alloc(struct device *dev, size_t size,
 	return (void *)vaddr;
 }
 
-static void *pcx_dma_alloc(struct device *dev, size_t size,
-		dma_addr_t *dma_handle, gfp_t flag, unsigned long attrs)
-{
-	void *addr;
-
-	if ((attrs & DMA_ATTR_NON_CONSISTENT) == 0)
-		return NULL;
-
-	addr = (void *)__get_free_pages(flag | __GFP_ZERO, get_order(size));
-	if (addr)
-		*dma_handle = (dma_addr_t)virt_to_phys(addr);
-
-	return addr;
-}
-
-void *arch_dma_alloc(struct device *dev, size_t size,
-		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
-{
-
-	if (boot_cpu_data.cpu_type == pcxl2 || boot_cpu_data.cpu_type == pcxl)
-		return pcxl_dma_alloc(dev, size, dma_handle, gfp, attrs);
-	else
-		return pcx_dma_alloc(dev, size, dma_handle, gfp, attrs);
-}
-
 void arch_dma_free(struct device *dev, size_t size, void *vaddr,
 		dma_addr_t dma_handle, unsigned long attrs)
 {
 	int order = get_order(size);
 
-	if (boot_cpu_data.cpu_type == pcxl2 || boot_cpu_data.cpu_type == pcxl) {
-		size = 1 << (order + PAGE_SHIFT);
-		unmap_uncached_pages((unsigned long)vaddr, size);
-		pcxl_free_range((unsigned long)vaddr, size);
+	WARN_ON_ONCE(boot_cpu_data.cpu_type != pcxl2 &&
+		     boot_cpu_data.cpu_type != pcxl);
 
-		vaddr = __va(dma_handle);
-	}
-	free_pages((unsigned long)vaddr, get_order(size));
+	size = 1 << (order + PAGE_SHIFT);
+	unmap_uncached_pages((unsigned long)vaddr, size);
+	pcxl_free_range((unsigned long)vaddr, size);
+
+	free_pages((unsigned long)__va(dma_handle), order);
 }
 
 void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index c2893713bf80..fc354f4f490b 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -191,7 +191,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
 	if (!IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
-	    !dev_is_dma_coherent(dev))
+	    dma_alloc_need_uncached(dev, attrs))
 		return arch_dma_alloc(dev, size, dma_handle, gfp, attrs);
 	return dma_direct_alloc_pages(dev, size, dma_handle, gfp, attrs);
 }
@@ -200,7 +200,7 @@ void dma_direct_free(struct device *dev, size_t size,
 		void *cpu_addr, dma_addr_t dma_addr, unsigned long attrs)
 {
 	if (!IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
-	    !dev_is_dma_coherent(dev))
+	    dma_alloc_need_uncached(dev, attrs))
 		arch_dma_free(dev, size, cpu_addr, dma_addr, attrs);
 	else
 		dma_direct_free_pages(dev, size, cpu_addr, dma_addr, attrs);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
