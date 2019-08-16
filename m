Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C85990260
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:03:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/F7waaSS5hfgXjU9B48XzVGcwQNUOE73IeITHOsnFDI=; b=WMihWyawN4SPtN
	B6UmGCGNmeKmKK0Mpu7+eGd7jRU6N1o7GdGpxUcwodFbBxj9Nf7ngyxtZcnr8A4T5pYT01h9DhGOF
	k3bLZBBQ9UFuDzfr0UM4C3ljX2Rw6E1wAYsTGuqa9bRUFr4fMhCfhC88FXSfuzTx5hUBsb81Mo/7N
	T86UWAFyHQ7gpdfYH6/wvJmymR80UYg7waLiYdYNrCNqF1yILHiyy4tplhZYOTmp+05yx8LSRPG8Z
	rvPLSsPO/m93jnEemSeospgfNOvWtsXH/qBzyGm1Du/6ylmJNmVX/MsxeTO2NQeMVuvfqwtHwF+in
	UWwnzu2DF8ilZPjNzjWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybt2-0008VM-JQ; Fri, 16 Aug 2019 13:03:20 +0000
Received: from [91.112.187.46] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hybqI-0006PW-1E; Fri, 16 Aug 2019 13:00:31 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: [PATCH 04/11] xen/arm: remove xen_dma_ops
Date: Fri, 16 Aug 2019 15:00:06 +0200
Message-Id: <20190816130013.31154-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190816130013.31154-1-hch@lst.de>
References: <20190816130013.31154-1-hch@lst.de>
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
Cc: xen-devel@lists.xenproject.org, iommu@lists.linux-foundation.org,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

arm and arm64 can just use xen_swiotlb_dma_ops directly like x86, no
need for a pointer indirection.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/mm/dma-mapping.c    | 3 ++-
 arch/arm/xen/mm.c            | 4 ----
 arch/arm64/mm/dma-mapping.c  | 3 ++-
 include/xen/arm/hypervisor.h | 2 --
 4 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 738097396445..2661cad36359 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -35,6 +35,7 @@
 #include <asm/mach/map.h>
 #include <asm/system_info.h>
 #include <asm/dma-contiguous.h>
+#include <xen/swiotlb-xen.h>
 
 #include "dma.h"
 #include "mm.h"
@@ -2360,7 +2361,7 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 
 #ifdef CONFIG_XEN
 	if (xen_initial_domain())
-		dev->dma_ops = xen_dma_ops;
+		dev->dma_ops = &xen_swiotlb_dma_ops;
 #endif
 	dev->archdata.dma_ops_setup = true;
 }
diff --git a/arch/arm/xen/mm.c b/arch/arm/xen/mm.c
index d9da24fda2f7..388a45002bad 100644
--- a/arch/arm/xen/mm.c
+++ b/arch/arm/xen/mm.c
@@ -183,16 +183,12 @@ void xen_destroy_contiguous_region(phys_addr_t pstart, unsigned int order)
 }
 EXPORT_SYMBOL_GPL(xen_destroy_contiguous_region);
 
-const struct dma_map_ops *xen_dma_ops;
-EXPORT_SYMBOL(xen_dma_ops);
-
 int __init xen_mm_init(void)
 {
 	struct gnttab_cache_flush cflush;
 	if (!xen_initial_domain())
 		return 0;
 	xen_swiotlb_init(1, false);
-	xen_dma_ops = &xen_swiotlb_dma_ops;
 
 	cflush.op = 0;
 	cflush.a.dev_bus_addr = 0;
diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index bd2b039f43a6..4b244a037349 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -8,6 +8,7 @@
 #include <linux/cache.h>
 #include <linux/dma-noncoherent.h>
 #include <linux/dma-iommu.h>
+#include <xen/swiotlb-xen.h>
 
 #include <asm/cacheflush.h>
 
@@ -64,6 +65,6 @@ void arch_setup_dma_ops(struct device *dev, u64 dma_base, u64 size,
 
 #ifdef CONFIG_XEN
 	if (xen_initial_domain())
-		dev->dma_ops = xen_dma_ops;
+		dev->dma_ops = &xen_swiotlb_dma_ops;
 #endif
 }
diff --git a/include/xen/arm/hypervisor.h b/include/xen/arm/hypervisor.h
index 2982571f7cc1..43ef24dd030e 100644
--- a/include/xen/arm/hypervisor.h
+++ b/include/xen/arm/hypervisor.h
@@ -19,8 +19,6 @@ static inline enum paravirt_lazy_mode paravirt_get_lazy_mode(void)
 	return PARAVIRT_LAZY_NONE;
 }
 
-extern const struct dma_map_ops *xen_dma_ops;
-
 #ifdef CONFIG_XEN
 void __init xen_early_init(void);
 #else
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
