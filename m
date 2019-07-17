Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6526BF32
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 17:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l34bmHBCxdlT+6HMQ3rvmGe5rGzODx1CGGb0d0H3zzo=; b=aGEX9xEnDWn9Gq
	YntetBWb/WUQUfN4D/tLMBvMqJbtlJqLo55xXX8luV7z3YECroXy/b03oS7cAo7JhVGG3lqLd98Va
	g8tpXY8AOe1l++Xj1jXLQvCxm7coGRTTUZofoA+GuLMbqV2rMQCPQufmYH675dNOyDiIKjxzoFydI
	EFVYxHAoNHRzzu7zfrmxmWM8DSChN2/vA6btkMD34KlG/nRS91SX2E6vxD1Cugrcy5+mJvG4i74ye
	8GR7M1VEJgbSjzw0g4wJ2G47MPC22yzFNhco/2oFngJGjOuPuj0mV2i218jovi0Z5XCVy3ix8sQcZ
	ie1yuuYg488OC3D6tBlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnlvR-0004pc-JS; Wed, 17 Jul 2019 15:33:01 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnluH-0003k1-IJ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 15:31:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EB414B048;
 Wed, 17 Jul 2019 15:31:46 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: linux-arm-kernel@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Robin Murphy <robin.murphy@arm.com>
Subject: [RFC 3/4] dma-direct: add dma_direct_min_mask
Date: Wed, 17 Jul 2019 17:31:34 +0200
Message-Id: <20190717153135.15507-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190717153135.15507-1-nsaenzjulienne@suse.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_083149_755004_F4482673 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: stefan.wahren@i2se.com, f.fainelli@gmail.com, catalin.marinas@arm.com,
 phil@raspberrypi.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Jisheng.Zhang@synaptics.com, mbrugger@suse.com,
 will@kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Historically devices with ZONE_DMA32 have been assumed to be able to
address at least the lower 4GB of ram for DMA. This is still the defualt
behavior yet the Raspberry Pi 4 is limited to the first GB of memory.
This has been observed to trigger failures in dma_direct_supported() as
the 'min_mask' isn't properly set.

We create 'dma_direct_min_mask' in order for the arch init code to be
able to fine-tune dma direct's 'min_dma' mask.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 kernel/dma/direct.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index b90e1aede743..3c8cd730648b 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -23,6 +23,8 @@
 #define ARCH_ZONE_DMA_BITS 24
 #endif
 
+u64 dma_direct_min_mask __ro_after_init = DMA_BIT_MASK(32);
+
 /*
  * For AMD SEV all DMA must be to unencrypted addresses.
  */
@@ -393,7 +395,7 @@ int dma_direct_supported(struct device *dev, u64 mask)
 	if (IS_ENABLED(CONFIG_ZONE_DMA))
 		min_mask = DMA_BIT_MASK(ARCH_ZONE_DMA_BITS);
 	else
-		min_mask = DMA_BIT_MASK(32);
+		min_mask = dma_direct_min_mask;
 
 	min_mask = min_t(u64, min_mask, (max_pfn - 1) << PAGE_SHIFT);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
