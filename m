Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB77814EC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZ4ZZMV5sznyvEk5Y30X3dTUIyUFSZuihlIWmJZkr8U=; b=MpXPFAKpRCH1CE
	HcugvM+NWm/L/7F1FPwHNmvHFWJPWXMB/h87nndtlyq0YnKsPqvdNDelpmLm4szIv8snYfzBc4gWQ
	xc8wINMcR4FoH+ycSLm19OUWn9UcWk149rOE3iDYz7DQN+qczoCYtqwbsKx9ek2sZTsCyywVpqfiT
	0hBk5Kp2JsvrbdebM6jyLEPVYyoVjF4yI4FLladSNiIblAQzNMe/Sw/utSh3Ve2bHzsC2gxK5hSY1
	ZmyrmIZP9uBVsSNmCN7qJTR9MGjEfhfLmvcCxh9XvcQtbaj/KZ81uy8j/fgmfh94hsTr3MKoJ8iYn
	9nEWxdFbdrgztqR/GA/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ33-0005Nm-JH; Mon, 05 Aug 2019 09:12:57 +0000
Received: from [195.167.85.94] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ2B-0004t2-UD; Mon, 05 Aug 2019 09:12:04 +0000
From: Christoph Hellwig <hch@lst.de>
To: iommu@lists.linux-foundation.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: [PATCH 1/7] dma-mapping: move the dma_get_sgtable API comments from
 arm to common code
Date: Mon,  5 Aug 2019 12:11:53 +0300
Message-Id: <20190805091159.7826-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190805091159.7826-1-hch@lst.de>
References: <20190805091159.7826-1-hch@lst.de>
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
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 Takashi Iwai <tiwai@suse.de>, linuxppc-dev@lists.ozlabs.org, x86@kernel.org,
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
index 6774b03aa405..4410af33c5c4 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -877,17 +877,6 @@ static void arm_coherent_dma_free(struct device *dev, size_t size, void *cpu_add
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
index b945239621d8..4ceb5b9016d8 100644
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
