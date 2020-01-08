Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702FA1338F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 03:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ox1V7c5q0ogNxrLCijenZUdejmKinwBqB8AzDaStiF4=; b=JB1BsGFU2GxoFa
	Zkvanvo5BqvBAZQvMWpTGAqNyugfOPWcTLOKcBo8NbIuY1c/6wGPbX0JW4q2ymhi2hqH+ff+ZgaxG
	F9gcfP131/sTbrSdohVQ6h6MZg8iZVDekHE6oTR2F/faiMQqrpGVmql/z9OxNvJOH07nrwotDw//g
	Ds1lrrPif4ZPtJFS/NldgcjlDb+LfBz4hx+IbMCe7xTI1PvdVD6TevgNgrqSD8hh0wwD/djsRJpkL
	BXCmsQ8N8ttJXY37J4s+dfJ2ROQJVQI+WMDGmHU29LaGW3vTNVuQS5QZwH/KLBVwWjTHV4oPoFwJA
	fxg7ykR0jWcgqvhp1fFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip0fx-0001QF-Gm; Wed, 08 Jan 2020 02:02:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip0ej-0000IY-8K; Wed, 08 Jan 2020 02:01:10 +0000
X-UUID: 3a4aca20dce245f2a759ad976b70f80a-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ftI9/CXYYeZK8CkETnDdr6DuAYoCT6uzVH5tO4lOoCo=; 
 b=rTQ5RrGphlYAEksOK66ZbzFzkYDKDi3J6oXAfArJVh2lezPp18Bc1wvR2nvdoecEFgD8Y5XuzGPkRxUJ7oFTJpVyyPlgTbUR6EuV5a3n4QXDfaE2dy3TGR6a1iEQ0lViqSv8qV0HJOoK7/Zpkj2u0Kulahn1RBMaalbjeIsAUpI=;
X-UUID: 3a4aca20dce245f2a759ad976b70f80a-20200107
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1717372374; Tue, 07 Jan 2020 18:01:02 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 17:53:07 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 09:51:21 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 Jan 2020 09:53:06 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH v5 09/11] phy: phy-mtk-tphy: remove unused u3phya_ref
 clock
Date: Wed, 8 Jan 2020 09:52:04 +0800
Message-ID: <1578448326-27455-9-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D56BD9CF87EF02FC9BE4F567128FB9BA7C3A1980633FF4F4E4127D6AFB5D67A52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_180109_321547_681CC08F 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
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
v2~v5: no changes
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
2.24.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
