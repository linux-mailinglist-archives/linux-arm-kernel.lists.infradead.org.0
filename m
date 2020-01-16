Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC3613EE18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJWJARNoYBHj2NNBOLClr3OGrmCYG/IxpB2pcPYHFYA=; b=BoKLjb1zxpIz6u
	hbno9Cqck7kOv2UPtqynNsgGO56ZhgjAF9tAgKB1k6upg/imcbdfkGgp6wNpgBeSBhEp2NAB3WL9Y
	tH4AwEkToD2xiq/k0YdPajOzIsj25DPuJvb+L5kAt/LThmPZN0YaLyZ7r0mpFqLSG6XLHNAF70xTZ
	rXTUZFWI1bhXJLFhDYZH8oqOD2NgRuA9aVFEPOIzwJTOG1o7shdPhiA8q9iHYjId8OC2RBV/F410Y
	rCq2jeQShjnwOFEhtUqWtQiKQrPDrQzreSzTo3FVPSNw/5xRwyY3i8k4LsYaVZsENU1Bc2Hs4DQT8
	P2QAwTXJ8u8CUluJCKCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Xv-0004ub-Hk; Thu, 16 Jan 2020 18:07:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8x4-0006KJ-Mf; Thu, 16 Jan 2020 17:29:05 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39659246FC;
 Thu, 16 Jan 2020 17:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195742;
 bh=7VfQO9ZHJ8yQoCe1ayEZQ4PCtEclkhVMbtwss1+KNpg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=unL8YjmuExZMASV3330PgDjwSSRjUpYojhHvxSFiZaT/UMq5Y/5D1umLByPSvEJ41
 GIlqhA806ODCjI+KNZIIUwkKO4hxWwZEjQMtreTOpZ+Mio7GHa2zLgjJMXSv1ktUI1
 Q374bYQptw5AlcmsgMdyY6OleHyFZ7WYYzmOWD+w=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 277/371] iommu/mediatek: Fix iova_to_phys PA
 start for 4GB mode
Date: Thu, 16 Jan 2020 12:22:29 -0500
Message-Id: <20200116172403.18149-220-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092902_809284_C8BE0765 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yong Wu <yong.wu@mediatek.com>

[ Upstream commit 76ce65464fcd2c21db84391572b7938b716aceb0 ]

In M4U 4GB mode, the physical address is remapped as below:

CPU Physical address:

====================

0      1G       2G     3G       4G     5G
|---A---|---B---|---C---|---D---|---E---|
+--I/O--+------------Memory-------------+

IOMMU output physical address:
 =============================

                                4G      5G     6G      7G      8G
                                |---E---|---B---|---C---|---D---|
                                +------------Memory-------------+

The Region 'A'(I/O) can not be mapped by M4U; For Region 'B'/'C'/'D', the
bit32 of the CPU physical address always is needed to set, and for Region
'E', the CPU physical address keep as is. something looks like this:
CPU PA         ->    M4U OUTPUT PA
0x4000_0000          0x1_4000_0000 (Add bit32)
0x8000_0000          0x1_8000_0000 ...
0xc000_0000          0x1_c000_0000 ...
0x1_0000_0000        0x1_0000_0000 (No change)

Additionally, the iommu consumers always use the CPU phyiscal address.

The PA in the iova_to_phys that is got from v7s always is u32, But
from the CPU point of view, PA only need add BIT(32) when PA < 0x4000_0000.

Fixes: 30e2fccf9512 ("iommu/mediatek: Enlarge the validate PA range
for 4GB mode")
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/iommu/mtk_iommu.c | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index c30f62700431..0f99e95a1a73 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -115,6 +115,30 @@ struct mtk_iommu_domain {
 
 static struct iommu_ops mtk_iommu_ops;
 
+/*
+ * In M4U 4GB mode, the physical address is remapped as below:
+ *
+ * CPU Physical address:
+ * ====================
+ *
+ * 0      1G       2G     3G       4G     5G
+ * |---A---|---B---|---C---|---D---|---E---|
+ * +--I/O--+------------Memory-------------+
+ *
+ * IOMMU output physical address:
+ *  =============================
+ *
+ *                                 4G      5G     6G      7G      8G
+ *                                 |---E---|---B---|---C---|---D---|
+ *                                 +------------Memory-------------+
+ *
+ * The Region 'A'(I/O) can NOT be mapped by M4U; For Region 'B'/'C'/'D', the
+ * bit32 of the CPU physical address always is needed to set, and for Region
+ * 'E', the CPU physical address keep as is.
+ * Additionally, The iommu consumers always use the CPU phyiscal address.
+ */
+#define MTK_IOMMU_4GB_MODE_REMAP_BASE	 0x40000000
+
 static LIST_HEAD(m4ulist);	/* List all the M4U HWs */
 
 #define for_each_m4u(data)	list_for_each_entry(data, &m4ulist, list)
@@ -404,7 +428,7 @@ static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
 	pa = dom->iop->iova_to_phys(dom->iop, iova);
 	spin_unlock_irqrestore(&dom->pgtlock, flags);
 
-	if (data->enable_4GB)
+	if (data->enable_4GB && pa < MTK_IOMMU_4GB_MODE_REMAP_BASE)
 		pa |= BIT_ULL(32);
 
 	return pa;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
