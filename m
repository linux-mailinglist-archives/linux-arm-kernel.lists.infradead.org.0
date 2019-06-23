Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421D14FD00
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:46:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l9S4FCU21DACti9jgYQuCP8qRKps9BncpHtEQ8pMqv4=; b=IHOs+TNnP/IwpAH9PPtnnNbRuO
	mEU8FIYWTb41CkXYuUqcHGmFqAXnJH77KjvvYKZtcpBUCGnbhxMspM1Tnw1sLhefJca8nEGKoKgCY
	Rplti9NynIaC6KrAfD+SCnrIzvGCKVqDlpNPXheifg5ltmhGwRS96zx4Jx1ntzmlSKglu3nUM1wkI
	OFMdI5Y+q+wWfbflFZeLs+FEmyIFtWY/Rozh0fsxhPhmRR0FPm/s2LaiFHDzd7bWFoogEq2RRcgsg
	oZbbMv2JtO7DJRgzxHc3zmAboOOMfeN4Vi1yvu2oNbVuRaQIQ6oEOHDaPOj7f8WqYTqriIm9XznGx
	7GLwEedA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5dT-0006eu-Gl; Sun, 23 Jun 2019 16:46:35 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5Za-0002mC-OU
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:36 +0000
Received: by mail-pg1-x541.google.com with SMTP id z19so2825428pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wt7RMWJEU5nf2APAW5wITney1vGRi8ExyzwA2ly5tbM=;
 b=DO56xL8GNC3pRjMbczek/js2aH+Jr00XhhADU2CusMADs20FUQ6om0QfFNRcH7bIok
 utY8iKwz2gs/7WHR18tlrl+XRM9KtdS9MZyCglgz5ZWErisPeGVp+BPEcw81Ezw1KyjP
 +I7gFX+cYEvLyjmwJRHb04L6mRZ4LjmdVX+GURXCGE4Ky2HFiZkXGwRma8nQVRg7xzb1
 OpjjtLiiCN+Zc/sg6Vk26H04UbcX2a5L9ZDyAyFJkne9LJuc3SjKpjccxQ4NfVaSg62X
 sX8QGDvadx5+1F6N6uKmqbh/oIFj9SbUUmdqZyIvf9VMIoiCKn8bIS68Io+mfdDuE05u
 4YKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Wt7RMWJEU5nf2APAW5wITney1vGRi8ExyzwA2ly5tbM=;
 b=L51O/MKIA3P0KBq22DMCRaQRLksdWce3+Y/IrETZ7S0VU4O0diAZtTjWYpRX4o+h/y
 Yfhu/4nAS+/fpcl7nAGhGYiCPnD6HLfE6tHgluWPUiXpzeDw6gMTxOI1vK8UtrKKPmxy
 m76G2y9ixoNh9+O7QU3S122St9kZuZxmAvjxkLcdhRHdi4WofeEUOXdZvzJfpyCCy3MY
 0S/KPl1Wv4qVsJEL/JvhAEqTl0MhiQWcANCNheP5jFiNdsqzRZGV/nP8XKEbh3VciqwG
 /THa9IJFSODd4MkPkS5xJ2MqTEUmPxFysYumw+sl/ZhR+45IcXonMWrNiZRwzCVWHWOw
 FyMA==
X-Gm-Message-State: APjAAAV47xBAknRSJaKFro4Q0N4aqTSnSNeogdINhpXhovXDswnEyGV1
 9+fReQG94HjDbrJhpEtzgiM=
X-Google-Smtp-Source: APXvYqyPdz3cE/WXdIcDs7kmAR8F/niCfqMamQH54dQcogysOpQv1BP/blKrSSByCMUg+zO2djgwVA==
X-Received: by 2002:a17:90a:7f02:: with SMTP id
 k2mr19642846pjl.78.1561308154262; 
 Sun, 23 Jun 2019 09:42:34 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id y17sm4923619pfe.148.2019.06.23.09.42.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:33 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 11/11] thermal: sun8i: add thermal driver for h3
Date: Sun, 23 Jun 2019 12:42:06 -0400
Message-Id: <20190623164206.7467-12-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094235_349924_67BB4D5B 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the support for allwinner h3 thermal sensor.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 72 +++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 260b24340f5b..c8ee291f3b17 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -27,6 +27,14 @@
 #define TEMP_TO_REG				672
 #define CALIBRATE_DEFAULT			0x800
 
+#define SUN8I_THS_CTRL0				0x00
+#define SUN8I_THS_CTRL2				0x40
+#define SUN8I_THS_IC				0x44
+#define SUN8I_THS_IS				0x48
+#define SUN8I_THS_MFC				0x70
+#define SUN8I_THS_TEMP_CALIB			0x74
+#define SUN8I_THS_TEMP_DATA			0x80
+
 #define SUN50I_THS_CTRL0			0x00
 #define SUN50I_H6_THS_ENABLE			0x04
 #define SUN50I_H6_THS_PC			0x08
@@ -36,6 +44,9 @@
 #define SUN50I_H6_THS_TEMP_CALIB		0xa0
 #define SUN50I_H6_THS_TEMP_DATA			0xc0
 
+#define SUN8I_THS_CTRL0_T_ACQ0(x)		(GENMASK(15, 0) & (x))
+#define SUN8I_THS_CTRL2_T_ACQ1(x)		((GENMASK(15, 0) & (x)) << 16)
+
 #define SUN50I_THS_CTRL0_T_ACQ(x)		((GENMASK(15, 0) & (x)) << 16)
 #define SUN50I_THS_FILTER_EN			BIT(2)
 #define SUN50I_THS_FILTER_TYPE(x)		(GENMASK(1, 0) & (x))
@@ -121,6 +132,21 @@ static const struct regmap_config config = {
 	.fast_io = true,
 };
 
+static int sun8i_h3_irq_ack(struct ths_device *tmdev)
+{
+	int state, ret = 0;
+
+	regmap_read(tmdev->regmap, SUN8I_THS_IS, &state);
+
+	if (state & BIT(8)) {
+		regmap_write(tmdev->regmap, SUN8I_THS_IS,
+			     BIT(8));
+		ret |= BIT(1);
+	}
+
+	return ret;
+}
+
 static int sun50i_h6_irq_ack(struct ths_device *tmdev)
 {
 	int i, state, ret = 0;
@@ -154,6 +180,14 @@ static irqreturn_t sun8i_irq_thread(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static int sun8i_h3_ths_calibrate(struct ths_device *tmdev,
+			       u16 *caldata, int callen)
+{
+	regmap_write(tmdev->regmap, SUN8I_THS_TEMP_CALIB, *caldata);
+
+	return 0;
+}
+
 static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
 				   u16 *caldata, int callen)
 {
@@ -325,6 +359,32 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	return ret;
 }
 
+static int sun8i_h3_thermal_init(struct ths_device *tmdev)
+{
+	/* average over 4 samples */
+	regmap_write(tmdev->regmap, SUN8I_THS_MFC,
+		     SUN50I_THS_FILTER_EN |
+		     SUN50I_THS_FILTER_TYPE(1));
+	/*
+	 * period = (x + 1) * 4096 / clkin; ~10ms
+	 * enable data interrupt
+	 */
+	regmap_write(tmdev->regmap, SUN8I_THS_IC,
+		     SUN50I_H6_THS_PC_TEMP_PERIOD(58) | BIT(8));
+	/*
+	 * clkin = 24MHz
+	 * T acquire = clkin / (x + 1)
+	 *           = 20us
+	 * enable sensor
+	 */
+	regmap_write(tmdev->regmap, SUN8I_THS_CTRL0,
+		     SUN8I_THS_CTRL0_T_ACQ0(479));
+	regmap_write(tmdev->regmap, SUN8I_THS_CTRL2,
+		     SUN8I_THS_CTRL2_T_ACQ1(479) | BIT(0));
+
+	return 0;
+}
+
 static int sun50i_thermal_init(struct ths_device *tmdev)
 {
 	int val;
@@ -431,6 +491,17 @@ static int sun8i_ths_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct ths_thermal_chip sun8i_h3_ths = {
+	.sensor_num = 1,
+	.offset = -1794,
+	.scale = -121,
+	.has_ahb_clk = true,
+	.temp_data_base = SUN8I_THS_TEMP_DATA,
+	.calibrate = sun8i_h3_ths_calibrate,
+	.init = sun8i_h3_thermal_init,
+	.irq_ack = sun8i_h3_irq_ack,
+};
+
 static const struct ths_thermal_chip sun50i_h6_ths = {
 	.sensor_num = 2,
 	.offset = -2794,
@@ -443,6 +514,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 };
 
 static const struct of_device_id of_ths_match[] = {
+	{ .compatible = "allwinner,sun8i-h3-ths", .data = &sun8i_h3_ths },
 	{ .compatible = "allwinner,sun50i-h6-ths", .data = &sun50i_h6_ths },
 	{ /* sentinel */ },
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
