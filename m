Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91009D6975
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n14RK8LC6IUcQ0Lt9QjXRIM4pXyuTNdMeX/cBaAroig=; b=hsTM/hDiIRQXMh
	MpMQ+DFqnWICO8Zo5/yTKj4POfgAAZZVULtUw21eJ3Ua9p56uHURhKXmggRUy4JqTY2RtYu2jA+j3
	9De7EYnaHVTT3lXt9+gw7y8GcRGYsuc9b9c8KN2HhTRkloZB+IHoqrqeVK2jeCBWTq83Hxn8EZ0pg
	msqIXf4dzAVyawrGqPLd/llPrR/fsyJlF66V7QrPbekySlhvn/atcUnN4hyqUGezq6XkgYUCrdgV0
	lYbmSbPW75M3ayf8txzcSu8JXsuep8ZbZk371fttdYs9kk1hL4N7agqjYWOrjQsn9g195IjfEEA6L
	CY6ZpuO0bugu6De8gWEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK595-0006kC-3E; Mon, 14 Oct 2019 18:32:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK58K-0006EH-70; Mon, 14 Oct 2019 18:31:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E07EDBB7A;
 Mon, 14 Oct 2019 18:31:50 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFC 3/5] ARM: let machines select dma-direct over arch's DMA
 implementation
Date: Mon, 14 Oct 2019 20:31:05 +0200
Message-Id: <20191014183108.24804-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014183108.24804-1-nsaenzjulienne@suse.de>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_113152_396381_AFBEBD44 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, Russell King <linux@armlinux.org.uk>,
 hch@infradead.org, mbrugger@suse.com, wahrenst@gmx.net,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A bounce buffering feature is already available in ARM, dmabounce.c, yet
it doesn't support high memory which some devices need. Instead of
fixing it, provide a means for devices to enable dma-direct, which is the
preferred way of doing DMA now days.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/include/asm/mach/arch.h | 1 +
 arch/arm/mm/init.c               | 8 +++++++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/mach/arch.h b/arch/arm/include/asm/mach/arch.h
index e7df5a822cab..3542bf502573 100644
--- a/arch/arm/include/asm/mach/arch.h
+++ b/arch/arm/include/asm/mach/arch.h
@@ -33,6 +33,7 @@ struct machine_desc {
 #ifdef CONFIG_ZONE_DMA
 	phys_addr_t		dma_zone_size;	/* size of DMA-able area */
 #endif
+	bool			dma_direct;
 
 	unsigned int		video_start;	/* start of video RAM	*/
 	unsigned int		video_end;	/* end of video RAM	*/
diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index 0a63379a4d1a..556f70665353 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -19,6 +19,7 @@
 #include <linux/gfp.h>
 #include <linux/memblock.h>
 #include <linux/dma-contiguous.h>
+#include <linux/dma-direct.h>
 #include <linux/sizes.h>
 #include <linux/stop_machine.h>
 #include <linux/swiotlb.h>
@@ -119,6 +120,8 @@ void __init setup_dma_zone(const struct machine_desc *mdesc)
 	 */
 	if (IS_ENABLED(CONFIG_ARM_LPAE))
 		arm_dma_direct = true;
+	else
+		arm_dma_direct = mdesc->dma_direct;
 
 #ifdef CONFIG_ZONE_DMA
 	if (mdesc->dma_zone_size) {
@@ -126,7 +129,10 @@ void __init setup_dma_zone(const struct machine_desc *mdesc)
 		arm_dma_limit = PHYS_OFFSET + arm_dma_zone_size - 1;
 	} else
 		arm_dma_limit = 0xffffffff;
+
 	arm_dma_pfn_limit = arm_dma_limit >> PAGE_SHIFT;
+
+	zone_dma_bits = ilog2(arm_dma_limit) + 1;
 #endif
 }
 
@@ -482,7 +488,7 @@ static void __init free_highpages(void)
  */
 void __init mem_init(void)
 {
-#ifdef CONFIG_ARM_LPAE
+#ifdef CONFIG_SWIOTLB
 	swiotlb_init(1);
 #endif
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
