Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A839A9CF8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 14:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYAz0MfkHlM4loBntcRKBu7t3SOiTLnxhr2LvLOltBM=; b=V//p060ltl04AH
	Xfpa2mBltFP22mSGBGpFxtGeaAXPa8XRWT1qz24bbY8h60tCJiQ/mwInmEpQG2lq/l3yRsh8XHcPT
	+e4Fp05bc0bC4+TPk6Afp/Dgckf0UMzUROo5q1TiLpErOyujoxlUt/VR+3xvFEj3B2357/9U2jmTA
	HPyw2sy/qTk5ISlyY7vgSr2hEjMX80HZvvLMukeBX1rO5gz7liUYieMxRnKx5HuLeuTNeNgdjWosp
	n4blKO1atBHrX+O/S10r/LMI7tpAp8mVsJeb5EvHIv9mCtnjCB91yUnYWGl5uFEKJGB9uWaVt5LNZ
	ZdzUd+o67IF3Uj1ktqCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2E0W-00062N-94; Mon, 26 Aug 2019 12:22:00 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dyr-0003uc-LI; Mon, 26 Aug 2019 12:20:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Stefano Stabellini <sstabellini@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: [PATCH 11/11] arm64: use asm-generic/dma-mapping.h
Date: Mon, 26 Aug 2019 14:19:44 +0200
Message-Id: <20190826121944.515-12-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190826121944.515-1-hch@lst.de>
References: <20190826121944.515-1-hch@lst.de>
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
Cc: x86@kernel.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, xen-devel@lists.xenproject.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the Xen special cases are gone nothing worth mentioning is
left in the arm64 <asm/dma-mapping.h> file, so switch to use the
asm-generic version instead.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/Kbuild        |  1 +
 arch/arm64/include/asm/dma-mapping.h | 22 ----------------------
 arch/arm64/mm/dma-mapping.c          |  1 +
 3 files changed, 2 insertions(+), 22 deletions(-)
 delete mode 100644 arch/arm64/include/asm/dma-mapping.h

diff --git a/arch/arm64/include/asm/Kbuild b/arch/arm64/include/asm/Kbuild
index c52e151afab0..98a5405c8558 100644
--- a/arch/arm64/include/asm/Kbuild
+++ b/arch/arm64/include/asm/Kbuild
@@ -4,6 +4,7 @@ generic-y += delay.h
 generic-y += div64.h
 generic-y += dma.h
 generic-y += dma-contiguous.h
+generic-y += dma-mapping.h
 generic-y += early_ioremap.h
 generic-y += emergency-restart.h
 generic-y += hw_irq.h
diff --git a/arch/arm64/include/asm/dma-mapping.h b/arch/arm64/include/asm/dma-mapping.h
deleted file mode 100644
index 67243255a858..000000000000
--- a/arch/arm64/include/asm/dma-mapping.h
+++ /dev/null
@@ -1,22 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright (C) 2012 ARM Ltd.
- */
-#ifndef __ASM_DMA_MAPPING_H
-#define __ASM_DMA_MAPPING_H
-
-#ifdef __KERNEL__
-
-#include <linux/types.h>
-#include <linux/vmalloc.h>
-
-#include <xen/xen.h>
-#include <asm/xen/hypervisor.h>
-
-static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
-{
-	return NULL;
-}
-
-#endif	/* __KERNEL__ */
-#endif	/* __ASM_DMA_MAPPING_H */
diff --git a/arch/arm64/mm/dma-mapping.c b/arch/arm64/mm/dma-mapping.c
index 4b244a037349..6578abcfbbc7 100644
--- a/arch/arm64/mm/dma-mapping.c
+++ b/arch/arm64/mm/dma-mapping.c
@@ -8,6 +8,7 @@
 #include <linux/cache.h>
 #include <linux/dma-noncoherent.h>
 #include <linux/dma-iommu.h>
+#include <xen/xen.h>
 #include <xen/swiotlb-xen.h>
 
 #include <asm/cacheflush.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
