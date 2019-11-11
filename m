Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE7CF7D4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:55:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6PfwrK5I4rZ7hEuBv8FyporhHrGkxlB1WezqAdRWkbQ=; b=Inlc2Kz8M0YDQd
	/PSgxF/JL14j9ZGoe2kz6gDPZN8ScR4S0IV9tEcKy0UNGJ1gOLxQuJ7oxyHl0LzQaLWBmvlFgijfI
	Dm0kqMRwF0bl1r1DAKuUmgQhAQbxduaEsJdcaO1laIA9z7wRIMvKAxKgAyFD1/708oBXfUwVpBU0r
	4o1RAP6Tbk3dLJQTm9pSm7nY3dUftlSzLJwkL+I5kVYYwJv8Oz3OnT3+M6XON/TVTI8j5fDjsKt0R
	5oRnSoQ8al4WZPupsgibUs7xPv3LNqzni3uStIFYzqEzHXL4l0WKnWQSt1Ks5Ic4VXlcBfE98uBgf
	zqX4Dz0a50m9ZVr2YPkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEqg-00043Z-Px; Mon, 11 Nov 2019 18:55:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEqW-000433-7V; Mon, 11 Nov 2019 18:55:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 899DB1FB;
 Mon, 11 Nov 2019 10:55:27 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7C5DD3F52E;
 Mon, 11 Nov 2019 10:55:26 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: joro@8bytes.org
Subject: [PATCH] iommu/rockchip: Don't provoke WARN for harmless IRQs
Date: Mon, 11 Nov 2019 18:55:18 +0000
Message-Id: <82cba203551939399d219e4cb6c602315fd0c410.1573498518.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_105528_312488_4EB18A31 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: heiko@sntech.de, maz@kernel.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although we don't generally expect IRQs to fire for a suspended IOMMU,
there are certain situations (particularly with debug options) where
we might legitimately end up with the pm_runtime_get_if_in_use() call
from rk_iommu_irq() returning 0. Since this doesn't represent an actual
error, follow the other parts of the driver and save the WARN_ON()
condition for a genuine negative value. Even if we do have spurious
IRQs due to a wedged VOP asserting the shared line, it's not this
driver's job to try to second-guess the IRQ core to warn about that.

Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/iommu/rockchip-iommu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4dcbf68dfda4..bd7e9b1e40ac 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -527,7 +527,7 @@ static irqreturn_t rk_iommu_irq(int irq, void *dev_id)
 	int i, err;
 
 	err = pm_runtime_get_if_in_use(iommu->dev);
-	if (WARN_ON_ONCE(err <= 0))
+	if (!err || WARN_ON_ONCE(err < 0))
 		return ret;
 
 	if (WARN_ON(clk_bulk_enable(iommu->num_clocks, iommu->clocks)))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
