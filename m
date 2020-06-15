Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9980C1F8EFE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HKtLDY1/LeK3IqcRLRl2oxusgvXlhY2Jpx2UG+eZI7w=; b=KjAGlky6qe9KTI
	37u+Nc8XbTuYTOeWaA5WkK8M7hD9pfihtyExAZdn54n3EeqEn+kuyXNIJpqJ6LGsgud3lQ8XdOgBG
	UaWvvccQkVRIUraWVGtkDTUKpy9GLIPs6fKuSB0znT19fTu2czTSCXVQgYAJL3xc8VLdbLkGCFsCe
	nOAw/QX37ydOY32ayKFjOuHe63bAlMWsfyyY1G8nzViEPZz6xX2kWwwDOjDLFdxj0hnfOKWY92+tK
	n8YvDwewo7CKh5mcbSFoX/Y50vBXdhjVBxo3AFf8lzWwlKphb1fL320Pl7k0mXgAOVunNk0mIIpfA
	MZSGQr5v+2C0YMEgBOpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjBo-000894-4O; Mon, 15 Jun 2020 07:05:52 +0000
Received: from 195-192-102-148.dyn.cablelink.at ([195.192.102.148]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjBh-00088n-2d; Mon, 15 Jun 2020 07:05:45 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux-foundation.org
Subject: [PATCH] dma-direct: enable mmap for !CONFIG_MMU
Date: Mon, 15 Jun 2020 09:05:42 +0200
Message-Id: <20200615070542.43761-1-hch@lst.de>
X-Mailer: git-send-email 2.26.2
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
Cc: vladimir.murzin@arm.com, dillon min <dillon.minfei@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

nommu configfs can trivially map the coherent allocations to user space,
as no actual page table setup is required and the kernel and the user
space programs share the same address space.

Fixes: 62fcee9a3bd7 ("dma-mapping: remove CONFIG_ARCH_NO_COHERENT_DMA_MMAP")
Signed-off-by: Christoph Hellwig <hch@lst.de>
Reported-by: dillon min <dillon.minfei@gmail.com>
Reviewed-by: Vladimir Murzin <vladimir.murzin@arm.com>
Tested-by: dillon min <dillon.minfei@gmail.com>
---
 kernel/dma/Kconfig  |  1 +
 kernel/dma/direct.c | 14 --------------
 2 files changed, 1 insertion(+), 14 deletions(-)

diff --git a/kernel/dma/Kconfig b/kernel/dma/Kconfig
index d006668c0027d2..e0dae570a51530 100644
--- a/kernel/dma/Kconfig
+++ b/kernel/dma/Kconfig
@@ -71,6 +71,7 @@ config SWIOTLB
 # in the pagetables
 #
 config DMA_NONCOHERENT_MMAP
+	default y if !MMU
 	bool
 
 config DMA_REMAP
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 0a4881e59aa7d6..9ec6a5c3fc578c 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -459,7 +459,6 @@ int dma_direct_get_sgtable(struct device *dev, struct sg_table *sgt,
 	return ret;
 }
 
-#ifdef CONFIG_MMU
 bool dma_direct_can_mmap(struct device *dev)
 {
 	return dev_is_dma_coherent(dev) ||
@@ -485,19 +484,6 @@ int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
 	return remap_pfn_range(vma, vma->vm_start, pfn + vma->vm_pgoff,
 			user_count << PAGE_SHIFT, vma->vm_page_prot);
 }
-#else /* CONFIG_MMU */
-bool dma_direct_can_mmap(struct device *dev)
-{
-	return false;
-}
-
-int dma_direct_mmap(struct device *dev, struct vm_area_struct *vma,
-		void *cpu_addr, dma_addr_t dma_addr, size_t size,
-		unsigned long attrs)
-{
-	return -ENXIO;
-}
-#endif /* CONFIG_MMU */
 
 int dma_direct_supported(struct device *dev, u64 mask)
 {
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
