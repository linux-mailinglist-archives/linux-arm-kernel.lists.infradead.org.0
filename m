Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE16B75F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qNSOoEE2fgsowrzIcTlt/sKXBAQ3CvLnq0s6aRXOmc=; b=Un3BFsn8im8c8z
	MZNG5/L1Ival0zgiQ8wO04Lo3NKVZuMPoolYEdrUjJqMQ4DZ1nP7vbMhfifqrEBEFc1rgn1+bWhfc
	x+3rbYl5UDOYFPdA3a14YaED+3I9Sa/dagNeLNtDA/mao4sdfLUtDuH8xPcdwxKzCdTWM9ADZYjBS
	/NEUu4t9RhovuMQ0n736ZX+/eZVEgXtbxlr1JBVxOXGJ/5OhQbuDdpqNDujFlrKz5BACrcOuYfwxY
	mBLYGTZHWPOBWLkwIT+xL5HzMT7YfEybVaytjBgkhxMGDCPBfgvuwFxCFnVlx07bZZ0J5JI6cc4uO
	sC1i8UgoSpmkbn2JJOyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsX3-0002kk-FQ; Thu, 19 Sep 2019 09:15:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsSw-0006rG-S3; Thu, 19 Sep 2019 09:11:08 +0000
X-UUID: 7a8ebbec2ab64266a49b375956acc607-20190919
X-UUID: 7a8ebbec2ab64266a49b375956acc607-20190919
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 706733374; Thu, 19 Sep 2019 01:10:54 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 02:10:54 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 17:10:51 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Sep 2019 17:10:51 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 09/11] phy: phy-mtk-tphy: remove unused u3phya_ref clock
Date: Thu, 19 Sep 2019 17:10:40 +0800
Message-ID: <1568884242-22775-9-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1568884242-22775-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1568884242-22775-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6E24C2DE8D8E46D819EAD1AB4C1ED7FC08E567A4E0C58AA7A7D1CFA4E24549D52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_021106_971825_139892F8 
X-CRM114-Status: GOOD (  12.60  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The u3phya_ref clock is already moved into sub-node, and
renamed as ref clock, no used anymore now, so remove it,
this can avoid confusion when support new platforms

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v2~3: no changes
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index 96c62e3a3300..c6424fd2a06d 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -312,8 +312,6 @@ struct mtk_phy_instance {
 struct mtk_tphy {
 	struct device *dev;
 	void __iomem *sif_base;	/* only shared sif */
-	/* deprecated, use @ref_clk instead in phy instance */
-	struct clk *u3phya_ref;	/* reference clock of usb3 anolog phy */
 	const struct mtk_phy_pdata *pdata;
 	struct mtk_phy_instance **phys;
 	int nphys;
@@ -921,12 +919,6 @@ static int mtk_phy_init(struct phy *phy)
 	struct mtk_tphy *tphy = dev_get_drvdata(phy->dev.parent);
 	int ret;
 
-	ret = clk_prepare_enable(tphy->u3phya_ref);
-	if (ret) {
-		dev_err(tphy->dev, "failed to enable u3phya_ref\n");
-		return ret;
-	}
-
 	ret = clk_prepare_enable(instance->ref_clk);
 	if (ret) {
 		dev_err(tphy->dev, "failed to enable ref_clk\n");
@@ -992,7 +984,6 @@ static int mtk_phy_exit(struct phy *phy)
 		u2_phy_instance_exit(tphy, instance);
 
 	clk_disable_unprepare(instance->ref_clk);
-	clk_disable_unprepare(tphy->u3phya_ref);
 	return 0;
 }
 
@@ -1127,11 +1118,6 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 		}
 	}
 
-	/* it's deprecated, make it optional for backward compatibility */
-	tphy->u3phya_ref = devm_clk_get_optional(dev, "u3phya_ref");
-	if (IS_ERR(tphy->u3phya_ref))
-		return PTR_ERR(tphy->u3phya_ref);
-
 	tphy->src_ref_clk = U3P_REF_CLK;
 	tphy->src_coef = U3P_SLEW_RATE_COEF;
 	/* update parameters of slew rate calibrate if exist */
@@ -1178,10 +1164,6 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 		phy_set_drvdata(phy, instance);
 		port++;
 
-		/* if deprecated clock is provided, ignore instance's one */
-		if (tphy->u3phya_ref)
-			continue;
-
 		instance->ref_clk = devm_clk_get_optional(&phy->dev, "ref");
 		if (IS_ERR(instance->ref_clk)) {
 			dev_err(dev, "failed to get ref_clk(id-%d)\n", port);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
