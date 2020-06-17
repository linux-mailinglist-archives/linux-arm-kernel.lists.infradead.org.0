Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D9B1FC485
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 05:12:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aajBIHPEBJhhwwqipUecPqepncKZ3zJUNj3sdPCwkGY=; b=sQemgUnyR3Zfc3
	dnC/2mOfqQVacpdp2vjT4tVIGqB4HKyuK1Iegu1FyQfblX+E+BmQtfma5IOYZy+7BgnX+c/t5KaKs
	jq25NTjnKhRBbpMm9dDDXXFq/HX20zx8r3qdsxFYG643qGuRUDXoJ2jedGe3tS5dWjpHY4J65axlB
	6iuQdKyKzmSlqzMGvk3wMSPskoQiJssNWdxk/e0vSrMzjvRvAHj8kd30kGYWwU/Ye+SXfJr9vVRHK
	cUYpncGSBibaNjvxrvRVrVnZ1pu7oxSOHwyXeojDLqbPfmp+u4fl8iTR67zh4aChJnvUN1PtWe0UX
	whNJ9jo/s6Ev0YB73bFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOV3-0000DO-6Z; Wed, 17 Jun 2020 03:12:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOTs-0007lK-F6; Wed, 17 Jun 2020 03:11:18 +0000
X-UUID: 152ea09bf6fa46f3b7f17b282350f3eb-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=p1YWGhIu0LX6gKqSZSLL3Y/0TgVjX18Sd7QTQRcQuR0=; 
 b=OuON0o9XhkhPrpYttMrhFCwHIbiZIg6urG29pPCLG05zw1/p896FCpRqIWQ9M3uIOxVnc0IJr/EbPsdZuAWymekSSolKsH8kFWusHnTP/e/qnBl/Vom40sCTNcZr64ZNUBw0sC+TIv8aN9Bb7X8GBATGkPMRqLYf0FEY4VRt/gE=;
X-UUID: 152ea09bf6fa46f3b7f17b282350f3eb-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 504023670; Tue, 16 Jun 2020 19:11:11 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:01:07 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 11:01:03 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 11:00:57 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v4 3/7] iommu/mediatek: Set MISC_CTRL register
Date: Wed, 17 Jun 2020 11:00:25 +0800
Message-ID: <20200617030029.4082-4-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200617030029.4082-1-chao.hao@mediatek.com>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_201116_541752_803AD28D 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add F_MMU_IN_ORDER_WR_EN definition in MISC_CTRL.
In order to improve performance, we always disable STANDARD_AXI_MODE
and IN_ORDER_WR_EN in MISC_CTRL.

Change since v3:
1. Rename Disable STANDARD_AXI_MODE in MISC_CTRL to Set MISC_CTRL register
2. Add F_MMU_IN_DRDER_WR_EN definition in MISC_CTRL
       We need to disable in_order_write to improve performance

Cc: Yong Wu <yong.wu@mediatek.com>
Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 11 +++++++++++
 drivers/iommu/mtk_iommu.h |  1 +
 2 files changed, 12 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 88d3df5b91c2..239d2cdbbc9f 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -42,6 +42,9 @@
 #define F_INVLD_EN1				BIT(1)
 
 #define REG_MMU_MISC_CTRL			0x048
+#define F_MMU_IN_ORDER_WR_EN			(BIT(1) | BIT(17))
+#define F_MMU_STANDARD_AXI_MODE_BIT		(BIT(3) | BIT(19))
+
 #define REG_MMU_DCM_DIS				0x050
 
 #define REG_MMU_CTRL_REG			0x110
@@ -578,6 +581,14 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		writel_relaxed(0, data->base + REG_MMU_MISC_CTRL);
 	}
 
+	if (data->plat_data->has_misc_ctrl) {
+		/* For mm_iommu, it can improve performance by the setting */
+		regval = readl_relaxed(data->base + REG_MMU_MISC_CTRL);
+		regval &= ~F_MMU_STANDARD_AXI_MODE_BIT;
+		regval &= ~F_MMU_IN_ORDER_WR_EN;
+		writel_relaxed(regval, data->base + REG_MMU_MISC_CTRL);
+	}
+
 	if (devm_request_irq(data->dev, data->irq, mtk_iommu_isr, 0,
 			     dev_name(data->dev), (void *)data)) {
 		writel_relaxed(0, data->base + REG_MMU_PT_BASE_ADDR);
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 1b6ea839b92c..d711ac630037 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -40,6 +40,7 @@ struct mtk_iommu_plat_data {
 
 	/* HW will use the EMI clock if there isn't the "bclk". */
 	bool                has_bclk;
+	bool		    has_misc_ctrl;
 	bool                has_vld_pa_rng;
 	bool                reset_axi;
 	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
