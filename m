Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A04A1CBF5E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 10:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AA346QERwrSZxTIRt5qVIRzE2KuVKiDTNfIpkzNCVk0=; b=JLQFKqedcCLpZw
	HB3FY/j1uc0dnGOnrU6cNrgliGNZcgRqZQZlFy4jqyJ0CMwXq1apn2LIw6OvcTQC4+WLydvTRA4FM
	78DOBy4F7Kbfa5PHt4pu+ynF+/KB5fGWbjD2BazhliBt97BjSbAxGR0WEMNygkccN9SfrOliEI69H
	gyDCMhhh18gD6q/tRwKKUsufodXqMZ5drHqN9++BtgOtoWGRRfmLX7PDRBzAEmaHg1dxZCapMJVfX
	5Rz/ctajD8XfVDwdwOsXqrTJ2Oi0ZSuNAMqER/SPIXbCki09+UG8LHMIUghvA6UfXmirwAZ0Q0G60
	LzHCZlcTqgrrrgr302DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXLBr-0002M4-Cf; Sat, 09 May 2020 08:50:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXLBd-0002JJ-Bn; Sat, 09 May 2020 08:50:22 +0000
X-UUID: c01f8197553f49779a73c21ec85be0b5-20200509
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=rJbgq8ITfh8YPx5XAbA8/c/awoVfWnBoZ85bEXyGo1o=; 
 b=jCSC+JsNW1T/qCkLh/0rLz4pygd6XKpmh8XK4yKcn0zy/uT+x77s3DfFedGplWSToHenWd3Tzsf3ynA2uDaQKtovnhIh/N3tg8g6V8oszbnPTs5gA6GIq0aJuC4B4LnaUW/oZO0dEVQhdQ1ERiYMuCo3HQNwj6mKEIBCgyahKUk=;
X-UUID: c01f8197553f49779a73c21ec85be0b5-20200509
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1754864236; Sat, 09 May 2020 00:50:09 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 01:40:12 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 16:40:11 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 9 May 2020 16:40:10 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v3 4/7] iommu/mediatek: Move inv_sel_reg into the plat_data
Date: Sat, 9 May 2020 16:36:51 +0800
Message-ID: <20200509083654.5178-5-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200509083654.5178-1-chao.hao@mediatek.com>
References: <20200509083654.5178-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_015021_418227_88992226 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 Jun Yan <jun.yan@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For mt6779, MMU_INVLDT_SEL register's offset is changed from
0x38 to 0x2c, so we can put inv_sel_reg in the plat_data to
use it.
In addition, we renamed it to REG_MMU_INV_SEL_GEN1 and use it
before mt6779.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 9 ++++++---
 drivers/iommu/mtk_iommu.h | 1 +
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 9ede327a418d..d73de987f8be 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -37,7 +37,7 @@
 #define REG_MMU_INVLD_START_A			0x024
 #define REG_MMU_INVLD_END_A			0x028
 
-#define REG_MMU_INV_SEL				0x038
+#define REG_MMU_INV_SEL_GEN1			0x038
 #define F_INVLD_EN0				BIT(0)
 #define F_INVLD_EN1				BIT(1)
 
@@ -167,7 +167,7 @@ static void mtk_iommu_tlb_flush_all(void *cookie)
 
 	for_each_m4u(data) {
 		writel_relaxed(F_INVLD_EN1 | F_INVLD_EN0,
-			       data->base + REG_MMU_INV_SEL);
+			       data->base + data->plat_data->inv_sel_reg);
 		writel_relaxed(F_ALL_INVLD, data->base + REG_MMU_INVALIDATE);
 		wmb(); /* Make sure the tlb flush all done */
 	}
@@ -184,7 +184,7 @@ static void mtk_iommu_tlb_flush_range_sync(unsigned long iova, size_t size,
 	for_each_m4u(data) {
 		spin_lock_irqsave(&data->tlb_lock, flags);
 		writel_relaxed(F_INVLD_EN1 | F_INVLD_EN0,
-			       data->base + REG_MMU_INV_SEL);
+			       data->base + data->plat_data->inv_sel_reg);
 
 		writel_relaxed(iova, data->base + REG_MMU_INVLD_START_A);
 		writel_relaxed(iova + size - 1,
@@ -784,6 +784,7 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 	.has_4gb_mode = true,
 	.has_bclk     = true,
 	.has_vld_pa_rng   = true,
+	.inv_sel_reg = REG_MMU_INV_SEL_GEN1,
 	.larbid_remap = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
 };
 
@@ -792,12 +793,14 @@ static const struct mtk_iommu_plat_data mt8173_data = {
 	.has_4gb_mode = true,
 	.has_bclk     = true,
 	.reset_axi    = true,
+	.inv_sel_reg = REG_MMU_INV_SEL_GEN1,
 	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
 };
 
 static const struct mtk_iommu_plat_data mt8183_data = {
 	.m4u_plat     = M4U_MT8183,
 	.reset_axi    = true,
+	.inv_sel_reg = REG_MMU_INV_SEL_GEN1,
 	.larbid_remap = {0, 4, 5, 6, 7, 2, 3, 1},
 };
 
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index d711ac630037..afd7a2de5c1e 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -43,6 +43,7 @@ struct mtk_iommu_plat_data {
 	bool		    has_misc_ctrl;
 	bool                has_vld_pa_rng;
 	bool                reset_axi;
+	u32                 inv_sel_reg;
 	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
 };
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
