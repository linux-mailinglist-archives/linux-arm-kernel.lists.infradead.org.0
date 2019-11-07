Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24801F35DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 18:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TMRyTDK7bsvv41hUOVufzyCjejqwtPMgVSPBQx+0W0=; b=ac7X+IGyIEzSms
	sX3AHbRjc1YjAcGaCD4+x/HVnmR4SIKCM/RY/Y/VCy9OKGzkIyFCWYsVQWsAVrwe8kU0fTEcNvfEC
	8fMjvh3QWdHXyCluwELdir5yzxYhppnTLNSiTYiMJqYUY+2WDYVaYdBii8zeaPRDvFlExbcpSCS0q
	qzg+CcelMUXfuzSJdzTH98kY8L5lkGfyee0lyVI9Dt3tNF550v0aSER+Ucyy/KCNm9wnjEm4+7dwU
	SIpP6j7dMvlPnvyepyNNxp2BiYWY95dZiLgwT/loHwMggvv7nSsKxuTkTWajM+gxm9K321WLXRkES
	nmRitNwG+4GIPISmv3ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSlmK-0002Vt-Dg; Thu, 07 Nov 2019 17:41:04 +0000
Received: from [2001:4bb8:184:e48:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSllw-0002O1-MK; Thu, 07 Nov 2019 17:40:41 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jonas Bonn <jonas@southpole.se>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>
Subject: [PATCH 1/2] dma-mapping: support setting memory uncached in place
Date: Thu,  7 Nov 2019 18:40:34 +0100
Message-Id: <20191107174035.13783-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191107174035.13783-1-hch@lst.de>
References: <20191107174035.13783-1-hch@lst.de>
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-arch@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, openrisc@lists.librecores.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We currently only support remapping memory as uncached through vmap
or a magic uncached segment provided by some architectures.  But there
is a simpler and much better way available on some architectures where
we can just remap the memory in place.  The advantages are:

 1) no aliasing is possible, which prevents speculating into the
    cached alias
 2) there is no need to allocate new ptes and thus no need for a special
    pre-allocated pool of memory that can be used with GFP_ATOMIC DMA
    allocations

The downside is that architectures must provide a way to set arbitrary
pages uncached in the kernel mapping, which might not be possible on
architecture that have a special implicit kernel mapping, and requires
splitting of huge page kernel mappings where they exist.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/dma-noncoherent.h |  3 +++
 kernel/dma/Kconfig              |  8 ++++++++
 kernel/dma/direct.c             | 28 ++++++++++++++++++----------
 3 files changed, 29 insertions(+), 10 deletions(-)

diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
index e30fca1f1b12..c4be9697279a 100644
--- a/include/linux/dma-noncoherent.h
+++ b/include/linux/dma-noncoherent.h
@@ -111,4 +111,7 @@ static inline void arch_dma_prep_coherent(struct page *page, size_t size)
 void *uncached_kernel_address(void *addr);
 void *cached_kernel_address(void *addr);
 
+int arch_dma_set_uncached(void *cpu_addr, size_t size);
+void arch_dma_clear_uncached(void *cpu_addr, size_t size);
+
 #endif /* _LINUX_DMA_NONCOHERENT_H */
diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
index 4c103a24e380..7bc0b77f1243 100644
--- a/kernel/dma/Kconfig
+++ b/kernel/dma/Kconfig
@@ -83,6 +83,14 @@ config DMA_DIRECT_REMAP
 	bool
 	select DMA_REMAP
 
+#
+# Should be selected if the architecture can remap memory from the page
+# allocator and CMA as uncached and provides the arch_dma_set_uncached and
+# arch_dma_clear_uncached helpers
+#
+config ARCH_HAS_DMA_SET_UNCACHED
+	bool
+
 config DMA_CMA
 	bool "DMA Contiguous Memory Allocator"
 	depends on HAVE_DMA_CONTIGUOUS && CMA
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index e37e7ab6e2ee..e2b46001c1b3 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -171,11 +171,8 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 		ret = dma_common_contiguous_remap(page, PAGE_ALIGN(size),
 				dma_pgprot(dev, PAGE_KERNEL, attrs),
 				__builtin_return_address(0));
-		if (!ret) {
-			dma_free_contiguous(dev, page, size);
-			return ret;
-		}
-
+		if (!ret)
+			goto out_free_pages;
 		memset(ret, 0, size);
 		goto done;
 	}
@@ -188,8 +185,7 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 		 * so log an error and fail.
 		 */
 		dev_info(dev, "Rejecting highmem page from CMA.\n");
-		dma_free_contiguous(dev, page, size);
-		return NULL;
+		goto out_free_pages;
 	}
 
 	ret = page_address(page);
@@ -198,10 +194,15 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 
 	memset(ret, 0, size);
 
-	if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
-	    dma_alloc_need_uncached(dev, attrs)) {
+	if (dma_alloc_need_uncached(dev, attrs)) {
 		arch_dma_prep_coherent(page, size);
-		ret = uncached_kernel_address(ret);
+
+		if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED)) {
+			if (!arch_dma_set_uncached(ret, size))
+				goto out_free_pages;
+		} else if (IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT)) {
+			ret = uncached_kernel_address(ret);
+		}
 	}
 done:
 	if (force_dma_unencrypted(dev))
@@ -209,6 +210,9 @@ void *dma_direct_alloc_pages(struct device *dev, size_t size,
 	else
 		*dma_handle = phys_to_dma(dev, page_to_phys(page));
 	return ret;
+out_free_pages:
+	dma_free_contiguous(dev, page, size);
+	return NULL;
 }
 
 void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
@@ -232,6 +236,8 @@ void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
 
 	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr))
 		vunmap(cpu_addr);
+	else if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED))
+		arch_dma_clear_uncached(cpu_addr, size);
 
 	dma_free_contiguous(dev, dma_direct_to_page(dev, dma_addr), size);
 }
@@ -240,6 +246,7 @@ void *dma_direct_alloc(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
 	if (!IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
+	    !IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
 	    !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
 	    dma_alloc_need_uncached(dev, attrs))
 		return arch_dma_alloc(dev, size, dma_handle, gfp, attrs);
@@ -250,6 +257,7 @@ void dma_direct_free(struct device *dev, size_t size,
 		void *cpu_addr, dma_addr_t dma_addr, unsigned long attrs)
 {
 	if (!IS_ENABLED(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
+	    !IS_ENABLED(CONFIG_ARCH_HAS_DMA_SET_UNCACHED) &&
 	    !IS_ENABLED(CONFIG_DMA_DIRECT_REMAP) &&
 	    dma_alloc_need_uncached(dev, attrs))
 		arch_dma_free(dev, size, cpu_addr, dma_addr, attrs);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
