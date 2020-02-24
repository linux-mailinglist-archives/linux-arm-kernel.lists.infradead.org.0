Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D35C16B087
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:46:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yy3GS9z1i4aeO+TKQu2J0YHVors5xdMAzVssM45ETDA=; b=Pn2bZ77loqIvLP
	iQVbmG7ZSlMW9UD/WoaA9GDg8riS+V/sNFQrNuyZjwVJaQsLHGSaLfyxH03xCpUpl5qHSMJWm7Nmy
	mkp/Ai7RxdcwwU/5CeltE8Ee/9OSTElPR2D+eyc0NhkBbJYX1oqzrySVH2EvjRY0z0kOsrGmwkI4l
	YVhqCVfB6lFGTuIXaKi9orSA7nMORpU1A/zhandC3TxhNA+uDpF/zP2/Ok2LMcqd3XjCkmc55w6xX
	YH8OBsgHLQNYedk20BunsZnyOK7aCoWpzL7llI2a5hK0hH2u4AFq1xhakS7TMCXYQc8+sU6m5yO1F
	iNXQwQPGb/Rh7IudIuYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Jg5-0000Jb-CQ; Mon, 24 Feb 2020 19:46:05 +0000
Received: from [4.28.11.157] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Jev-0006Xj-34; Mon, 24 Feb 2020 19:44:53 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jonas Bonn <jonas@southpole.se>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Stafford Horne <shorne@gmail.com>
Subject: [PATCH 4/5] dma-direct: provide a arch_dma_clear_uncached hook
Date: Mon, 24 Feb 2020 11:44:44 -0800
Message-Id: <20200224194446.690816-5-hch@lst.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200224194446.690816-1-hch@lst.de>
References: <20200224194446.690816-1-hch@lst.de>
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

This allows the arch code to reset the page tables to cached access when
freeing a dma coherent allocation that was set to uncached using
arch_dma_set_uncached.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/Kconfig                    | 7 +++++++
 include/linux/dma-noncoherent.h | 1 +
 kernel/dma/direct.c             | 2 ++
 3 files changed, 10 insertions(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 090cfe0c82a7..c26302f90c96 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -255,6 +255,13 @@ config ARCH_HAS_SET_DIRECT_MAP
 config ARCH_HAS_DMA_SET_UNCACHED
 	bool
 
+#
+# Select if the architectures provides the arch_dma_clear_uncached symbol
+# to undo an in-place page table remap for uncached access.
+#
+config ARCH_HAS_DMA_CLEAR_UNCACHED
+	bool
+
 # Select if arch init_task must go in the __init_task_data section
 config ARCH_TASK_STRUCT_ON_STACK
 	bool
diff --git a/include/linux/dma-noncoherent.h b/include/linux/dma-noncoherent.h
index 1a4039506673..b59f1b6be3e9 100644
--- a/include/linux/dma-noncoherent.h
+++ b/include/linux/dma-noncoherent.h
@@ -109,5 +109,6 @@ static inline void arch_dma_prep_coherent(struct page *page, size_t size)
 #endif /* CONFIG_ARCH_HAS_DMA_PREP_COHERENT */
 
 void *arch_dma_set_uncached(void *addr, size_t size);
+void arch_dma_clear_uncached(void *addr, size_t size);
 
 #endif /* _LINUX_DMA_NONCOHERENT_H */
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index f01a8191fd59..a8560052a915 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -219,6 +219,8 @@ void dma_direct_free_pages(struct device *dev, size_t size, void *cpu_addr,
 
 	if (IS_ENABLED(CONFIG_DMA_REMAP) && is_vmalloc_addr(cpu_addr))
 		vunmap(cpu_addr);
+	else if (IS_ENABLED(CONFIG_ARCH_HAS_DMA_CLEAR_UNCACHED))
+		arch_dma_clear_uncached(cpu_addr, size);
 
 	dma_free_contiguous(dev, dma_direct_to_page(dev, dma_addr), size);
 }
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
