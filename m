Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CC415057F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 12:41:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTJq5JqJfbjNiQvRfGzmJModXvp5+t0hKokb0NptjKw=; b=FUO19e7gVnMvtM
	m+xOtv8/r3OAuf+V81ArN3MVPDI8YOm6bg7bZxRhqESGffHM3n317Icgg4bJxV10/6awiAJCe3y82
	b/d4MhHoxw2T7PYPNOiTPK0tAZ1CeJulaeIHsbhONUN0DoyKSfOX6me3h7MG7y8crPrV5bz27uh3R
	uCfam0306pPxQsIFPRmwRpNjykroI+D+N9bA7kFc1kjz1ZvZEnEBeu18DqNHM59tfQ1l20I+I/+75
	5XPT1tKudYTbddseBnZVyqn79ysyTtQRFiJ0PRJmvpl1+uiOfLhnwKrE5md5ZFDd4GTiXQ+8fp4Fr
	8TKdnhTgjf4XRVLBXguQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iya6U-0006UK-Lp; Mon, 03 Feb 2020 11:41:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iya63-0006HV-Dl; Mon, 03 Feb 2020 11:40:56 +0000
X-UUID: 6744a96e89c946b39285b29681588f4c-20200203
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=uHq9fhw7QNVJhklhNpOI/KW9hh/uLCqY6eBhnwNF2yI=; 
 b=a1aI/PS36Ihda3tdti3VLeVl9ycDH2YqiPJTor7T9ABZYkCRLd91VLiGncPZDQq93J4EiOIn4ZIV0paKwls+Xb9qIF7GIWdtg3rzqreGYT9Hkt3E2O3rEeuBLlJlk1oNymDC9+G/I9Tubkva7Vyo/36Us880xkr3TrGllDlX1aA=;
X-UUID: 6744a96e89c946b39285b29681588f4c-20200203
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 583269935; Mon, 03 Feb 2020 03:40:49 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Feb 2020 03:41:11 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Feb 2020 19:40:01 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 3 Feb 2020 19:40:30 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH v8 4/5] rtc: mt6397: Add support for the MediaTek MT6358 RTC
Date: Mon, 3 Feb 2020 19:40:43 +0800
Message-ID: <1580730044-30501-5-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1580730044-30501-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1580730044-30501-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_034055_475210_D7C941D3 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alessandro
 Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ran Bi <ran.bi@mediatek.com>

This add support for the MediaTek MT6358 RTC. Driver using
compatible data to store different RTC_WRTGR address offset.

Signed-off-by: Ran Bi <ran.bi@mediatek.com>
Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
---
 drivers/rtc/rtc-mt6397.c       | 25 +++++++++++++++++--------
 include/linux/mfd/mt6397/rtc.h | 16 +++++++++++++++-
 2 files changed, 32 insertions(+), 9 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 5249fc9..a90735e1 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -9,18 +9,31 @@
 #include <linux/mfd/mt6397/core.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/rtc.h>
 #include <linux/mfd/mt6397/rtc.h>
 #include <linux/mod_devicetable.h>
 
+static const struct of_device_id mt6397_rtc_of_match[] = {
+	{ .compatible = "mediatek,mt6323-rtc",
+		.data = (void *)&mt6397_rtc_data, },
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
 	int ret;
 	u32 data;
 
-	ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
+	ret = regmap_write(rtc->regmap,
+			   rtc->addr_base + rtc->data->wrtgr, 1);
 	if (ret < 0)
 		return ret;
 
@@ -258,6 +271,9 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	rtc->addr_base = res->start;
 
+	rtc->data = (struct mtk_rtc_data *)
+			of_device_get_match_data(&pdev->dev);
+
 	rtc->irq = platform_get_irq(pdev, 0);
 	if (rtc->irq < 0)
 		return rtc->irq;
@@ -322,13 +338,6 @@ static int mt6397_rtc_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
 			mt6397_rtc_resume);
 
-static const struct of_device_id mt6397_rtc_of_match[] = {
-	{ .compatible = "mediatek,mt6323-rtc", },
-	{ .compatible = "mediatek,mt6397-rtc", },
-	{ }
-};
-MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
-
 static struct platform_driver mtk_rtc_driver = {
 	.driver = {
 		.name = "mt6397-rtc",
diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
index f84b916..fffe34a 100644
--- a/include/linux/mfd/mt6397/rtc.h
+++ b/include/linux/mfd/mt6397/rtc.h
@@ -18,7 +18,8 @@
 #define RTC_BBPU_CBUSY         BIT(6)
 #define RTC_BBPU_KEY            (0x43 << 8)
 
-#define RTC_WRTGR              0x003c
+#define RTC_WRTGR_MT6358       0x3a
+#define RTC_WRTGR_MT6397       0x3c
 
 #define RTC_IRQ_STA            0x0002
 #define RTC_IRQ_STA_AL         BIT(0)
@@ -57,6 +58,10 @@
 #define MTK_RTC_POLL_DELAY_US  10
 #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
 
+struct mtk_rtc_data {
+	u32			wrtgr;
+};
+
 struct mt6397_rtc {
 	struct device           *dev;
 	struct rtc_device       *rtc_dev;
@@ -66,6 +71,15 @@ struct mt6397_rtc {
 	struct regmap           *regmap;
 	int                     irq;
 	u32                     addr_base;
+	const struct mtk_rtc_data *data;
+};
+
+static const struct mtk_rtc_data mt6358_rtc_data = {
+	.wrtgr = RTC_WRTGR_MT6358,
+};
+
+static const struct mtk_rtc_data mt6397_rtc_data = {
+	.wrtgr = RTC_WRTGR_MT6397,
 };
 
 #endif /* _LINUX_MFD_MT6397_RTC_H_ */
-- 
2.6.4
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
