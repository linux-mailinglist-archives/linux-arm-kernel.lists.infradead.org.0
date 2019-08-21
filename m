Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE9C97BA4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:57:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnVC4aRqO//BmsSVbN3dzseXz+IGuHyCPQBSa1dN9gM=; b=IEkOmi1OsM68Yu
	kmCMP0IX9EaMxt4IBLVurBzmDf7uv3esJ4/eY4dacSU2lVffuVSNRJjRWjYt4QkFBnHRzuTaAztT/
	a1CbI47w8+8Gu1iFdkXfwZnwcNKcd9snppnTxRGHpsGic5MoUPrPIZPJRO4d/nrXv1lei4ZGsZsFk
	18fbG/iT3J6mKiivzc/NLCeT+KIvRdI1Z7VuZYT82mhwYQJ/qm0vD66M+4Kv5P+BPLnHhgRSTc/eL
	Tb2R4inzARPihkp7GeZ9XAtMyaCRuIYjvoKv99emWXhoe0gcZitq4um142Rw7i2SGMT2QmuFgcuxt
	dn6pWqGF9l4mkYkakUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0R6u-0007E0-KH; Wed, 21 Aug 2019 13:57:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0R5F-0005TO-BA; Wed, 21 Aug 2019 13:55:30 +0000
X-UUID: 01b1c3b5bb624a978359a612894ded86-20190821
X-UUID: 01b1c3b5bb624a978359a612894ded86-20190821
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1108658733; Wed, 21 Aug 2019 05:54:40 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 06:54:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 21:54:38 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 21 Aug 2019 21:54:36 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v10 04/23] memory: mtk-smi: Use a struct for the platform data
 for smi-common
Date: Wed, 21 Aug 2019 21:53:07 +0800
Message-ID: <1566395606-7975-5-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_065529_394949_565108A2 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

Use a struct as the platform special data instead of the enumeration.

Also there is a minor change that moving the position of
"enum mtk_smi_gen" definition, this is because we expect define
"struct mtk_smi_common_plat" before it is referred.

This is a preparing patch for mt8183.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/memory/mtk-smi.c | 35 ++++++++++++++++++++++++-----------
 1 file changed, 24 insertions(+), 11 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 14f70cf..47df7d0 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -41,6 +41,15 @@
 #define SMI_LARB_NONSEC_CON(id)	(0x380 + ((id) * 4))
 #define F_MMU_EN		BIT(0)
 
+enum mtk_smi_gen {
+	MTK_SMI_GEN1,
+	MTK_SMI_GEN2
+};
+
+struct mtk_smi_common_plat {
+	enum mtk_smi_gen gen;
+};
+
 struct mtk_smi_larb_gen {
 	bool need_larbid;
 	int port_in_larb[MTK_LARB_NR_MAX + 1];
@@ -53,6 +62,8 @@ struct mtk_smi {
 	struct clk			*clk_apb, *clk_smi;
 	struct clk			*clk_async; /*only needed by mt2701*/
 	void __iomem			*smi_ao_base;
+
+	const struct mtk_smi_common_plat *plat;
 };
 
 struct mtk_smi_larb { /* larb: local arbiter */
@@ -64,11 +75,6 @@ struct mtk_smi_larb { /* larb: local arbiter */
 	u32				*mmu;
 };
 
-enum mtk_smi_gen {
-	MTK_SMI_GEN1,
-	MTK_SMI_GEN2
-};
-
 static int mtk_smi_enable(const struct mtk_smi *smi)
 {
 	int ret;
@@ -343,18 +349,26 @@ static int mtk_smi_larb_remove(struct platform_device *pdev)
 	}
 };
 
+static const struct mtk_smi_common_plat mtk_smi_common_gen1 = {
+	.gen = MTK_SMI_GEN1,
+};
+
+static const struct mtk_smi_common_plat mtk_smi_common_gen2 = {
+	.gen = MTK_SMI_GEN2,
+};
+
 static const struct of_device_id mtk_smi_common_of_ids[] = {
 	{
 		.compatible = "mediatek,mt8173-smi-common",
-		.data = (void *)MTK_SMI_GEN2
+		.data = &mtk_smi_common_gen2,
 	},
 	{
 		.compatible = "mediatek,mt2701-smi-common",
-		.data = (void *)MTK_SMI_GEN1
+		.data = &mtk_smi_common_gen1,
 	},
 	{
 		.compatible = "mediatek,mt2712-smi-common",
-		.data = (void *)MTK_SMI_GEN2
+		.data = &mtk_smi_common_gen2,
 	},
 	{}
 };
@@ -364,13 +378,13 @@ static int mtk_smi_common_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct mtk_smi *common;
 	struct resource *res;
-	enum mtk_smi_gen smi_gen;
 	int ret;
 
 	common = devm_kzalloc(dev, sizeof(*common), GFP_KERNEL);
 	if (!common)
 		return -ENOMEM;
 	common->dev = dev;
+	common->plat = of_device_get_match_data(dev);
 
 	common->clk_apb = devm_clk_get(dev, "apb");
 	if (IS_ERR(common->clk_apb))
@@ -386,8 +400,7 @@ static int mtk_smi_common_probe(struct platform_device *pdev)
 	 * clock into emi clock domain, but for mtk smi gen2, there's no smi ao
 	 * base.
 	 */
-	smi_gen = (enum mtk_smi_gen)of_device_get_match_data(dev);
-	if (smi_gen == MTK_SMI_GEN1) {
+	if (common->plat->gen == MTK_SMI_GEN1) {
 		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 		common->smi_ao_base = devm_ioremap_resource(dev, res);
 		if (IS_ERR(common->smi_ao_base))
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
