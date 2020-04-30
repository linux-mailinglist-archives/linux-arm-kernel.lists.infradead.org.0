Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5101B1BF413
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 11:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiyCi984KeU3LWsXhHLb9L+kCdtdYZHFquIGLBY1y+A=; b=hl5a8xH8W+6GZo
	O8jxwSXXXe7FeF92Iz5fZnw8BlJhscfAVvHvAgJOtDTx7jwTM8Jdsn20t43Q8qkt21yGWHAMAlF2/
	6Eqopx9/WAyYDbBTt9lQZOOqq9F1nRzPYeOjew0z+Tng57GVyhoq6SJQ+LBSIftPrFS1N/C7JoW2R
	90dUPSE3oJ5y5VNvyCZVkj5q5vc1SYI0YdMm3GpsyWEo3un+aOvE8KGReqluOMtJsxOsuJ/WcE+hs
	rh+0KF4Wlr4YreVFwXR6G4bLrN5BR2TxIrgUCawj5pa/bjJl55jfhktu0i7y1alJpMIg1b7xETmJQ
	AxbgJ956AdRTr6WZp0lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5Rg-0000Eb-7g; Thu, 30 Apr 2020 09:25:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5R2-0008Nj-PB; Thu, 30 Apr 2020 09:24:50 +0000
X-UUID: fe32c79849d04cf8ad07333e605edec6-20200430
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=FMiN3IO1GCMdXmYJ4tb+VErwGj8w9GUJT7bbTjKdszA=; 
 b=kQcv0vLHFfPBLNfjgZHROplGpk6fYRgxjA50Xg9JNHWUBDkWXBfvPVMY9VRtH4dYxIFNyVG5JJlphYlcZ+YfcbhVzYoCIouoeXf82XVk5/Tqtvwm/tCzKw53+AG5q/BDjzJMB0S4jkPC7Vp2C3cWvRlCusVFr73rJFKLP6aq35Y=;
X-UUID: fe32c79849d04cf8ad07333e605edec6-20200430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <henry.yen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1735626667; Thu, 30 Apr 2020 01:24:37 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 02:14:39 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 30 Apr 2020 17:14:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 30 Apr 2020 17:14:41 +0800
From: Henry Yen <henry.yen@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/2] thermal: mediatek: prepare to add support for other
 platforms
Date: Thu, 30 Apr 2020 17:14:33 +0800
Message-ID: <1588238074-19338-2-git-send-email-henry.yen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1588238074-19338-1-git-send-email-henry.yen@mediatek.com>
References: <1588238074-19338-1-git-send-email-henry.yen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_022448_825357_07C485A4 
X-CRM114-Status: GOOD (  12.94  )
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

It is known that Mediatek owns two thermal systems, which only differ
in the way of reading calibration data and converting temperature.
MT8173, MT8183, MT2701 and MT2712 belongs to version 1 thermal
system, and MT7622 belongs to version 2.

In order to handle both systems, the suffix _V1 is appended to the
current code, and then the second patch will add _V2 functions with
the same purpose but different implementation.

Signed-off-by: Henry Yen <henry.yen@mediatek.com>
---
 drivers/thermal/mtk_thermal.c | 114 ++++++++++++++++++----------------
 1 file changed, 62 insertions(+), 52 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index 76e30603d4d5..10107d9d56a8 100644
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
@@ -525,7 +525,7 @@ static const struct mtk_thermal_data mt8183_thermal_data = {
  * This converts the raw ADC value to mcelsius using the SoC specific
  * calibration constants
  */
-static int raw_to_mcelsius(struct mtk_thermal *mt, int sensno, s32 raw)
+static int raw_to_mcelsius_v1(struct mtk_thermal *mt, int sensno, s32 raw)
 {
 	s32 tmp;
 
@@ -594,9 +594,9 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
 		raw = readl(mt->thermal_base +
 			    conf->msr[conf->bank_data[bank->id].sensors[i]]);
 
-		temp = raw_to_mcelsius(mt,
-				       conf->bank_data[bank->id].sensors[i],
-				       raw);
+		temp = raw_to_mcelsius_v1(mt,
+					  conf->bank_data[bank->id].sensors[i],
+					  raw);
 
 		/*
 		 * The first read of a sensor often contains very high bogus
@@ -758,6 +758,51 @@ static u64 of_get_phys_base(struct device_node *np)
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
@@ -793,43 +838,8 @@ static int mtk_thermal_get_calibration_data(struct device *dev,
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
+	if (mtk_thermal_extract_efuse_v1(mt, buf))
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
