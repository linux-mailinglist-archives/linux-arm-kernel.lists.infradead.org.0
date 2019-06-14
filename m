Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB80B452F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eZFVDmMeTdpgsUHA2Q9zYUWK8HDmfCd5FmeGPChl0VU=; b=OSk19g5Hz9bFigHa3+VCbSCoGr
	kDdZgDi+xXeiC4fIy6gfuqjXqoYbMBYZqVMGLpkOlRlNVz85H/Wd4vPELSWqaASRjWWwFP2fHvAie
	LwI+iXHVSJUVm4Tak4M4+Xi1yKqoZqWeUXlZBg6ihpQ7e8IYfSES1H3SsbebZSFtPvvrfjsx48QT0
	zRgo+Ik+kvThTkbe7gxycBAprk646K4C3Vj1pXo5bl4S4OQR/QV0guckpH1WVDQmseI564kjrY8sb
	i4+owz7N+8o5GAgaK7HSetKzQk15ZrkpgLcz5b4Ux/GBP3p3IqfKGxyLuablzCLoZaEJAkUV820D0
	UKtjPOPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcvC-000383-Jy; Fri, 14 Jun 2019 03:30:34 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbciT-0005tL-6g; Fri, 14 Jun 2019 03:17:28 +0000
Received: from tony.xie?rock-chips.com (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3BC875BF9A;
 Fri, 14 Jun 2019 11:17:23 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 1
X-MAIL-DELIVERY: 0
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22496T139642985051904S1560482240281362_; 
 Fri, 14 Jun 2019 11:17:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fa6020bbb65ef83a20c8010fac6ecd56>
X-RL-SENDER: tony.xie@rock-chips.com
X-SENDER: xxx@rock-chips.com
X-LOGIN-NAME: tony.xie@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
From: Tony Xie <tony.xie@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v9 5/6] rtc: rk808: add RK809 and RK817 support.
Date: Thu, 13 Jun 2019 23:17:18 -0400
Message-Id: <20190614031718.15845-1-tony.xie@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614031425.15741-1-tony.xie@rock-chips.com>
References: <20190614031425.15741-1-tony.xie@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201725_656411_4357ECBB 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 tony.xie@rock-chips.com, huangtao@rock-chips.com, devicetree@vger.kernel.org,
 sboyd@kernel.org, zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, xsf@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, chenjh@rock-chips.com, lee.jones@linaro.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RK809 and RK817 are power management IC chips for multimedia products.
Most of their functions and registers are same, including the rtc.

Signed-off-by: Tony Xie <tony.xie@rock-chips.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/Kconfig     |  4 +--
 drivers/rtc/rtc-rk808.c | 68 ++++++++++++++++++++++++++++++++---------
 2 files changed, 56 insertions(+), 16 deletions(-)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index a819ef07b7ec..8c34f7ec0a59 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -363,11 +363,11 @@ config RTC_DRV_MAX77686
 	  will be called rtc-max77686.
 
 config RTC_DRV_RK808
-	tristate "Rockchip RK805/RK808/RK818 RTC"
+	tristate "Rockchip RK805/RK808/RK809/RK817/RK818 RTC"
 	depends on MFD_RK808
 	help
 	  If you say yes here you will get support for the
-	  RTC of RK805, RK808 and RK818 PMIC.
+	  RTC of RK805, RK809 and RK817, RK808 and RK818 PMIC.
 
 	  This driver can also be built as a module. If so, the module
 	  will be called rk808-rtc.
diff --git a/drivers/rtc/rtc-rk808.c b/drivers/rtc/rtc-rk808.c
index 739c0d42e835..5bacdafb7b21 100644
--- a/drivers/rtc/rtc-rk808.c
+++ b/drivers/rtc/rtc-rk808.c
@@ -50,9 +50,18 @@
 #define NUM_TIME_REGS	(RK808_WEEKS_REG - RK808_SECONDS_REG + 1)
 #define NUM_ALARM_REGS	(RK808_ALARM_YEARS_REG - RK808_ALARM_SECONDS_REG + 1)
 
+struct rk_rtc_compat_reg {
+	unsigned int ctrl_reg;
+	unsigned int status_reg;
+	unsigned int alarm_seconds_reg;
+	unsigned int int_reg;
+	unsigned int seconds_reg;
+};
+
 struct rk808_rtc {
 	struct rk808 *rk808;
 	struct rtc_device *rtc;
+	struct rk_rtc_compat_reg *creg;
 	int irq;
 };
 
@@ -101,7 +110,7 @@ static int rk808_rtc_readtime(struct device *dev, struct rtc_time *tm)
 	int ret;
 
 	/* Force an update of the shadowed registers right now */
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_CTRL_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
 				 BIT_RTC_CTRL_REG_RTC_GET_TIME,
 				 BIT_RTC_CTRL_REG_RTC_GET_TIME);
 	if (ret) {
@@ -115,7 +124,7 @@ static int rk808_rtc_readtime(struct device *dev, struct rtc_time *tm)
 	 * 32khz. If we clear the GET_TIME bit here, the time of i2c transfer
 	 * certainly more than 31.25us: 16 * 2.5us at 400kHz bus frequency.
 	 */
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_CTRL_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
 				 BIT_RTC_CTRL_REG_RTC_GET_TIME,
 				 0);
 	if (ret) {
@@ -123,7 +132,7 @@ static int rk808_rtc_readtime(struct device *dev, struct rtc_time *tm)
 		return ret;
 	}
 
-	ret = regmap_bulk_read(rk808->regmap, RK808_SECONDS_REG,
+	ret = regmap_bulk_read(rk808->regmap, rk808_rtc->creg->seconds_reg,
 			       rtc_data, NUM_TIME_REGS);
 	if (ret) {
 		dev_err(dev, "Failed to bulk read rtc_data: %d\n", ret);
@@ -166,7 +175,7 @@ static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
 	rtc_data[6] = bin2bcd(tm->tm_wday);
 
 	/* Stop RTC while updating the RTC registers */
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_CTRL_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
 				 BIT_RTC_CTRL_REG_STOP_RTC_M,
 				 BIT_RTC_CTRL_REG_STOP_RTC_M);
 	if (ret) {
@@ -174,14 +183,14 @@ static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
 		return ret;
 	}
 
-	ret = regmap_bulk_write(rk808->regmap, RK808_SECONDS_REG,
+	ret = regmap_bulk_write(rk808->regmap, rk808_rtc->creg->seconds_reg,
 				rtc_data, NUM_TIME_REGS);
 	if (ret) {
 		dev_err(dev, "Failed to bull write rtc_data: %d\n", ret);
 		return ret;
 	}
 	/* Start RTC again */
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_CTRL_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
 				 BIT_RTC_CTRL_REG_STOP_RTC_M, 0);
 	if (ret) {
 		dev_err(dev, "Failed to update RTC control: %d\n", ret);
@@ -199,8 +208,13 @@ static int rk808_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
 	uint32_t int_reg;
 	int ret;
 
-	ret = regmap_bulk_read(rk808->regmap, RK808_ALARM_SECONDS_REG,
+	ret = regmap_bulk_read(rk808->regmap,
+			       rk808_rtc->creg->alarm_seconds_reg,
 			       alrm_data, NUM_ALARM_REGS);
+	if (ret) {
+		dev_err(dev, "Failed to read RTC alarm date REG: %d\n", ret);
+		return ret;
+	}
 
 	alrm->time.tm_sec = bcd2bin(alrm_data[0] & SECONDS_REG_MSK);
 	alrm->time.tm_min = bcd2bin(alrm_data[1] & MINUTES_REG_MAK);
@@ -210,7 +224,7 @@ static int rk808_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
 	alrm->time.tm_year = (bcd2bin(alrm_data[5] & YEARS_REG_MSK)) + 100;
 	rockchip_to_gregorian(&alrm->time);
 
-	ret = regmap_read(rk808->regmap, RK808_RTC_INT_REG, &int_reg);
+	ret = regmap_read(rk808->regmap, rk808_rtc->creg->int_reg, &int_reg);
 	if (ret) {
 		dev_err(dev, "Failed to read RTC INT REG: %d\n", ret);
 		return ret;
@@ -231,7 +245,7 @@ static int rk808_rtc_stop_alarm(struct rk808_rtc *rk808_rtc)
 	struct rk808 *rk808 = rk808_rtc->rk808;
 	int ret;
 
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_INT_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->int_reg,
 				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M, 0);
 
 	return ret;
@@ -242,7 +256,7 @@ static int rk808_rtc_start_alarm(struct rk808_rtc *rk808_rtc)
 	struct rk808 *rk808 = rk808_rtc->rk808;
 	int ret;
 
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_INT_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->int_reg,
 				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M,
 				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
 
@@ -274,7 +288,8 @@ static int rk808_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
 	alrm_data[4] = bin2bcd(alrm->time.tm_mon + 1);
 	alrm_data[5] = bin2bcd(alrm->time.tm_year - 100);
 
-	ret = regmap_bulk_write(rk808->regmap, RK808_ALARM_SECONDS_REG,
+	ret = regmap_bulk_write(rk808->regmap,
+				rk808_rtc->creg->alarm_seconds_reg,
 				alrm_data, NUM_ALARM_REGS);
 	if (ret) {
 		dev_err(dev, "Failed to bulk write: %d\n", ret);
@@ -318,7 +333,7 @@ static irqreturn_t rk808_alarm_irq(int irq, void *data)
 	struct i2c_client *client = rk808->i2c;
 	int ret;
 
-	ret = regmap_write(rk808->regmap, RK808_RTC_STATUS_REG,
+	ret = regmap_write(rk808->regmap, rk808_rtc->creg->status_reg,
 			   RTC_STATUS_MASK);
 	if (ret) {
 		dev_err(&client->dev,
@@ -371,6 +386,22 @@ static int rk808_rtc_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(rk808_rtc_pm_ops,
 	rk808_rtc_suspend, rk808_rtc_resume);
 
+static struct rk_rtc_compat_reg rk808_creg = {
+	.ctrl_reg = RK808_RTC_CTRL_REG,
+	.status_reg = RK808_RTC_STATUS_REG,
+	.alarm_seconds_reg = RK808_ALARM_SECONDS_REG,
+	.int_reg = RK808_RTC_INT_REG,
+	.seconds_reg = RK808_SECONDS_REG,
+};
+
+static struct rk_rtc_compat_reg rk817_creg = {
+	.ctrl_reg = RK817_RTC_CTRL_REG,
+	.status_reg = RK817_RTC_STATUS_REG,
+	.alarm_seconds_reg = RK817_ALARM_SECONDS_REG,
+	.int_reg = RK817_RTC_INT_REG,
+	.seconds_reg = RK817_SECONDS_REG,
+};
+
 static int rk808_rtc_probe(struct platform_device *pdev)
 {
 	struct rk808 *rk808 = dev_get_drvdata(pdev->dev.parent);
@@ -381,11 +412,20 @@ static int rk808_rtc_probe(struct platform_device *pdev)
 	if (rk808_rtc == NULL)
 		return -ENOMEM;
 
+	switch (rk808->variant) {
+	case RK809_ID:
+	case RK817_ID:
+		rk808_rtc->creg = &rk817_creg;
+		break;
+	default:
+		rk808_rtc->creg = &rk808_creg;
+		break;
+	}
 	platform_set_drvdata(pdev, rk808_rtc);
 	rk808_rtc->rk808 = rk808;
 
 	/* start rtc running by default, and use shadowed timer. */
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_CTRL_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
 				 BIT_RTC_CTRL_REG_STOP_RTC_M |
 				 BIT_RTC_CTRL_REG_RTC_READSEL_M,
 				 BIT_RTC_CTRL_REG_RTC_READSEL_M);
@@ -395,7 +435,7 @@ static int rk808_rtc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = regmap_write(rk808->regmap, RK808_RTC_STATUS_REG,
+	ret = regmap_write(rk808->regmap, rk808_rtc->creg->status_reg,
 			   RTC_STATUS_MASK);
 	if (ret) {
 		dev_err(&pdev->dev,
-- 
2.17.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
