Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AAA3362A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uF8EtOty4WQ5rFM3N5TLG3e+BKXA/nPdBSl4n5cUrKw=; b=JKwXMBG5SO9tdP
	B8Pv9zgbg/UbQhmG/tdqDGvz7bY2FYYYmsQhTV/KrqUkcCfHz2oYB7J2c2z2UhQxbyJtGprrg0Vvy
	qT5XgJIz8RBhyfmo7ANOgUbnhSmUxolEnLNoly9cjxHMcpuQNYiKzAnMFrt19BeROJlkDfCuXVapf
	2MqyE5axTYs+ygJ+9RRczFXY9ruyhHkhxksXLVXUSci2Agkdcdy9KHIBYMYseJALdwuLVwr3hqq6/
	cbtnzp+ALzfz6iV/fWqzEZ+2LayFE+ZNj3aYk8wVQ7Yv5CsBV22C4WeYaJmSM9A2k4fLen6OtvUm4
	txzSzDRdWpCKLLhwW6mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqTU-0002BO-TL; Mon, 03 Jun 2019 17:10:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqSk-0000ul-Hv; Mon, 03 Jun 2019 17:09:37 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hXqSf-0004ZW-OF; Mon, 03 Jun 2019 19:09:29 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org,
	lee.jones@linaro.org
Subject: [PATCH v8 RESEND 4/5] rtc: rk808: add RK809 and RK817 support.
Date: Mon,  3 Jun 2019 19:08:59 +0200
Message-Id: <20190603170900.5195-5-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603170900.5195-1-heiko@sntech.de>
References: <20190603170900.5195-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_100934_740879_BCCB96B9 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: huangtao@rock-chips.com, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, zhangqing@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Xie <tony.xie@rock-chips.com>

RK809 and RK817 are power management IC chips for multimedia products.
Most of their functions and registers are same, including the rtc.

Signed-off-by: Tony Xie <tony.xie@rock-chips.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/rtc/Kconfig     |  4 +--
 drivers/rtc/rtc-rk808.c | 68 ++++++++++++++++++++++++++++++++---------
 2 files changed, 56 insertions(+), 16 deletions(-)

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index f933c06bff4f..6a7b367be26c 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -373,11 +373,11 @@ config RTC_DRV_MAX77686
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
index 1fb864d4ef83..4e95b6a0a68e 100644
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
@@ -162,7 +171,7 @@ static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
 	rtc_data[6] = bin2bcd(tm->tm_wday);
 
 	/* Stop RTC while updating the RTC registers */
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_CTRL_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->ctrl_reg,
 				 BIT_RTC_CTRL_REG_STOP_RTC_M,
 				 BIT_RTC_CTRL_REG_STOP_RTC_M);
 	if (ret) {
@@ -170,14 +179,14 @@ static int rk808_rtc_set_time(struct device *dev, struct rtc_time *tm)
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
@@ -195,8 +204,13 @@ static int rk808_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
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
@@ -206,7 +220,7 @@ static int rk808_rtc_readalarm(struct device *dev, struct rtc_wkalrm *alrm)
 	alrm->time.tm_year = (bcd2bin(alrm_data[5] & YEARS_REG_MSK)) + 100;
 	rockchip_to_gregorian(&alrm->time);
 
-	ret = regmap_read(rk808->regmap, RK808_RTC_INT_REG, &int_reg);
+	ret = regmap_read(rk808->regmap, rk808_rtc->creg->int_reg, &int_reg);
 	if (ret) {
 		dev_err(dev, "Failed to read RTC INT REG: %d\n", ret);
 		return ret;
@@ -225,7 +239,7 @@ static int rk808_rtc_stop_alarm(struct rk808_rtc *rk808_rtc)
 	struct rk808 *rk808 = rk808_rtc->rk808;
 	int ret;
 
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_INT_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->int_reg,
 				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M, 0);
 
 	return ret;
@@ -236,7 +250,7 @@ static int rk808_rtc_start_alarm(struct rk808_rtc *rk808_rtc)
 	struct rk808 *rk808 = rk808_rtc->rk808;
 	int ret;
 
-	ret = regmap_update_bits(rk808->regmap, RK808_RTC_INT_REG,
+	ret = regmap_update_bits(rk808->regmap, rk808_rtc->creg->int_reg,
 				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M,
 				 BIT_RTC_INTERRUPTS_REG_IT_ALARM_M);
 
@@ -266,7 +280,8 @@ static int rk808_rtc_setalarm(struct device *dev, struct rtc_wkalrm *alrm)
 	alrm_data[4] = bin2bcd(alrm->time.tm_mon + 1);
 	alrm_data[5] = bin2bcd(alrm->time.tm_year - 100);
 
-	ret = regmap_bulk_write(rk808->regmap, RK808_ALARM_SECONDS_REG,
+	ret = regmap_bulk_write(rk808->regmap,
+				rk808_rtc->creg->alarm_seconds_reg,
 				alrm_data, NUM_ALARM_REGS);
 	if (ret) {
 		dev_err(dev, "Failed to bulk write: %d\n", ret);
@@ -310,7 +325,7 @@ static irqreturn_t rk808_alarm_irq(int irq, void *data)
 	struct i2c_client *client = rk808->i2c;
 	int ret;
 
-	ret = regmap_write(rk808->regmap, RK808_RTC_STATUS_REG,
+	ret = regmap_write(rk808->regmap, rk808_rtc->creg->status_reg,
 			   RTC_STATUS_MASK);
 	if (ret) {
 		dev_err(&client->dev,
@@ -363,6 +378,22 @@ static int rk808_rtc_resume(struct device *dev)
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
@@ -373,11 +404,20 @@ static int rk808_rtc_probe(struct platform_device *pdev)
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
@@ -387,7 +427,7 @@ static int rk808_rtc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	ret = regmap_write(rk808->regmap, RK808_RTC_STATUS_REG,
+	ret = regmap_write(rk808->regmap, rk808_rtc->creg->status_reg,
 			   RTC_STATUS_MASK);
 	if (ret) {
 		dev_err(&pdev->dev,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
