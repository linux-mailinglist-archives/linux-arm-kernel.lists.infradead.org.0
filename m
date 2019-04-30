Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4503FF3BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:10:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9h7Hg7hGwU0BlVjV0RTsDVjCoUjlxmAL2rtKGs2tpCo=; b=KX01nyPuGSw3W4z4ER4v5t2t9k
	7vexVmMNc+c4dvsE7CA0U80+NKKJXap4EwFjmtA/hECwkG64yOjDdNAQLHiVsOHaTXeuRewJxyHuR
	ahMNQ+HbhpTsm2lKUuts7xWePz5KKfa9+X0hTwRnhNo50fKrQE6TajccFLkhaGlrfKdZ58fpoUlkB
	svzC0yIOp31srDd6+f3Kfkb8hA1+LCZYB4DkQLeNelOIrUvwC/iEvZOCRWHhCjJCrRvIqsrivvjnP
	+nmG8VR8OKC3cxdPxtdsRTV4fTEodGLjVYG/gsHnZyKezuWJWasrHFH7B38PM/9NvRifgTMGiCmKU
	fpWyaEBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPiH-0003vC-Rg; Tue, 30 Apr 2019 10:10:13 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPi5-0003Xa-2n; Tue, 30 Apr 2019 10:10:02 +0000
Received: from zhangqing?rock-chips.com (unknown [192.168.167.190])
 by regular1.263xmail.com (Postfix) with ESMTP id 3CA569C2;
 Tue, 30 Apr 2019 18:09:53 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P7395T139736951809792S1556618984950678_; 
 Tue, 30 Apr 2019 18:09:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <cf5845e1d8890c57b2f732eafc9012fa>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 3/3] thermal: rockchip: Support the PX30 SoC in thermal
 driver
Date: Tue, 30 Apr 2019 18:09:46 +0800
Message-Id: <1556618986-18923-4-git-send-email-zhangqing@rock-chips.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
References: <1556618986-18923-1-git-send-email-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_031001_509701_F6415674 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Elaine Zhang <zhangqing@rock-chips.com>, huangtao@rock-chips.com,
 linux-pm@vger.kernel.org, xxx@rock-chips.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, xf@rock-chips.com, edubezval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, rui.zhang@intel.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PX30 SOC has two Temperature Sensors for CPU and GPU.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/thermal/rockchip_thermal.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 6dc7fc516abf..bda1ca199abd 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -225,11 +225,15 @@ struct rockchip_thermal_data {
 #define GRF_TSADC_TESTBIT_L			0x0e648
 #define GRF_TSADC_TESTBIT_H			0x0e64c
 
+#define PX30_GRF_SOC_CON2			0x0408
+
 #define GRF_SARADC_TESTBIT_ON			(0x10001 << 2)
 #define GRF_TSADC_TESTBIT_H_ON			(0x10001 << 2)
 #define GRF_TSADC_VCM_EN_L			(0x10001 << 7)
 #define GRF_TSADC_VCM_EN_H			(0x10001 << 7)
 
+#define GRF_CON_TSADC_CH_INV			(0x10001 << 1)
+
 /**
  * struct tsadc_table - code to temperature conversion table
  * @code: the value of adc channel
@@ -692,6 +696,13 @@ static void rk_tsadcv3_initialize(struct regmap *grf, void __iomem *regs,
 			       regs + TSADCV2_AUTO_CON);
 }
 
+static void rk_tsadcv4_initialize(struct regmap *grf, void __iomem *regs,
+				  enum tshut_polarity tshut_polarity)
+{
+	rk_tsadcv2_initialize(grf, regs, tshut_polarity);
+	regmap_write(grf, PX30_GRF_SOC_CON2, GRF_CON_TSADC_CH_INV);
+}
+
 static void rk_tsadcv2_irq_ack(void __iomem *regs)
 {
 	u32 val;
@@ -821,6 +832,30 @@ static void rk_tsadcv2_tshut_mode(int chn, void __iomem *regs,
 	writel_relaxed(val, regs + TSADCV2_INT_EN);
 }
 
+static const struct rockchip_tsadc_chip px30_tsadc_data = {
+	.chn_id[SENSOR_CPU] = 0, /* cpu sensor is channel 0 */
+	.chn_id[SENSOR_GPU] = 1, /* gpu sensor is channel 1 */
+	.chn_num = 2, /* 2 channels for tsadc */
+
+	.tshut_mode = TSHUT_MODE_CRU, /* default TSHUT via CRU */
+	.tshut_temp = 95000,
+
+	.initialize = rk_tsadcv4_initialize,
+	.irq_ack = rk_tsadcv3_irq_ack,
+	.control = rk_tsadcv3_control,
+	.get_temp = rk_tsadcv2_get_temp,
+	.set_alarm_temp = rk_tsadcv2_alarm_temp,
+	.set_tshut_temp = rk_tsadcv2_tshut_temp,
+	.set_tshut_mode = rk_tsadcv2_tshut_mode,
+
+	.table = {
+		.id = rk3328_code_table,
+		.length = ARRAY_SIZE(rk3328_code_table),
+		.data_mask = TSADCV2_DATA_MASK,
+		.mode = ADC_INCREMENT,
+	},
+};
+
 static const struct rockchip_tsadc_chip rv1108_tsadc_data = {
 	.chn_id[SENSOR_CPU] = 0, /* cpu sensor is channel 0 */
 	.chn_num = 1, /* one channel for tsadc */
@@ -993,6 +1028,9 @@ static void rk_tsadcv2_tshut_mode(int chn, void __iomem *regs,
 };
 
 static const struct of_device_id of_rockchip_thermal_match[] = {
+	{	.compatible = "rockchip,px30-tsadc",
+		.data = (void *)&px30_tsadc_data,
+	},
 	{
 		.compatible = "rockchip,rv1108-tsadc",
 		.data = (void *)&rv1108_tsadc_data,
-- 
1.9.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
