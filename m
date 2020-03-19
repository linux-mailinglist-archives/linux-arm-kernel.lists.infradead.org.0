Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F4518B09C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:56:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXiqCwdD/Qh25C9KMyDvquG5cNi1Zb72UE0v6d8KXDY=; b=ezou1UfW+g72kr
	W1Eb5nTLmJ0aA0ezHj84ssE5sh/ubdRWoowvdSPXnB54VHVbx4nkAiI2IknnFmRBhpyvWhzXHcfDZ
	ivP3VNG3JZZlHraCRk5tK3AXcpI0Qdvtom7bgVhcnHdm8LwYej7ribO4jXwbT0GhzJWBVvwtvdpnR
	uBT9VTd4vfvIr7HqHuX2YeP/E69V2/lNcDqbW+JdpkmYUlwu1Fdsv+Lo5rqlkdc8P75TNasWdLSl0
	5eaYklia0cPu/VpC5YglCAlm27OQX3PYJmELHD/acgKs/P3hbSoMgUB2MvRPTmFp669oHo1n5Hg4Z
	JmYZynyqhvYhT/7RW7oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEruF-0002Vt-44; Thu, 19 Mar 2020 09:56:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErtt-0002Ll-32; Thu, 19 Mar 2020 09:55:42 +0000
X-UUID: f72db802757a41cb94733655e389e2a2-20200319
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=zswPWHVhfJ7nFxwbL6xqlaMcZR4nTaQJcaTzmyhFPTc=; 
 b=oDu5HOAerXAicaIbeHfR2aPCrO5CalBDSdIwGBGs+dq6PbbQfQtS4IO7VVW7r9lAOGRJ9Ur+MWReom8m8M0tVn5QKYLC/Iiz+trpXHTHLSyqhd1P72gODT7CTf+0Gwlbt0JlBwY1nMs9WAjznU68DuGQ55Pw/PTBpPNi2KA5Qto=;
X-UUID: f72db802757a41cb94733655e389e2a2-20200319
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <henry.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2020755195; Thu, 19 Mar 2020 01:55:39 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Mar 2020 02:56:10 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Mar 2020 17:54:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 19 Mar 2020 17:52:32 +0800
From: Henry Yen <henry.yen@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/2] thermal: mediatek: prepare to add support for other
 platforms
Date: Thu, 19 Mar 2020 17:54:52 +0800
Message-ID: <1584611693-3553-2-git-send-email-henry.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584611693-3553-1-git-send-email-henry.yen@mediatek.com>
References: <1584611693-3553-1-git-send-email-henry.yen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_025541_184184_D88098B2 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

It is known that Mediatek owns two thermal system, which differs
in the way of reading calibration data and converting temperature.
MT8173, MT2701, MT2712 and MT8183 belongs to version 1 thermal
system, and MT7622 belongs to version 2 thermal system.
For platform compatibility, we add two sensor ops (extract and
convert) to the thermal data structure. Each platform will register
the sensor ops to the proper function implementation according to
its version.

Signed-off-by: Henry Yen <henry.yen@mediatek.com>
---
 drivers/thermal/mtk_thermal.c | 148 +++++++++++++++++++++-------------
 1 file changed, 93 insertions(+), 55 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index 76e30603d4d5..13e17c31ba3b 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -120,18 +120,18 @@
  * MT2701 has 3 sensors and needs 3 VTS calibration data.
  * MT2712 has 4 sensors and needs 4 VTS calibration data.
  */
-#define CALIB_BUF0_VALID		BIT(0)
-#define CALIB_BUF1_ADC_GE(x)		(((x) >> 22) & 0x3ff)
-#define CALIB_BUF0_VTS_TS1(x)		(((x) >> 17) & 0x1ff)
-#define CALIB_BUF0_VTS_TS2(x)		(((x) >> 8) & 0x1ff)
-#define CALIB_BUF1_VTS_TS3(x)		(((x) >> 0) & 0x1ff)
-#define CALIB_BUF2_VTS_TS4(x)		(((x) >> 23) & 0x1ff)
-#define CALIB_BUF2_VTS_TS5(x)		(((x) >> 5) & 0x1ff)
-#define CALIB_BUF2_VTS_TSABB(x)		(((x) >> 14) & 0x1ff)
-#define CALIB_BUF0_DEGC_CALI(x)		(((x) >> 1) & 0x3f)
-#define CALIB_BUF0_O_SLOPE(x)		(((x) >> 26) & 0x3f)
-#define CALIB_BUF0_O_SLOPE_SIGN(x)	(((x) >> 7) & 0x1)
-#define CALIB_BUF1_ID(x)		(((x) >> 9) & 0x1)
+#define CALIB_BUF0_VALID_V1		BIT(0)
+#define CALIB_BUF1_ADC_GE_V1(x)		(((x) >> 22) & 0x3ff)
+#define CALIB_BUF0_VTS_TS1_V1(x)	(((x) >> 17) & 0x1ff)
+#define CALIB_BUF0_VTS_TS2_V1(x)	(((x) >> 8) & 0x1ff)
+#define CALIB_BUF1_VTS_TS3_V1(x)	(((x) >> 0) & 0x1ff)
+#define CALIB_BUF2_VTS_TS4_V1(x)	(((x) >> 23) & 0x1ff)
+#define CALIB_BUF2_VTS_TS5_V1(x)	(((x) >> 5) & 0x1ff)
+#define CALIB_BUF2_VTS_TSABB_V1(x)	(((x) >> 14) & 0x1ff)
+#define CALIB_BUF0_DEGC_CALI_V1(x)	(((x) >> 1) & 0x3f)
+#define CALIB_BUF0_O_SLOPE_V1(x)	(((x) >> 26) & 0x3f)
+#define CALIB_BUF0_O_SLOPE_SIGN_V1(x)	(((x) >> 7) & 0x1)
+#define CALIB_BUF1_ID_V1(x)		(((x) >> 9) & 0x1)
 
 enum {
 	VTS1,
@@ -143,6 +143,11 @@ enum {
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
@@ -245,6 +250,9 @@ struct mtk_thermal_data {
 	const int *controller_offset;
 	bool need_switch_bank;
 	struct thermal_bank_cfg bank_data[MAX_NUM_ZONES];
+	enum mtk_thermal_version version;
+	int (*extract)(struct mtk_thermal *mt, u32 *buf);
+	int (*convert)(struct mtk_thermal *mt, int sensno, s32 raw);
 };
 
 struct mtk_thermal {
@@ -358,6 +366,9 @@ static const int mt7622_mux_values[MT7622_NUM_SENSORS] = { 0, };
 static const int mt7622_vts_index[MT7622_NUM_SENSORS] = { VTS1 };
 static const int mt7622_tc_offset[MT7622_NUM_CONTROLLER] = { 0x0, };
 
+static int mtk_thermal_extract_efuse_v1(struct mtk_thermal *mt, u32 *buf);
+static int raw_to_mcelsius_v1(struct mtk_thermal *mt, int sensno, s32 raw);
+
 /*
  * The MT8173 thermal controller has four banks. Each bank can read up to
  * four temperature sensors simultaneously. The MT8173 has a total of 5
@@ -398,6 +409,9 @@ static const struct mtk_thermal_data mt8173_thermal_data = {
 	.msr = mt8173_msr,
 	.adcpnp = mt8173_adcpnp,
 	.sensor_mux_values = mt8173_mux_values,
+	.version = MTK_THERMAL_V1,
+	.extract = mtk_thermal_extract_efuse_v1,
+	.convert = raw_to_mcelsius_v1,
 };
 
 /*
@@ -428,6 +442,9 @@ static const struct mtk_thermal_data mt2701_thermal_data = {
 	.msr = mt2701_msr,
 	.adcpnp = mt2701_adcpnp,
 	.sensor_mux_values = mt2701_mux_values,
+	.version = MTK_THERMAL_V1,
+	.extract = mtk_thermal_extract_efuse_v1,
+	.convert = raw_to_mcelsius_v1,
 };
 
 /*
@@ -458,6 +475,9 @@ static const struct mtk_thermal_data mt2712_thermal_data = {
 	.msr = mt2712_msr,
 	.adcpnp = mt2712_adcpnp,
 	.sensor_mux_values = mt2712_mux_values,
+	.version = MTK_THERMAL_V1,
+	.extract = mtk_thermal_extract_efuse_v1,
+	.convert = raw_to_mcelsius_v1,
 };
 
 /*
@@ -482,6 +502,9 @@ static const struct mtk_thermal_data mt7622_thermal_data = {
 	.msr = mt7622_msr,
 	.adcpnp = mt7622_adcpnp,
 	.sensor_mux_values = mt7622_mux_values,
+	.version = MTK_THERMAL_V2,
+	.extract = mtk_thermal_extract_efuse_v1,
+	.convert = raw_to_mcelsius_v1,
 };
 
 /*
@@ -514,6 +537,9 @@ static const struct mtk_thermal_data mt8183_thermal_data = {
 	.msr = mt8183_msr,
 	.adcpnp = mt8183_adcpnp,
 	.sensor_mux_values = mt8183_mux_values,
+	.version = MTK_THERMAL_V1,
+	.extract = mtk_thermal_extract_efuse_v1,
+	.convert = raw_to_mcelsius_v1,
 };
 
 /**
@@ -525,7 +551,7 @@ static const struct mtk_thermal_data mt8183_thermal_data = {
  * This converts the raw ADC value to mcelsius using the SoC specific
  * calibration constants
  */
-static int raw_to_mcelsius(struct mtk_thermal *mt, int sensno, s32 raw)
+static int raw_to_mcelsius_v1(struct mtk_thermal *mt, int sensno, s32 raw)
 {
 	s32 tmp;
 
@@ -594,9 +620,9 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
 		raw = readl(mt->thermal_base +
 			    conf->msr[conf->bank_data[bank->id].sensors[i]]);
 
-		temp = raw_to_mcelsius(mt,
-				       conf->bank_data[bank->id].sensors[i],
-				       raw);
+		temp = conf->convert(mt,
+				     conf->bank_data[bank->id].sensors[i],
+				     raw);
 
 		/*
 		 * The first read of a sensor often contains very high bogus
@@ -698,9 +724,11 @@ static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
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
@@ -758,6 +786,51 @@ static u64 of_get_phys_base(struct device_node *np)
 	return of_translate_address(np, regaddr_p);
 }
 
+static int mtk_thermal_extract_efuse_v1(struct mtk_thermal *mt, u32 *buf)
+{
+	int i;
+
+	if (!(buf[0] & CALIB_BUF0_VALID_V1))
+		return -EINVAL;
+
+	mt->adc_ge = CALIB_BUF1_ADC_GE_V1(buf[1]);
+
+	for (i = 0; i < mt->conf->num_sensors; i++) {
+		switch (mt->conf->vts_index[i]) {
+		case VTS1:
+			mt->vts[VTS1] = CALIB_BUF0_VTS_TS1_V1(buf[0]);
+			break;
+		case VTS2:
+			mt->vts[VTS2] = CALIB_BUF0_VTS_TS2_V1(buf[0]);
+			break;
+		case VTS3:
+			mt->vts[VTS3] = CALIB_BUF1_VTS_TS3_V1(buf[1]);
+			break;
+		case VTS4:
+			mt->vts[VTS4] = CALIB_BUF2_VTS_TS4_V1(buf[2]);
+			break;
+		case VTS5:
+			mt->vts[VTS5] = CALIB_BUF2_VTS_TS5_V1(buf[2]);
+			break;
+		case VTSABB:
+			mt->vts[VTSABB] =
+				CALIB_BUF2_VTS_TSABB_V1(buf[2]);
+			break;
+		default:
+			break;
+		}
+	}
+
+	mt->degc_cali = CALIB_BUF0_DEGC_CALI_V1(buf[0]);
+	if (CALIB_BUF1_ID_V1(buf[1]) &
+	    CALIB_BUF0_O_SLOPE_SIGN_V1(buf[0]))
+		mt->o_slope = -CALIB_BUF0_O_SLOPE_V1(buf[0]);
+	else
+		mt->o_slope = CALIB_BUF0_O_SLOPE_V1(buf[0]);
+
+	return 0;
+}
+
 static int mtk_thermal_get_calibration_data(struct device *dev,
 					    struct mtk_thermal *mt)
 {
@@ -793,43 +866,8 @@ static int mtk_thermal_get_calibration_data(struct device *dev,
 		goto out;
 	}
 
-	if (buf[0] & CALIB_BUF0_VALID) {
-		mt->adc_ge = CALIB_BUF1_ADC_GE(buf[1]);
-
-		for (i = 0; i < mt->conf->num_sensors; i++) {
-			switch (mt->conf->vts_index[i]) {
-			case VTS1:
-				mt->vts[VTS1] = CALIB_BUF0_VTS_TS1(buf[0]);
-				break;
-			case VTS2:
-				mt->vts[VTS2] = CALIB_BUF0_VTS_TS2(buf[0]);
-				break;
-			case VTS3:
-				mt->vts[VTS3] = CALIB_BUF1_VTS_TS3(buf[1]);
-				break;
-			case VTS4:
-				mt->vts[VTS4] = CALIB_BUF2_VTS_TS4(buf[2]);
-				break;
-			case VTS5:
-				mt->vts[VTS5] = CALIB_BUF2_VTS_TS5(buf[2]);
-				break;
-			case VTSABB:
-				mt->vts[VTSABB] = CALIB_BUF2_VTS_TSABB(buf[2]);
-				break;
-			default:
-				break;
-			}
-		}
-
-		mt->degc_cali = CALIB_BUF0_DEGC_CALI(buf[0]);
-		if (CALIB_BUF1_ID(buf[1]) &
-		    CALIB_BUF0_O_SLOPE_SIGN(buf[0]))
-			mt->o_slope = -CALIB_BUF0_O_SLOPE(buf[0]);
-		else
-			mt->o_slope = CALIB_BUF0_O_SLOPE(buf[0]);
-	} else {
+	if (mt->conf->extract(mt, buf))
 		dev_info(dev, "Device not calibrated, using default calibration values\n");
-	}
 
 out:
 	kfree(buf);
-- 
2.17.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
