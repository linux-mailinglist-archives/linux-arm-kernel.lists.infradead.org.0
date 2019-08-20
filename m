Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312DE9635B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y5g5xyMseH6+iJZMLXczE4faphmR9AOFFtAgzqEmWuM=; b=R9atYh1caMi9s/
	VUHkIcQ74bWQXp/X1w9VW2lh3f2r4NouQhun3IUkHhmwQOmw1SpfIti2VZ3FP54lWu5S7RwNUW1H5
	4ZynYJouzLs9US9tl76IwAErKodnSxQzyRRFBA7PkZxttRQqxG91879bBaRNEigvxSsDDd+gB31is
	qlLyXlwv8mtcHktBnsYj81Fvx8KATCjQ0KgvRBKWqJqIx9GRAKJHZJvP6YpR2lir/bxHUnah0SVEJ
	PCMQ9yH0ZoxlW9zXFrSl62UJTOFxDPT5ZRjaHcpmO3depnN9N7LQM28S+JRltxiFC33rzZDb4/2e+
	jpLAOmZRUNA18jeDDT7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05aw-00050e-9d; Tue, 20 Aug 2019 14:58:46 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05aj-0004yP-0m; Tue, 20 Aug 2019 14:58:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0DD42AFA5;
 Tue, 20 Aug 2019 14:58:30 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 01/11] asm-generic: add dma_zone_size
Date: Tue, 20 Aug 2019 16:58:09 +0200
Message-Id: <20190820145821.27214-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820145821.27214-1-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075833_202134_89C00933 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
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
 linux-kernel@vger.kernel.org, eric@anholt.net, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, akpm@linux-foundation.org,
 will@kernel.org, nsaenzjulienne@suse.de, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some architectures have platform specific DMA addressing limitations.
This will allow for hardware description code to provide the constraints
in a generic manner, so as for arch code to properly setup it's memory
zones and DMA mask.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes in v2: None

 include/asm-generic/dma.h | 8 +++++++-
 mm/page_alloc.c           | 3 +++
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/dma.h b/include/asm-generic/dma.h
index 43d0c8af8058..c2f39cdb64f6 100644
--- a/include/asm-generic/dma.h
+++ b/include/asm-generic/dma.h
@@ -8,7 +8,13 @@
  *
  * Some code relies on seeing MAX_DMA_ADDRESS though.
  */
-#define MAX_DMA_ADDRESS PAGE_OFFSET
+#define MAX_DMA_ADDRESS	 (PAGE_OFFSET + dma_zone_size)
+
+/*
+ * Some architectures may have platform specific DMA addressing constraints.
+ * Firmware can use this to fine tune the device's DMA memory zone.
+ */
+extern u64 dma_zone_size __ro_after_init;
 
 extern int request_dma(unsigned int dmanr, const char *device_id);
 extern void free_dma(unsigned int dmanr);
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 272c6de1bf4e..b514afee5451 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -133,6 +133,9 @@ EXPORT_SYMBOL(_totalram_pages);
 unsigned long totalreserve_pages __read_mostly;
 unsigned long totalcma_pages __read_mostly;
 
+u64 dma_zone_size __ro_after_init;
+EXPORT_SYMBOL(dma_zone_size);
+
 int percpu_pagelist_fraction;
 gfp_t gfp_allowed_mask __read_mostly = GFP_BOOT_MASK;
 #ifdef CONFIG_INIT_ON_ALLOC_DEFAULT_ON
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
