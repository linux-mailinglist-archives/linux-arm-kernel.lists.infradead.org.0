Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A8BCFBB8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 15:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qaXSZHggaw96gzRqxVMT9uonAnkaR/CTeBlhndN+5Co=; b=o2r/j/pGjTPLkU
	ijzkImahaM5Gv23Jx2MtUyb1s0eTMfkyiAhAje9eUYYjmfw7876YYCS1PRn31noBn70lHdx2BSigr
	uWp2aaPN5WE8xTQ7kMC/wjtsEn2P0YdE2XiwjticyU5lCcwkH+YYBYlqhD1BFhM2GX9sEzSl0r9os
	clDV6fS8T41mCgcFnhicuSakJwUb+SeHaeEQvwtYTH3NS+1aNhA5WBY3UAShECi6uGGHRTQuX7BuY
	FLoqjmJEjZT4AoB+9rxp+XgeCZRkJ2ElXLm2t7Pe7xnOEPFSDTRVvjCukWNOXYDQkMEEH4AADchjM
	LjoYE7q8hiwxh+uOiaxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHq13-0007sS-4M; Tue, 08 Oct 2019 13:59:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHq0v-0007rZ-JZ; Tue, 08 Oct 2019 13:58:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id B380B28BFB9
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] iommu/rockchip: Don't loop until failure to count interrupts
Date: Tue,  8 Oct 2019 15:58:43 +0200
Message-Id: <20191008135843.30640-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_065857_777815_FB3DB334 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: heiko@sntech.de, Joerg Roedel <joro@8bytes.org>, dianders@chromium.org,
 linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 mka@chromium.org, groeck@chromium.org, kernel@collabora.com,
 bleung@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As platform_get_irq() now prints an error when the interrupt does not
exist, counting interrupts by looping until failure causes the printing
of scary messages like:

 rk_iommu ff924000.iommu: IRQ index 1 not found
 rk_iommu ff914000.iommu: IRQ index 1 not found
 rk_iommu ff903f00.iommu: IRQ index 1 not found
 rk_iommu ff8f3f00.iommu: IRQ index 1 not found
 rk_iommu ff650800.iommu: IRQ index 1 not found

Fix this by using the platform_irq_count() helper to avoid touching
non-existent interrupts.

Fixes: 7723f4c5ecdb8d83 ("driver core: platform: Add an error message to platform_get_irq*()")
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/iommu/rockchip-iommu.c | 35 +++++++++++++++++++++++-----------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 26290f310f90..8c6318bd1b37 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1136,7 +1136,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	struct rk_iommu *iommu;
 	struct resource *res;
 	int num_res = pdev->num_resources;
-	int err, i, irq;
+	int err, i, irq, num_irqs;
 
 	iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
 	if (!iommu)
@@ -1219,20 +1219,28 @@ static int rk_iommu_probe(struct platform_device *pdev)
 
 	pm_runtime_enable(dev);
 
-	i = 0;
-	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO) {
-		if (irq < 0)
-			return irq;
+	num_irqs = platform_irq_count(pdev);
+	if (num_irqs < 0) {
+		err = num_irqs;
+		goto err_disable_pm_runtime;
+	}
+
+	for (i = 0; i < num_irqs; i++) {
+		irq = platform_get_irq(pdev, i);
+		if (irq < 0) {
+			err = irq;
+			goto err_disable_pm_runtime;
+		}
 
 		err = devm_request_irq(iommu->dev, irq, rk_iommu_irq,
 				       IRQF_SHARED, dev_name(dev), iommu);
-		if (err) {
-			pm_runtime_disable(dev);
-			goto err_remove_sysfs;
-		}
+		if (err)
+			goto err_disable_pm_runtime;
 	}
 
 	return 0;
+err_disable_pm_runtime:
+	pm_runtime_disable(dev);
 err_remove_sysfs:
 	iommu_device_sysfs_remove(&iommu->iommu);
 err_put_group:
@@ -1245,10 +1253,15 @@ static int rk_iommu_probe(struct platform_device *pdev)
 static void rk_iommu_shutdown(struct platform_device *pdev)
 {
 	struct rk_iommu *iommu = platform_get_drvdata(pdev);
-	int i = 0, irq;
+	int i, irq, num_irqs;
 
-	while ((irq = platform_get_irq(pdev, i++)) != -ENXIO)
+	num_irqs = platform_irq_count(pdev);
+	for (i = 0; i < num_irqs; i++) {
+		irq = platform_get_irq(pdev, i);
+		if (irq < 0)
+			continue;
 		devm_free_irq(iommu->dev, irq, iommu);
+	}
 
 	pm_runtime_force_suspend(&pdev->dev);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
