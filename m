Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EEEE99C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 11:14:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FytJ1ewqqzPgj2WQkRZcdnPTSPyq5nTxrApmnyWPp8w=; b=f9+
	7B1DuPq0NXT814JE8sumMpYRqIQ0HTJYxpyfcZYOjLwwjJcs59F+3vTbUmX69kiX7m5WyMmwjBS/q
	NccELfDmg0xq0/RSQlPkrNI2+uLp3RUPVST7H9vnIUmqcwPzTlUZ5/k0iGVTmCQjmJ2H6SHv1Z9nL
	8RLpI8LOto0DARvJOaVbgShKi5/yZAJBTBSGUd+XMtAXbkVqw2crbGIfgrrfii7jBwtqkGjNjL5df
	pqotCP5dVqdfxvdTvKqTCOGaAn5lf3b2C2S800XrQ8Vg00Q8qBiVC5hTdwJdWX8p2rFJ37/rLKsze
	dy8lt6C3CaR8EBnVcHPkpOq60WMSbiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPkzV-0001az-FC; Wed, 30 Oct 2019 10:14:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkzJ-0001aS-Qh
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 10:14:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E05BD1F1;
 Wed, 30 Oct 2019 03:13:58 -0700 (PDT)
Received: from login2.euhpc.arm.com (login2.euhpc.arm.com [10.6.27.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EF5C13F71E;
 Wed, 30 Oct 2019 03:13:57 -0700 (PDT)
From: Vladimir Murzin <vladimir.murzin@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux-foundation.org
Subject: [PATCH] dma-mapping: fix handling of dma-ranges for reserved memory
 (again)
Date: Wed, 30 Oct 2019 10:13:13 +0000
Message-Id: <1572430393-40203-1-git-send-email-vladimir.murzin@arm.com>
X-Mailer: git-send-email 2.0.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_031401_961729_3293B6F6 
X-CRM114-Status: GOOD (  11.18  )
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
Cc: hch@lst.de, robin.murphy@arm.com, alexandre.torgue@st.com,
 daniele.alessandrelli@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Daniele reported that issue previously fixed in c41f9ea998f3
("drivers: dma-coherent: Account dma_pfn_offset when used with device
tree") reappear shortly after 43fc509c3efb ("dma-coherent: introduce
interface for default DMA pool") where fix was accidentally dropped.

Lets put fix back in place and respect dma-ranges for reserved memory.

Fixes: 43fc509c3efb ("dma-coherent: introduce interface for default DMA pool")

Reported-by: Daniele Alessandrelli <daniele.alessandrelli@gmail.com>
Tested-by: Daniele Alessandrelli <daniele.alessandrelli@gmail.com>
Tested-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
---
 arch/arm/mm/dma-mapping-nommu.c |  2 +-
 include/linux/dma-mapping.h     |  4 ++--
 kernel/dma/coherent.c           | 16 +++++++++-------
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
index db92478..287ef89 100644
--- a/arch/arm/mm/dma-mapping-nommu.c
+++ b/arch/arm/mm/dma-mapping-nommu.c
@@ -35,7 +35,7 @@ static void *arm_nommu_dma_alloc(struct device *dev, size_t size,
 				 unsigned long attrs)
 
 {
-	void *ret = dma_alloc_from_global_coherent(size, dma_handle);
+	void *ret = dma_alloc_from_global_coherent(dev, size, dma_handle);
 
 	/*
 	 * dma_alloc_from_global_coherent() may fail because:
diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index 4a1c4fc..10918c5 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -162,7 +162,7 @@ int dma_release_from_dev_coherent(struct device *dev, int order, void *vaddr);
 int dma_mmap_from_dev_coherent(struct device *dev, struct vm_area_struct *vma,
 			    void *cpu_addr, size_t size, int *ret);
 
-void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle);
+void *dma_alloc_from_global_coherent(struct device *dev, ssize_t size, dma_addr_t *dma_handle);
 int dma_release_from_global_coherent(int order, void *vaddr);
 int dma_mmap_from_global_coherent(struct vm_area_struct *vma, void *cpu_addr,
 				  size_t size, int *ret);
@@ -172,7 +172,7 @@ int dma_mmap_from_global_coherent(struct vm_area_struct *vma, void *cpu_addr,
 #define dma_release_from_dev_coherent(dev, order, vaddr) (0)
 #define dma_mmap_from_dev_coherent(dev, vma, vaddr, order, ret) (0)
 
-static inline void *dma_alloc_from_global_coherent(ssize_t size,
+static inline void *dma_alloc_from_global_coherent(struct device *dev, ssize_t size,
 						   dma_addr_t *dma_handle)
 {
 	return NULL;
diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
index 545e386..551b0eb 100644
--- a/kernel/dma/coherent.c
+++ b/kernel/dma/coherent.c
@@ -123,8 +123,9 @@ int dma_declare_coherent_memory(struct device *dev, phys_addr_t phys_addr,
 	return ret;
 }
 
-static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
-		ssize_t size, dma_addr_t *dma_handle)
+static void *__dma_alloc_from_coherent(struct device *dev,
+				       struct dma_coherent_mem *mem,
+				       ssize_t size, dma_addr_t *dma_handle)
 {
 	int order = get_order(size);
 	unsigned long flags;
@@ -143,7 +144,7 @@ static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
 	/*
 	 * Memory was found in the coherent area.
 	 */
-	*dma_handle = mem->device_base + (pageno << PAGE_SHIFT);
+	*dma_handle = dma_get_device_base(dev, mem) + (pageno << PAGE_SHIFT);
 	ret = mem->virt_base + (pageno << PAGE_SHIFT);
 	spin_unlock_irqrestore(&mem->spinlock, flags);
 	memset(ret, 0, size);
@@ -175,17 +176,18 @@ int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,
 	if (!mem)
 		return 0;
 
-	*ret = __dma_alloc_from_coherent(mem, size, dma_handle);
+	*ret = __dma_alloc_from_coherent(dev, mem, size, dma_handle);
 	return 1;
 }
 
-void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle)
+void *dma_alloc_from_global_coherent(struct device *dev, ssize_t size,
+				     dma_addr_t *dma_handle)
 {
 	if (!dma_coherent_default_memory)
 		return NULL;
 
-	return __dma_alloc_from_coherent(dma_coherent_default_memory, size,
-			dma_handle);
+	return __dma_alloc_from_coherent(dev, dma_coherent_default_memory, size,
+					 dma_handle);
 }
 
 static int __dma_release_from_coherent(struct dma_coherent_mem *mem,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
