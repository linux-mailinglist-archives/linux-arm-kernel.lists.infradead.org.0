Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1359A634
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 05:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cTQrWiMK4PTUnq/n8WWq1N8eDHGUGbr4cOa3S9gsns=; b=iswRj9PMYN0Knj
	o1TzD7j0xFdpsJnS92l1MBudpXkwRbxveklQ/skle3jd6PgVLBRPlfcn6GNUEt+OMJEOpnNVqrxQF
	J0BggiozIiK+BpqLXz+FTWmVq49SZxi5LtVHYkoJyiuxrVhl/fCXcUieEG8TfmH8cdCBi2rmAZNMI
	lvMrYyC46gHjA/geuTh18wt0p2t7qpkrxVXDjVAbIkJzCE9gPY1c1fCA+UP0Jq+5bL5SjHtC4DOO6
	K978DTIbg8iqXs1VhJtJPKTUXLhlBrDLsqbMdXL8ryoY5rRfUw8uce3ivbVxT42zXINjI/lt21pcO
	KHAK/sfNZB33OBS1spqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i10WZ-0007Wy-U2; Fri, 23 Aug 2019 03:46:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i10WJ-0007Ti-UQ; Fri, 23 Aug 2019 03:45:49 +0000
X-UUID: 881aeb6922f8480c99eee47908f86171-20190822
X-UUID: 881aeb6922f8480c99eee47908f86171-20190822
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1411864215; Thu, 22 Aug 2019 19:45:39 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 20:45:38 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 11:45:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 23 Aug 2019 11:45:36 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH v5 10/10] rtc: mt6397: Add support for the MediaTek MT6358 RTC
Date: Fri, 23 Aug 2019 11:45:31 +0800
Message-ID: <1566531931-9772-11-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: F0764FDB06D62BEE862D7EA509F66EB2C2B5058E838AAF7CCDC98D4C539255B72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_204547_989420_76548601 
X-CRM114-Status: GOOD (  14.53  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Ran Bi <ran.bi@mediatek.com>, Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ran Bi <ran.bi@mediatek.com>

This add support for the MediaTek MT6358 RTC. Driver using
compatible data to store different RTC_WRTGR address offset.

Signed-off-by: Ran Bi <ran.bi@mediatek.com>
---
 drivers/rtc/rtc-mt6397.c | 38 ++++++++++++++++++++++++++++++--------
 1 file changed, 30 insertions(+), 8 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 828def7..d1c2886 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -12,6 +12,7 @@
 #include <linux/irqdomain.h>
 #include <linux/platform_device.h>
 #include <linux/of_address.h>
+#include <linux/of_device.h>
 #include <linux/of_irq.h>
 #include <linux/io.h>
 #include <linux/mfd/mt6397/core.h>
@@ -19,7 +20,8 @@
 #define RTC_BBPU		0x0000
 #define RTC_BBPU_CBUSY		BIT(6)
 
-#define RTC_WRTGR		0x003c
+#define RTC_WRTGR_MT6358	0x3a
+#define RTC_WRTGR_MT6397	0x3c
 
 #define RTC_IRQ_STA		0x0002
 #define RTC_IRQ_STA_AL		BIT(0)
@@ -63,6 +65,10 @@
 #define RTC_NUM_YEARS		128
 #define RTC_MIN_YEAR_OFFSET	(RTC_MIN_YEAR - RTC_BASE_YEAR)
 
+struct mtk_rtc_data {
+	u32			wrtgr;
+};
+
 struct mt6397_rtc {
 	struct device		*dev;
 	struct rtc_device	*rtc_dev;
@@ -70,15 +76,34 @@ struct mt6397_rtc {
 	struct regmap		*regmap;
 	int			irq;
 	u32			addr_base;
+	const struct mtk_rtc_data *data;
+};
+
+static const struct mtk_rtc_data mt6358_rtc_data = {
+	.wrtgr = RTC_WRTGR_MT6358,
 };
 
+static const struct mtk_rtc_data mt6397_rtc_data = {
+	.wrtgr = RTC_WRTGR_MT6397,
+};
+
+static const struct of_device_id mt6397_rtc_of_match[] = {
+	{ .compatible = "mediatek,mt6358-rtc",
+		.data = (void *)&mt6358_rtc_data, },
+	{ .compatible = "mediatek,mt6397-rtc",
+		.data = (void *)&mt6397_rtc_data, },
+	{}
+};
+MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
+
 static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 {
 	unsigned long timeout = jiffies + HZ;
 	int ret;
 	u32 data;
 
-	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
+	ret = regmap_write(rtc->regmap,
+			   rtc->addr_base + rtc->data->wrtgr, 1);
 	if (ret < 0)
 		return ret;
 
@@ -333,6 +358,9 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	rtc->addr_base = res->start;
 
+	rtc->data = (struct mtk_rtc_data *)
+			of_device_get_match_data(&pdev->dev);
+
 	rtc->irq = platform_get_irq(pdev, 0);
 	if (rtc->irq < 0)
 		return rtc->irq;
@@ -408,12 +436,6 @@ static int mt6397_rtc_resume(struct device *dev)
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
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
