Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAD56CA8F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 10:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bd/vQFW7F6Op3Du0wncvJ4KJuDFDNuNg5/lBX7qNN+k=; b=dyd6yclCuO9WSW
	sfcLH5hxwJ2TV5B9tOuz+N7BuggDJ16LOmR91ph81lkwCfHD1nQZlp0538KfuFYwu6g0SrJMCLSyE
	2t5FJOcDm/VRZCkKiYdMGLh69ZMk08lqraBOGeVuUSbmfd2SByzISJ0XbMlC5zDk519ODukmp+Uo+
	VwTx5MA8FOleOMHJrCCxjNeicu9qliNVsToAOJG+yAJG0DjvYEVVq4ZjM8dwWRIZ2k5qOgjHKIHPT
	60qV+Fx85FP0hA2iTLTw6cx++3V/HKKz4x5G9BpNl9B5E7tCj/XoricwcX3BH+THM3qBPwX/fyEBR
	DNO+l6mzyjW+rVE7gM3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1Mj-00017h-71; Thu, 18 Jul 2019 08:02:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1M9-0000w4-Ii; Thu, 18 Jul 2019 08:01:39 +0000
X-UUID: 6e648b24c3dc44a7bec79d81d2c9053a-20190718
X-UUID: 6e648b24c3dc44a7bec79d81d2c9053a-20190718
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <zhiyong.tao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2128258724; Thu, 18 Jul 2019 00:01:34 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 01:01:33 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 16:01:26 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 18 Jul 2019 16:01:25 +0800
From: Zhiyong Tao <zhiyong.tao@mediatek.com>
To: <robh+dt@kernel.org>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>
Subject: [PATCH v1 2/2] auxadc: mediatek: support efuse calibration in auxadc
 driver
Date: Thu, 18 Jul 2019 16:01:19 +0800
Message-ID: <20190718080119.30707-3-zhiyong.tao@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20190718080119.30707-1-zhiyong.tao@mediatek.com>
References: <20190718080119.30707-1-zhiyong.tao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_010137_617213_1448F33D 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, sean.wang@mediatek.com,
 srv_heupstream@mediatek.com, linux-iio@vger.kernel.org,
 Zhiyong Tao <zhiyong.tao@mediatek.com>, erin.lo@mediatek.com,
 hui.liu@mediatek.com, linux-kernel@vger.kernel.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, eddie.huang@mediatek.com,
 matthias.bgg@gmail.com, yingjoe.chen@mediatek.com, jg_poxu@mediatek.com,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch support efuse calibration in auxadc driver

Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
Signed-off-by: jg_poxu <jg_poxu@mediatek.com>
---
 drivers/iio/adc/mt6577_auxadc.c | 71 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
index 95d76abb64ec..e30d9736b1a5 100644
--- a/drivers/iio/adc/mt6577_auxadc.c
+++ b/drivers/iio/adc/mt6577_auxadc.c
@@ -17,12 +17,14 @@
 #include <linux/err.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/nvmem-consumer.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/iopoll.h>
 #include <linux/io.h>
 #include <linux/iio/iio.h>
+#include <linux/slab.h>
 
 /* Register definitions */
 #define MT6577_AUXADC_CON0                    0x00
@@ -42,6 +44,13 @@
 #define MT6577_AUXADC_POWER_READY_MS          1
 #define MT6577_AUXADC_SAMPLE_READY_US         25
 
+#define ADC_GE_A_SHIFT      10
+#define ADC_GE_A_MASK       (0x3ff << ADC_GE_A_SHIFT)
+#define ADC_OE_A_SHIFT      0
+#define ADC_OE_A_MASK       (0x3ff << ADC_OE_A_SHIFT)
+#define ADC_CALI_EN_A_SHIFT 20
+#define ADC_CALI_EN_A_MASK  (0x1 << ADC_CALI_EN_A_SHIFT)
+
 struct mt6577_auxadc_device {
 	void __iomem *reg_base;
 	struct clk *adc_clk;
@@ -74,6 +83,64 @@ static const struct iio_chan_spec mt6577_auxadc_iio_channels[] = {
 	MT6577_AUXADC_CHANNEL(15),
 };
 
+s32 cali_oe;
+s32 cali_ge;
+struct adc_cali_info {
+	u32 cali_ge_a;
+	u32 cali_oe_a;
+	u32 gain;
+};
+static struct adc_cali_info adc_cali;
+
+static int mt6577_auxadc_update_cali(struct device *dev)
+{
+	struct nvmem_cell *cell;
+	u32 *buf;
+	size_t len;
+	int ret = 0;
+
+	cali_oe = 0;
+	cali_ge = 0;
+
+	cell = nvmem_cell_get(dev, "calibration-data");
+	if (IS_ERR(cell)) {
+		if (PTR_ERR(cell) == -EPROBE_DEFER)
+			return PTR_ERR(cell);
+		return 0;
+	}
+
+	buf = (u32 *)nvmem_cell_read(cell, &len);
+
+	nvmem_cell_put(cell);
+
+	if (IS_ERR(buf))
+		return PTR_ERR(buf);
+
+	if (len < sizeof(u32)) {
+		dev_warn(dev, "invalid calibration data\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	if (((buf[0] & ADC_CALI_EN_A_MASK) >> ADC_CALI_EN_A_SHIFT) != 0) {
+		adc_cali.cali_oe_a =
+			(buf[0] & ADC_OE_A_MASK) >> ADC_OE_A_SHIFT;
+		adc_cali.cali_ge_a =
+			((buf[0] & ADC_GE_A_MASK) >> ADC_GE_A_SHIFT);
+
+		cali_ge = adc_cali.cali_ge_a - 512;
+		cali_oe = adc_cali.cali_oe_a - 512;
+		adc_cali.gain = 1 + cali_ge;
+	}  else {
+		dev_info(dev, "Device not calibrated, using default calibration values\n");
+	}
+
+out:
+	kfree(buf);
+
+	return ret;
+}
+
 static inline void mt6577_auxadc_mod_reg(void __iomem *reg,
 					 u32 or_mask, u32 and_mask)
 {
@@ -274,6 +341,10 @@ static int mt6577_auxadc_probe(struct platform_device *pdev)
 		goto err_power_off;
 	}
 
+	ret = mt6577_auxadc_update_cali(&pdev->dev);
+	if (ret)
+		return ret;
+
 	return 0;
 
 err_power_off:
-- 
2.12.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
