Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8589795355
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 03:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFgBvrsBcxE+JUPTHJya/TfSF5WuqHODVvGrIqxBEMQ=; b=nI2SUDDriTdDZg
	FpWe23oePXcxs/uCCdrWBb9sJwHXU4Bh498jlavnRRU3a2jPIkzTYPdpx6tzDxI1mpea0zkhhGEcP
	mcAmwxl4GuMeDNo4YtMQ9ZypY/J2Phl/DbgHK/XqquV0pwZW/quIof+X/xIx46ZxcUauJhHNDuA56
	7T2TxfCgli1/t1iT+qQPHuIiP8IKUlsN3eQxaI1qI/scTqq+/Xf4FTvQDC9kmmNbskJWZ+OkPsfoW
	C9EJ0kKA3tJNR6aBmFfOFrVv7PHg1leTU17+thA0BpA/3MrToUc1fITKF+HEUDnzlr3F6cqB6zX61
	9UFa5/Qk3el11qg0a+dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzst2-00016F-2k; Tue, 20 Aug 2019 01:24:36 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzssn-00015r-TE
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 01:24:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9301B68B02; Tue, 20 Aug 2019 03:24:15 +0200 (CEST)
Date: Tue, 20 Aug 2019 03:24:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: Build regression in Linux 5.3-rc5 with CONFIG_XEN=y
Message-ID: <20190820012415.GA21178@lst.de>
References: <ebd95b7c-d265-cbf1-be50-945db1dd06ad@gmx.net>
 <825549ed-8aa4-b418-8812-15a9d3cc153e@arm.com>
 <0b019cdc-6f0e-c37f-2be7-c24293acb8cd@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b019cdc-6f0e-c37f-2be7-c24293acb8cd@gmx.net>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_182422_098232_CFEFF579 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan,

please try the patch below.

---
From e0570628d96faa50ebfc94ce8e545968336db225 Mon Sep 17 00:00:00 2001
From: Christoph Hellwig <hch@lst.de>
Date: Tue, 20 Aug 2019 10:08:38 +0900
Subject: arm: select the dma-noncoherent symbols for all swiotlb builds

We need to provide the arch hooks for non-coherent dma-direct
and swiotlb for all swiotlb builds, not just when LPAS is enabled.
Without that the Xen build that selects SWIOTLB indirectly through
SWIOTLB_XEN fails to build.

Fixes: ad3c7b18c5b3 ("arm: use swiotlb for bounce buffering on LPAE configs")
Reported-by: Stefan Wahren <wahrenst@gmx.net>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 arch/arm/Kconfig    | 4 ++++
 arch/arm/mm/Kconfig | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..24360211534a 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -7,6 +7,8 @@ config ARM
 	select ARCH_HAS_BINFMT_FLAT
 	select ARCH_HAS_DEBUG_VIRTUAL if MMU
 	select ARCH_HAS_DEVMEM_IS_ALLOWED
+	select ARCH_HAS_DMA_COHERENT_TO_PFN if SWIOTLB
+	select ARCH_HAS_DMA_MMAP_PGPROT if SWIOTLB
 	select ARCH_HAS_ELF_RANDOMIZE
 	select ARCH_HAS_FORTIFY_SOURCE
 	select ARCH_HAS_KEEPINITRD
@@ -18,6 +20,8 @@ config ARM
 	select ARCH_HAS_SET_MEMORY
 	select ARCH_HAS_STRICT_KERNEL_RWX if MMU && !XIP_KERNEL
 	select ARCH_HAS_STRICT_MODULE_RWX if MMU
+	select ARCH_HAS_SYNC_DMA_FOR_DEVICE if SWIOTLB
+	select ARCH_HAS_SYNC_DMA_FOR_CPU if SWIOTLB
 	select ARCH_HAS_TEARDOWN_DMA_OPS if MMU
 	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
 	select ARCH_HAVE_CUSTOM_GPIO_H
diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
index c54cd7ed90ba..c1222c0e9fd3 100644
--- a/arch/arm/mm/Kconfig
+++ b/arch/arm/mm/Kconfig
@@ -664,10 +664,6 @@ config ARM_LPAE
 		!CPU_32v4 && !CPU_32v3
 	select PHYS_ADDR_T_64BIT
 	select SWIOTLB
-	select ARCH_HAS_DMA_COHERENT_TO_PFN
-	select ARCH_HAS_DMA_MMAP_PGPROT
-	select ARCH_HAS_SYNC_DMA_FOR_DEVICE
-	select ARCH_HAS_SYNC_DMA_FOR_CPU
 	help
 	  Say Y if you have an ARMv7 processor supporting the LPAE page
 	  table format and you would like to access memory beyond the
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
