Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DA53B4ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfAQ406/NzpkVNwxMaoZf3FT2m5ZEQO4XsBuKE70Wv0=; b=b7aTCEJ4Mhd+W4
	nqhPkltpuoXQ5eLJREbUNC8FVRbSZLT1Bp64wfsrSwWMHXwgQYVDb5d17jwKJRCffIiU/FkWuyicQ
	uUyqBlSyi/QTbVyczlIvlZSF5foQXKR3Bz0S/uOF30zBjn9o0mY9EoYIvB5e3scgTu6dJuJKwcO2m
	dVjdRhY2trEUn5URxbdZKPQWDZ7d8QRj2IW+T7Pb2FFYyBwmf/lHZH/j4LWUL9p4TkkhUp7ooi/AI
	S2xCs0vIkhvpegQJFfxCk6UCJnEcBgYibS954rtasCQjlc4/N/suCD/D5wfePq27httXxwzEYVdTd
	kNIIsYQpZ5HsZb+rEzEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJNH-0005Qz-7S; Mon, 10 Jun 2019 12:26:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJIx-0000Xi-S0; Mon, 10 Jun 2019 12:21:42 +0000
X-UUID: 5a9668af7aaa47cf80b4559b5300b88d-20190610
X-UUID: 5a9668af7aaa47cf80b4559b5300b88d-20190610
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 773864076; Mon, 10 Jun 2019 04:21:38 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:21:36 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:21:28 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:21:27 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 16/21] memory: mtk-smi: Add bus_sel for mt8183
Date: Mon, 10 Jun 2019 20:17:55 +0800
Message-ID: <1560169080-27134-17-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_052139_957623_24E52FBF 
X-CRM114-Status: GOOD (  14.43  )
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
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com, Will
 Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are 2 mmu cells in a M4U HW. we could adjust some larbs entering
mmu0 or mmu1 to balance the bandwidth via the smi-common register
SMI_BUS_SEL(0x220)(Each larb occupy 2 bits).

In mt8183, For better performance, we switch larb1/2/5/7 to enter
mmu1 while the others still keep enter mmu0.

In mt8173 and mt2712, we don't get the performance issue,
Keep its default value(0x0), that means all the larbs enter mmu0.

Note: smi gen1(mt2701/mt7623) don't have this bus_sel.

And, the base of smi-common is completely different with smi_ao_base
of gen1, thus I add new variable for that.

CC: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/memory/mtk-smi.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 9790801..08cf40d 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -49,6 +49,12 @@
 #define SMI_LARB_NONSEC_CON(id)	(0x380 + ((id) * 4))
 #define F_MMU_EN		BIT(0)
 
+/* SMI COMMON */
+#define SMI_BUS_SEL			0x220
+#define SMI_BUS_LARB_SHIFT(larbid)	((larbid) << 1)
+/* All are MMU0 defaultly. Only specialize mmu1 here. */
+#define F_MMU1_LARB(larbid)		(0x1 << SMI_BUS_LARB_SHIFT(larbid))
+
 enum mtk_smi_gen {
 	MTK_SMI_GEN1,
 	MTK_SMI_GEN2
@@ -57,6 +63,7 @@ enum mtk_smi_gen {
 struct mtk_smi_common_plat {
 	enum mtk_smi_gen gen;
 	bool             has_gals;
+	u32              bus_sel; /* Balance some larbs to enter mmu0 or mmu1 */
 };
 
 struct mtk_smi_larb_gen {
@@ -72,8 +79,8 @@ struct mtk_smi {
 	struct clk			*clk_apb, *clk_smi;
 	struct clk			*clk_gals0, *clk_gals1;
 	struct clk			*clk_async; /*only needed by mt2701*/
-	void __iomem			*smi_ao_base;
-
+	void __iomem			*smi_ao_base; /* only for gen1 */
+	void __iomem			*base;	      /* only for gen2 */
 	const struct mtk_smi_common_plat *plat;
 };
 
@@ -410,6 +417,8 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 static const struct mtk_smi_common_plat mtk_smi_common_mt8183 = {
 	.gen      = MTK_SMI_GEN2,
 	.has_gals = true,
+	.bus_sel  = F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(5) |
+		    F_MMU1_LARB(7),
 };
 
 static const struct of_device_id mtk_smi_common_of_ids[] = {
@@ -482,6 +491,11 @@ static int mtk_smi_common_probe(struct platform_device *pdev)
 		ret = clk_prepare_enable(common->clk_async);
 		if (ret)
 			return ret;
+	} else {
+		res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+		common->base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(common->base))
+			return PTR_ERR(common->base);
 	}
 	pm_runtime_enable(dev);
 	platform_set_drvdata(pdev, common);
@@ -497,6 +511,7 @@ static int mtk_smi_common_remove(struct platform_device *pdev)
 static int __maybe_unused mtk_smi_common_resume(struct device *dev)
 {
 	struct mtk_smi *common = dev_get_drvdata(dev);
+	u32 bus_sel = common->plat->bus_sel;
 	int ret;
 
 	ret = mtk_smi_clk_enable(common);
@@ -504,6 +519,9 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
 		dev_err(common->dev, "Failed to enable clock(%d).\n", ret);
 		return ret;
 	}
+
+	if (common->plat->gen == MTK_SMI_GEN2 && bus_sel)
+		writel(bus_sel, common->base + SMI_BUS_SEL);
 	return 0;
 }
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
