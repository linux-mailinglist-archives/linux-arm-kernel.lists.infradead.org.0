Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F15CC2438
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 17:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mXw+RXFoV0Dfgp4O0AvTp2KNI/9Y6OC1LVt40qG3rFE=; b=tuBtqEl1ZMq8Nx
	ddHn77IhklKfOGBzaPRHarz6nmLNAf6RPymuV+XpxYIvv83iKJY0bQea4B6F6RZRZ4yybaF2SRsgD
	ul2tXZOqXKGMPQ3JzNt8/XYBFa0ztgm7eYhtUfz46/4mb4FaBZUegDAj+WiCSBuidNlFHi5tv0JXu
	GDRdbwkUMXDOPEpdEuBP0TicM15jOIJRqXzx/iGU+iTGDe2KuULCX577gJC5V5q505wL6uif7Lw2K
	L6gt1xVa/kaPXPGRn5/YlDYtg5YoYcpyCKyNxOGnwrurJGpfM+Gd4ELGPDNjFZs7lvLVikO6ITn2r
	5yLuUa4YSv3k0s0ZCMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iExYa-0004Bi-5W; Mon, 30 Sep 2019 15:25:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iExYH-00044e-SI
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 15:25:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80D891000;
 Mon, 30 Sep 2019 08:25:29 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3E29F3F706;
 Mon, 30 Sep 2019 08:25:28 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh@kernel.org,
	tomeu.vizoso@collabora.com,
	sudeep.holla@arm.com
Subject: [PATCH 2/2] drm/panfrost: Use coherent pagetable walk on Juno
Date: Mon, 30 Sep 2019 16:24:59 +0100
Message-Id: <1e499f85220b735849126171e64ebdd1da0302ce.1569856049.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
References: <88dc6386929b3dcd7a65ba8063628c62b66b330c.1569856049.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_082529_995092_11F5E825 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com, liviu.dudau@arm.com,
 dri-devel@lists.freedesktop.org, steven.price@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Although going full "dma-coherent" ends badly due to GEM objects still
being forcibly mapped non-cacheable, we can at least take advantage of
Juno's ACE-lite integration to skip cache maintenance for pagetables.

CC: Rob Herring <robh@kernel.org>
CC: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

This isn't really meant as a series, I'm just sending it together
with patch #1 for context.

 drivers/gpu/drm/panfrost/panfrost_mmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_mmu.c b/drivers/gpu/drm/panfrost/panfrost_mmu.c
index bdd990568476..560439f63277 100644
--- a/drivers/gpu/drm/panfrost/panfrost_mmu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_mmu.c
@@ -365,6 +365,9 @@ int panfrost_mmu_pgtable_alloc(struct panfrost_file_priv *priv)
 		.iommu_dev	= pfdev->dev,
 	};
 
+	if (of_device_is_compatible(pfdev->dev->of_node, "arm,juno-mali"))
+		pfdev->mmu->pgtbl_cfg.coherent_walk = true;
+
 	mmu->pgtbl_ops = alloc_io_pgtable_ops(ARM_MALI_LPAE, &mmu->pgtbl_cfg,
 					      priv);
 	if (!mmu->pgtbl_ops)
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
