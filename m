Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BD712AB8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNsX569qi263umyWB3TjXpdmVd8Ns/mKqZw42TMFaPA=; b=WWSCfFGeKTFE0S
	MzcJGIU1ccnkIF3ciyN4PeIVqWhqL6f3q38vozwFpI1bVB++T7Oz2pSolzsA2Yi5nU93f6J1rmmTN
	D2yNLX69aW4v7XfH51jSE+EUhz8vNOLBpWrm3yr04diaLpAaXpRuTSGuC4tvc42F5ZPTWdL3w3dJB
	OsX2gWCkmyMTgRfzjTrQIgwaHkGKMP1THr/Q6JLUURZOtX0FShTQ/phK3xz9bf8/AQ/G0oS2AZACb
	mnW27hgpHSNKaHvaHKTPIvP0pSkjUZpGMgfsVFfaiDOWlaWPrcyzsOd734aT3J6dTZJp3utOnHeqv
	XYbSbrLRYhtIZ45vf8yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUaB-0003I7-Ud; Fri, 03 May 2019 09:34:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUYs-0001LH-As; Fri, 03 May 2019 09:33:03 +0000
X-UUID: cca1d406c30147c4b7b1f2286389dcaa-20190503
X-UUID: cca1d406c30147c4b7b1f2286389dcaa-20190503
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1019782503; Fri, 03 May 2019 01:32:53 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 02:32:52 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 17:32:41 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 May 2019 17:32:41 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 10/10] rtc: Add support for the MediaTek MT6358 RTC
Date: Fri, 3 May 2019 17:31:17 +0800
Message-ID: <20190503093117.54830-11-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_023258_709041_2F9BC012 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ran Bi <ran.bi@mediatek.com>

This add support for the MediaTek MT6358 RTC. Driver using
compatible data to store different RTC_WRTGR address offset.

Signed-off-by: Ran Bi <ran.bi@mediatek.com>
---
 drivers/rtc/rtc-mt6397.c | 43 ++++++++++++++++++++++++++++++++--------
 1 file changed, 35 insertions(+), 8 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index f85f1fc29e32..3476e29db87c 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -20,6 +20,7 @@
 #include <linux/irqdomain.h>
 #include <linux/platform_device.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/io.h>
 #include <linux/mfd/mt6397/core.h>
@@ -27,7 +28,8 @@
 #define RTC_BBPU		0x0000
 #define RTC_BBPU_CBUSY		BIT(6)
 
-#define RTC_WRTGR		0x003c
+#define RTC_WRTGR_MT6358	0x3a
+#define RTC_WRTGR_MT6397	0x3c
 
 #define RTC_IRQ_STA		0x0002
 #define RTC_IRQ_STA_AL		BIT(0)
@@ -71,6 +73,10 @@
 #define RTC_NUM_YEARS		128
 #define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
 
+struct mtk_rtc_compatible {
+	u32			wrtgr_addr;
+};
+
 struct mt6397_rtc {
 	struct device		*dev;
 	struct rtc_device	*rtc_dev;
@@ -78,7 +84,25 @@ struct mt6397_rtc {
 	struct regmap		*regmap;
 	int			irq;
 	u32			addr_base;
+	const struct mtk_rtc_compatible *dev_comp;
+};
+
+static const struct mtk_rtc_compatible mt6358_rtc_compat = {
+	.wrtgr_addr = RTC_WRTGR_MT6358,
+};
+
+static const struct mtk_rtc_compatible mt6397_rtc_compat = {
+	.wrtgr_addr = RTC_WRTGR_MT6397,
+};
+
+static const struct of_device_id mt6397_rtc_of_match[] = {
+	{ .compatible = "mediatek,mt6358-rtc",
+		.data = (void *)&mt6358_rtc_compat, },
+	{ .compatible = "mediatek,mt6397-rtc",
+		.data = (void *)&mt6397_rtc_compat, },
+	{}
 };
+MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
 
 static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 {
@@ -86,7 +110,8 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 	int ret;
 	u32 data;
 
-	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
+	ret = regmap_write(rtc->regmap,
+			   rtc->addr_base + rtc->dev_comp->wrtgr_addr, 1);
 	if (ret < 0)
 		return ret;
 
@@ -332,6 +357,7 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	struct resource *res;
 	struct mt6397_chip *mt6397_chip = dev_get_drvdata(pdev->dev.parent);
 	struct mt6397_rtc *rtc;
+	const struct of_device_id *of_id;
 	int ret;
 
 	rtc = devm_kzalloc(&pdev->dev, sizeof(struct mt6397_rtc), GFP_KERNEL);
@@ -341,6 +367,13 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	rtc->addr_base = res->start;
 
+	of_id = of_match_device(mt6397_rtc_of_match, &pdev->dev);
+	if (!of_id) {
+		dev_err(&pdev->dev, "Failed to probe of_node\n");
+		return -EINVAL;
+	}
+	rtc->dev_comp = of_id->data;
+
 	rtc->irq = platform_get_irq(pdev, 0);
 	if (rtc->irq < 0)
 		return rtc->irq;
@@ -419,12 +452,6 @@ static int mt6397_rtc_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
 			mt6397_rtc_resume);
 
-static const struct of_device_id mt6397_rtc_of_match[] = {
-	{ .compatible = "mediatek,mt6397-rtc", },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
-
 static struct platform_driver mtk_rtc_driver = {
 	.driver = {
 		.name = "mt6397-rtc",
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
