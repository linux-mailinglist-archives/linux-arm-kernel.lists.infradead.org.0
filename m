Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9188497B81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=832nKmZ4Teb00SkqhYt83Cm47J6FTtLFNuB1lalRWg8=; b=VqF31QPQDddhI2
	6ajYr8wTyn88Dc81+MhXFaEmXhYsijSS09TquZfumyKyjdf8vB33rKcuuBk/aOn5CTi7mytVNI9Kn
	08EO8qectqAMLqvDwFiB1DWUtDq0cqBIlhFMasxZVS+iaguY58W6v8d1zf+ksS9KQjtC6GQObfvTD
	VcIB/DcrRURhTEfFtld0Bz377+9f4sRPBdtIeb00DCl57MZAjd8KefmVjBPpbqLbMy7h2WJ0LdJ30
	A1lIaNrJO5hXfipSGrMgZXYPNAqzPBg/x7zSUzgmoQ5WYu9nidDr4sAiGPjMakC92GiLwwfUBzUVt
	cU/f4btKhz+DbsC02Pyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0R5w-0006Fa-Fj; Wed, 21 Aug 2019 13:56:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0R4x-0004jX-92; Wed, 21 Aug 2019 13:55:13 +0000
X-UUID: 78231c2f250e446185ce9a7c670e4400-20190821
X-UUID: 78231c2f250e446185ce9a7c670e4400-20190821
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1832139270; Wed, 21 Aug 2019 05:54:52 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 06:54:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 21:54:50 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 21 Aug 2019 21:54:48 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v10 05/23] iommu/mediatek: Fix iova_to_phys PA start for 4GB
 mode
Date: Wed, 21 Aug 2019 21:53:08 +0800
Message-ID: <1566395606-7975-6-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_065511_794860_EF9E493D 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
 drivers/iommu/mtk_iommu.c | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index c6e6dc3..9ba2706 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -107,6 +107,30 @@ struct mtk_iommu_domain {
 
 static const struct iommu_ops mtk_iommu_ops;
 
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
@@ -401,7 +425,7 @@ static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
 	pa = dom->iop->iova_to_phys(dom->iop, iova);
 	spin_unlock_irqrestore(&dom->pgtlock, flags);
 
-	if (data->enable_4GB)
+	if (data->enable_4GB && pa < MTK_IOMMU_4GB_MODE_REMAP_BASE)
 		pa |= BIT_ULL(32);
 
 	return pa;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
