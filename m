Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777DD13137
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 17:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0CyvStoITAByyw8urrmNU257Y4jISpZRC8nt9NSZtw=; b=HmbeXKHccimVZ6
	mQxWgaH53+8TQ3bcnpaLu5K4nXsfhxHzn9dAtfOxLvXZg9Ig1aVQ1C6Bp6wgRmY1H/ln1HKTYRCKU
	C4+ya0+u7Dh5/UkqwpBPgERfOW7hMUKpCRwUxtaqO/SBkNHrFuA9U1A6yOCSDDgXKFaOAVQRlRK5p
	p5CZUH3K0SGSPJPJ4rULNNJI0YWoGgkM/uEtkn6pWzVSpBsMaDFkD3+PSVVXY3+Ipb0mn1Kr4Xeko
	JBSkB/3Sea/jRe6stYvC7VwLw+k7eShsbDixvwYc8PwpGS4tjdH57gGKmFr4Cg7I93F0430Lx9sze
	tYZ0E2+hpAeh1zW7DCdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaAe-0002bi-Ej; Fri, 03 May 2019 15:32:20 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaAN-0002T7-Nl
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 15:32:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5AB2D80D;
 Fri,  3 May 2019 08:31:59 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 17E963F557;
 Fri,  3 May 2019 08:31:57 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com
Subject: [PATCH 1/4] drm/panfrost: Set DMA masks earlier
Date: Fri,  3 May 2019 16:31:42 +0100
Message-Id: <64361b929a5c61d2ab9580262ecb3d369164cfcb.1556195258.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <cover.1556195258.git.robin.murphy@arm.com>
References: <cover.1556195258.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_083203_778956_F1B74DFB 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DMA masks need to be set correctly before any DMA API activity kicks
off, and the current point in panfrost_probe() is way too late in that
regard. since panfrost_mmu_init() has already set up a live address
space and DMA-mapped MMU pagetables. We can't set masks until we've
queried the appropriate value from MMU_FEATURES, but as soon as
reasonably possible after that should suffice.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 5 -----
 drivers/gpu/drm/panfrost/panfrost_gpu.c | 5 +++++
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index c06af78ab833..af0058ffc1e4 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -3,8 +3,6 @@
 /* Copyright 2019 Linaro, Ltd., Rob Herring <robh@kernel.org> */
 /* Copyright 2019 Collabora ltd. */
 
-#include <linux/bitfield.h>
-#include <linux/dma-mapping.h>
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/pagemap.h>
@@ -388,9 +386,6 @@ static int panfrost_probe(struct platform_device *pdev)
 		goto err_out0;
 	}
 
-	dma_set_mask_and_coherent(pfdev->dev,
-		DMA_BIT_MASK(FIELD_GET(0xff00, pfdev->features.mmu_features)));
-
 	err = panfrost_devfreq_init(pfdev);
 	if (err) {
 		dev_err(&pdev->dev, "Fatal error during devfreq init\n");
diff --git a/drivers/gpu/drm/panfrost/panfrost_gpu.c b/drivers/gpu/drm/panfrost/panfrost_gpu.c
index aceaf6e44a09..42511fc1fea0 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gpu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gpu.c
@@ -2,8 +2,10 @@
 /* Copyright 2018 Marty E. Plummer <hanetzer@startmail.com> */
 /* Copyright 2019 Linaro, Ltd., Rob Herring <robh@kernel.org> */
 /* Copyright 2019 Collabora ltd. */
+#include <linux/bitfield.h>
 #include <linux/bitmap.h>
 #include <linux/delay.h>
+#include <linux/dma-mapping.h>
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
@@ -332,6 +334,9 @@ int panfrost_gpu_init(struct panfrost_device *pfdev)
 
 	panfrost_gpu_init_features(pfdev);
 
+	dma_set_mask_and_coherent(pfdev->dev,
+		DMA_BIT_MASK(FIELD_GET(0xff00, pfdev->features.mmu_features)));
+
 	irq = platform_get_irq_byname(to_platform_device(pfdev->dev), "gpu");
 	if (irq <= 0)
 		return -ENODEV;
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
