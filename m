Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D087A1BF416
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QsI7nNUSQv6j53suhHEmCWMi+gS62wAssH0+HYUFwo0=; b=qjBvCd5ERf576j
	juQN7vq0JaXoueDISODulrASyK5KBfqfQavatzRegd7eKvLzLt2plQpQytpZlvmzFHbT8ylX7Jh2L
	sqkftM2QLH4S3bYRF1Sju0Fxvt61eF+7QGP8s5Ec0ls7h96Lb0JhD2ZCpB+ejwrZLUPJewNWGrzGh
	sdzibkDpW1cY5PQsgiqPlY6o1diF0Dui4GJSZQRG6smo6JLboOy4AikOeG2SQpf7+HRM9tXSVWSWT
	7QoVMlH1STGn3tIZlwxtJ0+zxaW+rZyMCYpcEcCEtGCFdXyFde4j/59tnzB63zrIAGTKEIw1ldrk7
	DrUHSLESulXfogTHYYig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5Rx-0002yh-AL; Thu, 30 Apr 2020 09:25:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5R4-0008Ns-63; Thu, 30 Apr 2020 09:24:51 +0000
X-UUID: caf674455d644bd492f5de35c6026e0f-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Ig/CV/AWBavhja044N0Zt1j1YShLtmo/bIEfrOu5Bu0=; 
 b=ncTMx2xdchSZ2qdj1YKcKYsJCKWk7FA5D5mRKzUewA/sL4aims1CG/3H9ALRJWZtf0MqMafeUUCoVS5Vbnoeu3OG5bcIIokhNwc1wCx+AIRpi8wXFUtlojkAealJZNWP2rFhQcvavr8wqCd9dfFfB7SvDcsX1UvV95T/86rFRcQ=;
X-UUID: caf674455d644bd492f5de35c6026e0f-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <henry.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2144144053; Thu, 30 Apr 2020 01:24:37 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 02:14:41 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 17:14:39 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 30 Apr 2020 17:14:42 +0800
From: Henry Yen <henry.yen@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 2/2] thermal: mediatek: add tsensor support for V2 thermal
 system
Date: Thu, 30 Apr 2020 17:14:34 +0800
Message-ID: <1588238074-19338-3-git-send-email-henry.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1588238074-19338-1-git-send-email-henry.yen@mediatek.com>
References: <1588238074-19338-1-git-send-email-henry.yen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_022450_226536_A0EF8774 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Steven Liu <steven.liu@mediatek.com>, Henry Yen <henry.yen@mediatek.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, Michael
 Kao <michael.kao@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds full support for ver 2 thermal system (e.g., MT7622 SoC).
The new changes include reading calibration data, converting temperature
and hardware initialization which are specific for version 2 system.
Each platform decides which function to call according to its version.

Fixes: 3966be3c08c3 ("thermal: mediatek: add support for MT7622 SoC")
Signed-off-by: Henry Yen <henry.yen@mediatek.com>
---
 drivers/thermal/mtk_thermal.c | 132 ++++++++++++++++++++++++++++++++--
 1 file changed, 125 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index 10107d9d56a8..88620f7e9890 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -38,6 +38,7 @@
 #define TEMP_MONIDET0		0x014
 #define TEMP_MONIDET1		0x018
 #define TEMP_MSRCTL0		0x038
+#define TEMP_MSRCTL1		0x03c
 #define TEMP_AHBPOLL		0x040
 #define TEMP_AHBTO		0x044
 #define TEMP_ADCPNP0		0x048
@@ -133,6 +134,20 @@
 #define CALIB_BUF0_O_SLOPE_SIGN_V1(x)	(((x) >> 7) & 0x1)
 #define CALIB_BUF1_ID_V1(x)		(((x) >> 9) & 0x1)
 
+/*
+ * Layout of the fuses providing the calibration data
+ * These macros could be used for MT7622.
+ */
+#define CALIB_BUF0_ADC_OE_V2(x)		(((x) >> 22) & 0x3ff)
+#define CALIB_BUF0_ADC_GE_V2(x)		(((x) >> 12) & 0x3ff)
+#define CALIB_BUF0_DEGC_CALI_V2(x)	(((x) >> 6) & 0x3f)
+#define CALIB_BUF0_O_SLOPE_V2(x)	(((x) >> 0) & 0x3f)
+#define CALIB_BUF1_VTS_TS1_V2(x)	(((x) >> 23) & 0x1ff)
+#define CALIB_BUF1_VTS_TS2_V2(x)	(((x) >> 14) & 0x1ff)
+#define CALIB_BUF1_VTS_TSABB_V2(x)	(((x) >> 5) & 0x1ff)
+#define CALIB_BUF1_VALID_V2(x)		(((x) >> 4) & 0x1)
+#define CALIB_BUF1_O_SLOPE_SIGN_V2(x)	(((x) >> 3) & 0x1)
+
 enum {
 	VTS1,
 	VTS2,
@@ -143,6 +158,11 @@ enum {
 	MAX_NUM_VTS,
 };
 
+enum mtk_thermal_version {
+	MTK_THERMAL_V1 = 1,
+	MTK_THERMAL_V2,
+};
+
 /* MT2701 thermal sensors */
 #define MT2701_TS1	0
 #define MT2701_TS2	1
@@ -245,6 +265,7 @@ struct mtk_thermal_data {
 	const int *controller_offset;
 	bool need_switch_bank;
 	struct thermal_bank_cfg bank_data[MAX_NUM_ZONES];
+	enum mtk_thermal_version version;
 };
 
 struct mtk_thermal {
@@ -258,8 +279,10 @@ struct mtk_thermal {
 
 	/* Calibration values */
 	s32 adc_ge;
+	s32 adc_oe;
 	s32 degc_cali;
 	s32 o_slope;
+	s32 o_slope_sign;
 	s32 vts[MAX_NUM_VTS];
 
 	const struct mtk_thermal_data *conf;
@@ -398,6 +421,7 @@ static const struct mtk_thermal_data mt8173_thermal_data = {
 	.msr = mt8173_msr,
 	.adcpnp = mt8173_adcpnp,
 	.sensor_mux_values = mt8173_mux_values,
+	.version = MTK_THERMAL_V1,
 };
 
 /*
@@ -428,6 +452,7 @@ static const struct mtk_thermal_data mt2701_thermal_data = {
 	.msr = mt2701_msr,
 	.adcpnp = mt2701_adcpnp,
 	.sensor_mux_values = mt2701_mux_values,
+	.version = MTK_THERMAL_V1,
 };
 
 /*
@@ -458,6 +483,7 @@ static const struct mtk_thermal_data mt2712_thermal_data = {
 	.msr = mt2712_msr,
 	.adcpnp = mt2712_adcpnp,
 	.sensor_mux_values = mt2712_mux_values,
+	.version = MTK_THERMAL_V1,
 };
 
 /*
@@ -482,6 +508,7 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
 	.msr = mt7622_msr,
 	.adcpnp = mt7622_adcpnp,
 	.sensor_mux_values = mt7622_mux_values,
+	.version = MTK_THERMAL_V2,
 };
 
 /*
@@ -514,6 +541,7 @@ static const struct mtk_thermal_data mt8183_thermal_data = {
 	.msr = mt8183_msr,
 	.adcpnp = mt8183_adcpnp,
 	.sensor_mux_values = mt8183_mux_values,
+	.version = MTK_THERMAL_V1,
 };
 
 /**
@@ -540,6 +568,36 @@ static int raw_to_mcelsius_v1(struct mtk_thermal *mt, int sensno, s32 raw)
 	return mt->degc_cali * 500 - tmp;
 }
 
+static int raw_to_mcelsius_v2(struct mtk_thermal *mt, int sensno, s32 raw)
+{
+	s32 format_1 = 0;
+	s32 format_2 = 0;
+	s32 g_oe = 1;
+	s32 g_gain = 1;
+	s32 g_x_roomt = 0;
+	s32 tmp = 0;
+
+	if (raw == 0)
+		return 0;
+
+	raw &= 0xfff;
+	g_gain = 10000 + (((mt->adc_ge - 512) * 10000) >> 12);
+	g_oe = mt->adc_oe - 512;
+	format_1 = mt->vts[VTS2] + 3105 - g_oe;
+	format_2 = (mt->degc_cali * 10) >> 1;
+	g_x_roomt = (((format_1 * 10000) >> 12) * 10000) / g_gain;
+
+	tmp = (((((raw - g_oe) * 10000) >> 12) * 10000) / g_gain) - g_x_roomt;
+	tmp = tmp * 10 * 100 / 11;
+
+	if (mt->o_slope_sign == 0)
+		tmp = tmp / (165 - mt->o_slope);
+	else
+		tmp = tmp / (165 + mt->o_slope);
+
+	return (format_2 - tmp) * 100;
+}
+
 /**
  * mtk_thermal_get_bank - get bank
  * @bank:	The bank
@@ -594,9 +652,13 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
 		raw = readl(mt->thermal_base +
 			    conf->msr[conf->bank_data[bank->id].sensors[i]]);
 
-		temp = raw_to_mcelsius_v1(mt,
-					  conf->bank_data[bank->id].sensors[i],
-					  raw);
+		if (mt->conf->version == MTK_THERMAL_V1) {
+			temp = raw_to_mcelsius_v1(
+				mt, conf->bank_data[bank->id].sensors[i], raw);
+		} else {
+			temp = raw_to_mcelsius_v2(
+				mt, conf->bank_data[bank->id].sensors[i], raw);
+		}
 
 		/*
 		 * The first read of a sensor often contains very high bogus
@@ -698,9 +760,11 @@ static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
 	writel(auxadc_phys_base + AUXADC_CON1_CLR_V,
 	       controller_base + TEMP_ADCMUXADDR);
 
-	/* AHB address for pnp sensor mux selection */
-	writel(apmixed_phys_base + APMIXED_SYS_TS_CON1,
-	       controller_base + TEMP_PNPMUXADDR);
+	if (mt->conf->version == MTK_THERMAL_V1) {
+		/* AHB address for pnp sensor mux selection */
+		writel(apmixed_phys_base + APMIXED_SYS_TS_CON1,
+		       controller_base + TEMP_PNPMUXADDR);
+	}
 
 	/* AHB value for auxadc enable */
 	writel(BIT(conf->auxadc_channel), controller_base + TEMP_ADCEN);
@@ -803,6 +867,23 @@ static int mtk_thermal_extract_efuse_v1(struct mtk_thermal *mt, u32 *buf)
 	return 0;
 }
 
+static int mtk_thermal_extract_efuse_v2(struct mtk_thermal *mt, u32 *buf)
+{
+	if (!CALIB_BUF1_VALID_V2(buf[1]))
+		return -EINVAL;
+
+	mt->adc_oe = CALIB_BUF0_ADC_OE_V2(buf[0]);
+	mt->adc_ge = CALIB_BUF0_ADC_GE_V2(buf[0]);
+	mt->degc_cali = CALIB_BUF0_DEGC_CALI_V2(buf[0]);
+	mt->o_slope = CALIB_BUF0_O_SLOPE_V2(buf[0]);
+	mt->vts[VTS1] = CALIB_BUF1_VTS_TS1_V2(buf[1]);
+	mt->vts[VTS2] = CALIB_BUF1_VTS_TS2_V2(buf[1]);
+	mt->vts[VTSABB] = CALIB_BUF1_VTS_TSABB_V2(buf[1]);
+	mt->o_slope_sign = CALIB_BUF1_O_SLOPE_SIGN_V2(buf[1]);
+
+	return 0;
+}
+
 static int mtk_thermal_get_calibration_data(struct device *dev,
 					    struct mtk_thermal *mt)
 {
@@ -838,8 +919,15 @@ static int mtk_thermal_get_calibration_data(struct device *dev,
 		goto out;
 	}
 
-	if (mtk_thermal_extract_efuse_v1(mt, buf))
+	if (mt->conf->version == MTK_THERMAL_V1)
+		ret = mtk_thermal_extract_efuse_v1(mt, buf);
+	else
+		ret = mtk_thermal_extract_efuse_v2(mt, buf);
+
+	if (ret) {
 		dev_info(dev, "Device not calibrated, using default calibration values\n");
+		ret = 0;
+	}
 
 out:
 	kfree(buf);
@@ -872,6 +960,28 @@ static const struct of_device_id mtk_thermal_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, mtk_thermal_of_match);
 
+static void mtk_thermal_turn_on_buffer(void __iomem *apmixed_base)
+{
+	int tmp;
+
+	tmp = readl(apmixed_base + APMIXED_SYS_TS_CON1);
+	tmp &= ~(0x37);
+	tmp |= 0x1;
+	writel(tmp, apmixed_base + APMIXED_SYS_TS_CON1);
+	udelay(200);
+}
+
+static void mtk_thermal_release_periodic_ts(struct mtk_thermal *mt,
+					    void __iomem *auxadc_base)
+{
+	int tmp;
+
+	writel(0x800, auxadc_base + AUXADC_CON1_SET_V);
+	writel(0x1, mt->thermal_base + TEMP_MONCTL0);
+	tmp = readl(mt->thermal_base + TEMP_MSRCTL1);
+	writel((tmp & (~0x10e)), mt->thermal_base + TEMP_MSRCTL1);
+}
+
 static int mtk_thermal_probe(struct platform_device *pdev)
 {
 	int ret, i, ctrl_id;
@@ -880,6 +990,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	struct resource *res;
 	u64 auxadc_phys_base, apmixed_phys_base;
 	struct thermal_zone_device *tzdev;
+	void __iomem *apmixed_base, *auxadc_base;
 
 	mt = devm_kzalloc(&pdev->dev, sizeof(*mt), GFP_KERNEL);
 	if (!mt)
@@ -914,6 +1025,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
+	auxadc_base = of_iomap(auxadc, 0);
 	auxadc_phys_base = of_get_phys_base(auxadc);
 
 	of_node_put(auxadc);
@@ -929,6 +1041,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
+	apmixed_base = of_iomap(apmixedsys, 0);
 	apmixed_phys_base = of_get_phys_base(apmixedsys);
 
 	of_node_put(apmixedsys);
@@ -954,6 +1067,11 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 		goto err_disable_clk_auxadc;
 	}
 
+	if (mt->conf->version == MTK_THERMAL_V2) {
+		mtk_thermal_turn_on_buffer(apmixed_base);
+		mtk_thermal_release_periodic_ts(mt, auxadc_base);
+	}
+
 	for (ctrl_id = 0; ctrl_id < mt->conf->num_controller ; ctrl_id++)
 		for (i = 0; i < mt->conf->num_banks; i++)
 			mtk_thermal_init_bank(mt, i, apmixed_phys_base,
-- 
2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
