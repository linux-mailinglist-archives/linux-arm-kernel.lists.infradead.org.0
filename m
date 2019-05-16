Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8341C20113
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:12:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1GjPee8EmM+2aAiM9Frz2KWjlwEmDyu3PbvMkFbJT8=; b=GcfuQA4F3rCiID
	/lnYVD9YTZNR3eoavpZmaBRwz6kEz/3b7iGJ595ecTpE7RZo7hgApwN9omjd1LT59Xu4s+bTxg/3w
	HEFM0IuAfCXDVoI8mJlp42s+D9LnHZC/LwugerQhGZrcYxH1o+rtwMp6Tid68buIKuoejsJJwLECd
	q8nUcz5kRpeMhn2ym0fHWi2tChiEtfVJiPXZdIJSHc7bWlsjN831AIzCqRpnR28TXIVnb0YwwaTR8
	88mwuXzZ/HQrH52PZw/ELsfT9j0Pyu3q/hST4SAq2gKO4+gl4ex0LAH9jk/w5C53CGEE8d1w7kwLZ
	Yqirza4ExC4ep3mWexWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBUs-0000IT-Un; Thu, 16 May 2019 08:12:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBU6-0007p9-9s; Thu, 16 May 2019 08:11:27 +0000
X-UUID: 9073a198b92846bdbebad5e208b4fe93-20190516
X-UUID: 9073a198b92846bdbebad5e208b4fe93-20190516
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 725296121; Thu, 16 May 2019 00:11:16 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 01:11:15 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 16:11:13 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 16:11:13 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 2/4] iio: adc: mediatek: mt6765 upstream driver
Date: Thu, 16 May 2019 16:10:45 +0800
Message-ID: <1557994247-16739-3-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_011126_362107_8D79EF24 
X-CRM114-Status: GOOD (  14.38  )
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 jg_poxu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. Add calibrated sample data support
2. Use of_match_table to decide each platform's
   feature set

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
---
 drivers/iio/adc/mt6577_auxadc.c | 54 +++++++++++++++++++++++++++++++----------
 1 file changed, 41 insertions(+), 13 deletions(-)

diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
index 95d76ab..e1bdcc0 100644
--- a/drivers/iio/adc/mt6577_auxadc.c
+++ b/drivers/iio/adc/mt6577_auxadc.c
@@ -42,10 +42,26 @@
 #define MT6577_AUXADC_POWER_READY_MS          1
 #define MT6577_AUXADC_SAMPLE_READY_US         25
 
+struct mtk_auxadc_compatible {
+	bool sample_data_cali;
+	bool check_global_idle;
+};
+
 struct mt6577_auxadc_device {
 	void __iomem *reg_base;
 	struct clk *adc_clk;
 	struct mutex lock;
+	const struct mtk_auxadc_compatible *dev_comp;
+};
+
+static const struct mtk_auxadc_compatible mt8173_compat = {
+	.sample_data_cali = false,
+	.check_global_idle = true,
+};
+
+static const struct mtk_auxadc_compatible mt6765_compat = {
+	.sample_data_cali = true,
+	.check_global_idle = false,
 };
 
 #define MT6577_AUXADC_CHANNEL(idx) {				    \
@@ -74,6 +90,11 @@ struct mt6577_auxadc_device {
 	MT6577_AUXADC_CHANNEL(15),
 };
 
+static int mt_auxadc_get_cali_data(int rawdata, bool enable_cali)
+{
+	return rawdata;
+}
+
 static inline void mt6577_auxadc_mod_reg(void __iomem *reg,
 					 u32 or_mask, u32 and_mask)
 {
@@ -120,15 +141,17 @@ static int mt6577_auxadc_read(struct iio_dev *indio_dev,
 	/* we must delay here for hardware sample channel data */
 	udelay(MT6577_AUXADC_SAMPLE_READY_US);
 
-	/* check MTK_AUXADC_CON2 if auxadc is idle */
-	ret = readl_poll_timeout(adc_dev->reg_base + MT6577_AUXADC_CON2, val,
-				 ((val & MT6577_AUXADC_STA) == 0),
-				 MT6577_AUXADC_SLEEP_US,
-				 MT6577_AUXADC_TIMEOUT_US);
-	if (ret < 0) {
-		dev_err(indio_dev->dev.parent,
-			"wait for auxadc idle time out\n");
-		goto err_timeout;
+	if (adc_dev->dev_comp->check_global_idle) {
+		/* check MTK_AUXADC_CON2 if auxadc is idle */
+		ret = readl_poll_timeout(adc_dev->reg_base + MT6577_AUXADC_CON2,
+					 val, ((val & MT6577_AUXADC_STA) == 0),
+					 MT6577_AUXADC_SLEEP_US,
+					 MT6577_AUXADC_TIMEOUT_US);
+		if (ret < 0) {
+			dev_err(indio_dev->dev.parent,
+				"wait for auxadc idle time out\n");
+			goto err_timeout;
+		}
 	}
 
 	/* read channel and make sure ready bit == 1 */
@@ -163,6 +186,8 @@ static int mt6577_auxadc_read_raw(struct iio_dev *indio_dev,
 				  int *val2,
 				  long info)
 {
+	struct mt6577_auxadc_device *adc_dev = iio_priv(indio_dev);
+
 	switch (info) {
 	case IIO_CHAN_INFO_PROCESSED:
 		*val = mt6577_auxadc_read(indio_dev, chan);
@@ -172,6 +197,8 @@ static int mt6577_auxadc_read_raw(struct iio_dev *indio_dev,
 				chan->channel);
 			return *val;
 		}
+		if (adc_dev->dev_comp->sample_data_cali)
+			*val = mt_auxadc_get_cali_data(*val, true);
 		return IIO_VAL_INT;
 
 	default:
@@ -304,10 +331,11 @@ static SIMPLE_DEV_PM_OPS(mt6577_auxadc_pm_ops,
 			 mt6577_auxadc_resume);
 
 static const struct of_device_id mt6577_auxadc_of_match[] = {
-	{ .compatible = "mediatek,mt2701-auxadc", },
-	{ .compatible = "mediatek,mt2712-auxadc", },
-	{ .compatible = "mediatek,mt7622-auxadc", },
-	{ .compatible = "mediatek,mt8173-auxadc", },
+	{ .compatible = "mediatek,mt2701-auxadc", .data = &mt8173_compat},
+	{ .compatible = "mediatek,mt2712-auxadc", .data = &mt8173_compat},
+	{ .compatible = "mediatek,mt7622-auxadc", .data = &mt8173_compat},
+	{ .compatible = "mediatek,mt8173-auxadc", .data = &mt8173_compat},
+	{ .compatible = "mediatek,mt6765-auxadc", .data = &mt6765_compat},
 	{ }
 };
 MODULE_DEVICE_TABLE(of, mt6577_auxadc_of_match);
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
