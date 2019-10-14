Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE013D6974
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 20:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DF887j40lbgJOPcIcQ+7DmGmM+NTIj5MrdWSUr9VZP8=; b=tnyhf7ZlOQAkwG
	X4CTYZk1zuyOElQ3Zrt1mf7MpuhrJHiszHDiLw7o6dzAVmxexHVz+7GHDX1sBHxVziU0Gi9cL/ykN
	quTSh7Kw2O0lJzZ6xiyOZk0Jtaq+AUEKdbovKHFiGWaev2vboYm5LJn45QMJr8/YqXz0MkTz5Z/sW
	uPFnXY5Qd+gWBhtP1yHpk74tS+LcOuqnFSGu7dQwKytYSpe4N6rgGrwhML4DtyYyYGiARqJvwbv9P
	ip9qdZc4u8VN5hXAHr7fT2x8o2htwD25uDvhNlZXNLErZ7kLLXyzdqfxQnFuiZFvZ02AN8uSAf3WY
	SQw6zDRsFNLOsG6sWuLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK58n-0006QT-HH; Mon, 14 Oct 2019 18:32:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK58J-0006E2-A1; Mon, 14 Oct 2019 18:31:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D755DBB7D;
 Mon, 14 Oct 2019 18:31:49 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RFC 2/5] ARM: introduce arm_dma_direct
Date: Mon, 14 Oct 2019 20:31:04 +0200
Message-Id: <20191014183108.24804-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014183108.24804-1-nsaenzjulienne@suse.de>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_113151_639684_2FFEB879 
X-CRM114-Status: GOOD (  15.94  )
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

ARM devices might use the arch's custom dma-mapping implementation or
dma-direct/swiotlb depending on how the kernel is built. This is not
good enough as we need to be able to control the device's DMA ops based
on the specific machine configuration.

Centralise control over DMA ops with arm_dma_direct, a global variable
which will be set accordingly during init.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 arch/arm/include/asm/dma-mapping.h |  3 ++-
 arch/arm/include/asm/dma.h         |  2 ++
 arch/arm/mm/dma-mapping.c          | 10 ++--------
 arch/arm/mm/init.c                 | 13 +++++++++++++
 4 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/include/asm/dma-mapping.h b/arch/arm/include/asm/dma-mapping.h
index bdd80ddbca34..b19af5c55bee 100644
--- a/arch/arm/include/asm/dma-mapping.h
+++ b/arch/arm/include/asm/dma-mapping.h
@@ -8,6 +8,7 @@
 #include <linux/scatterlist.h>
 #include <linux/dma-debug.h>
 
+#include <asm/dma.h>
 #include <asm/memory.h>
 
 #include <xen/xen.h>
@@ -18,7 +19,7 @@ extern const struct dma_map_ops arm_coherent_dma_ops;
 
 static inline const struct dma_map_ops *get_arch_dma_ops(struct bus_type *bus)
 {
-	if (IS_ENABLED(CONFIG_MMU) && !IS_ENABLED(CONFIG_ARM_LPAE))
+	if (IS_ENABLED(CONFIG_MMU) && !arm_dma_direct)
 		return &arm_dma_ops;
 	return NULL;
 }
diff --git a/arch/arm/include/asm/dma.h b/arch/arm/include/asm/dma.h
index a81dda65c576..d386719c53cd 100644
--- a/arch/arm/include/asm/dma.h
+++ b/arch/arm/include/asm/dma.h
@@ -14,6 +14,8 @@
 		(PAGE_OFFSET + arm_dma_zone_size) : 0xffffffffUL; })
 #endif
 
+extern bool arm_dma_direct __ro_after_init;
+
 #ifdef CONFIG_ISA_DMA_API
 /*
  * This is used to support drivers written for the x86 ISA DMA API.
diff --git a/arch/arm/mm/dma-mapping.c b/arch/arm/mm/dma-mapping.c
index 13ef9f131975..172eea707cf7 100644
--- a/arch/arm/mm/dma-mapping.c
+++ b/arch/arm/mm/dma-mapping.c
@@ -27,6 +27,7 @@
 #include <linux/sizes.h>
 #include <linux/cma.h>
 
+#include <asm/dma.h>
 #include <asm/memory.h>
 #include <asm/highmem.h>
 #include <asm/cacheflush.h>
@@ -1100,14 +1101,7 @@ int arm_dma_supported(struct device *dev, u64 mask)
 
 static const struct dma_map_ops *arm_get_dma_map_ops(bool coherent)
 {
-	/*
-	 * When CONFIG_ARM_LPAE is set, physical address can extend above
-	 * 32-bits, which then can't be addressed by devices that only support
-	 * 32-bit DMA.
-	 * Use the generic dma-direct / swiotlb ops code in that case, as that
-	 * handles bounce buffering for us.
-	 */
-	if (IS_ENABLED(CONFIG_ARM_LPAE))
+	if (arm_dma_direct)
 		return NULL;
 	return coherent ? &arm_coherent_dma_ops : &arm_dma_ops;
 }
diff --git a/arch/arm/mm/init.c b/arch/arm/mm/init.c
index b4be3baa83d4..0a63379a4d1a 100644
--- a/arch/arm/mm/init.c
+++ b/arch/arm/mm/init.c
@@ -105,8 +105,21 @@ static void __init arm_adjust_dma_zone(unsigned long *size, unsigned long *hole,
 }
 #endif
 
+bool arm_dma_direct __ro_after_init;
+EXPORT_SYMBOL(arm_dma_direct);
+
 void __init setup_dma_zone(const struct machine_desc *mdesc)
 {
+	/*
+	 * When CONFIG_ARM_LPAE is set, physical address can extend above
+	 * 32-bits, which then can't be addressed by devices that only support
+	 * 32-bit DMA.
+	 * Use the generic dma-direct / swiotlb ops code in that case, as that
+	 * handles bounce buffering for us.
+	 */
+	if (IS_ENABLED(CONFIG_ARM_LPAE))
+		arm_dma_direct = true;
+
 #ifdef CONFIG_ZONE_DMA
 	if (mdesc->dma_zone_size) {
 		arm_dma_zone_size = mdesc->dma_zone_size;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
