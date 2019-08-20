Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138DC9639A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:02:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUDVRn1EhIx1LxZvW4WqQllr2VbD6dGPjtIa4Qe6X58=; b=f9qiB0oCTn0nb4
	vGRlYtXDEqq6Zjko1kYxa8HTlPiySMGZcdQPbEhfdnYHmrvPJsWMnnzJuwE8sCAlLejp3XXgYliPN
	JhOgwCDA7U8w2EFKamAPlt9O2oKvxgZ5ZjNwvMUiZmL7kKr5E6Ss1+Unefe+uNNkykGSc5r7rZkCH
	zPIiSx2E1YZNKpKCkMJO0VshnjadJ5MMEWSpB0+I+FPzXBWrlkhicyIxuz/3oOv5Dt75nGwtCgSWm
	Qoa8lOIFbvMDnqQpvXAziKOPniRq7IvfrZrDGvH9sWBLeL0sUPS6coK/ImdkGPL4zQ8QIWpg7OjbF
	qs1S4cjkaXW3My02hWFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05e8-0000r1-Hq; Tue, 20 Aug 2019 15:02:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05au-00059l-Ba; Tue, 20 Aug 2019 14:58:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id F4150AFD4;
 Tue, 20 Aug 2019 14:58:42 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 10/11] arm64: edit zone_dma_bits to fine tune dma-direct
 min mask
Date: Tue, 20 Aug 2019 16:58:18 +0200
Message-Id: <20190820145821.27214-11-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820145821.27214-1-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075844_611107_F7100A95 
X-CRM114-Status: GOOD (  10.19  )
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, frowand.list@gmail.com,
 eric@anholt.net, mbrugger@suse.com, linux-rpi-kernel@lists.infradead.org,
 akpm@linux-foundation.org, will@kernel.org, nsaenzjulienne@suse.de,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the introduction of ZONE_DMA in arm64 devices are not forced to
support 32 bit DMA masks. We have to inform dma-direct of this
limitation whenever it happens.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes in v2:
- Make sure to filter the higher part of arm64_dma_phys_limit
- Rename variable to zone_dma_bits

 arch/arm64/mm/init.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index c51ce79b692b..c5e619f21ad8 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -22,6 +22,7 @@
 #include <linux/of_fdt.h>
 #include <linux/dma-mapping.h>
 #include <linux/dma-contiguous.h>
+#include <linux/dma-direct.h>
 #include <linux/efi.h>
 #include <linux/swiotlb.h>
 #include <linux/vmalloc.h>
@@ -437,8 +438,10 @@ void __init arm64_memblock_init(void)
 
 	early_init_fdt_scan_reserved_mem();
 
-	if (IS_ENABLED(CONFIG_ZONE_DMA))
+	if (IS_ENABLED(CONFIG_ZONE_DMA)) {
 		arm64_dma_phys_limit = max_zone_dma_phys();
+		zone_dma_bits = ilog2((arm64_dma_phys_limit - 1) & GENMASK_ULL(31, 0)) + 1;
+	}
 
 	if (IS_ENABLED(CONFIG_ZONE_DMA32))
 		arm64_dma32_phys_limit = max_zone_dma32_phys();
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
