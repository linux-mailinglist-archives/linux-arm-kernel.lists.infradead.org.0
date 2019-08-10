Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D874888A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JQDhOVLC+jhcpVasbJbDVV5Ni80RckTMCCIYbFQZrmk=; b=GG4t9jNaA0eqf5p2bAHN9T+Iu7
	xCjqXxrsWkMzBlzvmDQi5T8yTlfEHH8nqWWisceFe/RX3wXcgLbNIW9aN4Gkr2mPwIPo9Tse0AQYK
	kTTnt9gxUhmdYlJmGMgA7DbpHYE2XcfL5xgd2oLLsmLxIIJqkGf5HWMg+FpeIIPYsvyq5pX7ilb9c
	s2YnWvoY+VQM7/0qXrFWuLzZe+ycmf8ICgr3fqWihXz5WOSxjKp2tILXU3Tgd81+uLqmJALgUHHr3
	s593C+0BPg3e5odzFfIqGuhxYde52MqdqE1tJ7XNVqn5T+0eka+4QNGd5KMITo8pOo5ISI4g6xEC4
	LYaLqDGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJzh-0004jU-2p; Sat, 10 Aug 2019 05:32:45 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJx1-0001SD-FD
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:30:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so47087741pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/+Vypp949GcHqEyKcL0IQIX2nnfIDii+9qZvEhV9QRs=;
 b=qb2+3+aAvlwnHlCP2Xkzp0vO5+lpxhwIt29tHwACLZjiEaWeHHtOy+k5OqeJSM82EK
 A/wNHR5BcT5mi7UnUkyrNAfHfBJcnY86ecuF2XbOfQ15gvfjKCrcUBfQrUS1tXiRNXV1
 jclQDEOR4yiDZVGPB69eqFnKhXa2vvBkmc91uLH5SFcApz9Fl7rQ1wchvH7ZJP3rBFr5
 Oob/8kSekXKJKsqc04pZKMdXzGqgfG79cV93WFjdUs6qAw08HOwNZyX4eq0xPMrbhrAN
 kTLoqPepxUoopH4KbYyYfodNfrRczjDlqKv20DxJuxJJR1o043mSIl72yDUZuIEqP5LG
 RUZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/+Vypp949GcHqEyKcL0IQIX2nnfIDii+9qZvEhV9QRs=;
 b=Bd+XOSoEd6l6gu22tBqUH+6RticWXj15W0BHYYdVtG5OGnWrdRtxBFmaGbz3+cSJv3
 MsPnYoBImU3zsovNZxMB+yWBZMBDOESFaZYQFLb2hvRpD6nhyOmob+XMUZxfU/aHxoZV
 AR3wymF0NOU6OcZTkgE4bP0GrbJ0Qzev+akgx0i3I1OQ0tETJiWu9f1MZKtFWBxzINEO
 dem58gkphec/0iGUe7z2ohyaww8s4o+uDIbVzO2pspeJDciBcAb9o+t1ThUtby2yf4XF
 dM15vpF6Iszb5vQHLMKQXA0pYRgg1cOHB0G6I5BrcxnhZSGzhPWGllFX8rrrvFsW9rxf
 gzvg==
X-Gm-Message-State: APjAAAXanRe/T6mjA1+0JwJaN3p3sDclQnU2QhqfojCJiwKKg7QRkTGY
 hz6slmrbArFTiZcKQ8xCDNs=
X-Google-Smtp-Source: APXvYqwCZdkfHsbnXnHBnBca8U9pGcrxvUpyCmRvFdcutvKvt/oH+EgoT1C/Ajn6NWK2up6ZUgbiFQ==
X-Received: by 2002:a65:614a:: with SMTP id o10mr20265723pgv.407.1565414998644; 
 Fri, 09 Aug 2019 22:29:58 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id c12sm7848842pfc.22.2019.08.09.22.29.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:57 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 11/18] thermal: sun8i: add thermal driver for h3
Date: Sat, 10 Aug 2019 05:28:22 +0000
Message-Id: <20190810052829.6032-12-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222959_540413_DE3B47BA 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/thermal/sun8i_thermal.c | 91 +++++++++++++++++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 47c20c4c69e7..41ce8cdc0546 100644
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
@@ -36,6 +44,10 @@
 #define SUN50I_H6_THS_TEMP_CALIB		0xa0
 #define SUN50I_H6_THS_TEMP_DATA			0xc0
 
+#define SUN8I_THS_CTRL0_T_ACQ0(x)		(GENMASK(15, 0) & (x))
+#define SUN8I_THS_CTRL2_T_ACQ1(x)		((GENMASK(15, 0) & (x)) << 16)
+#define SUN8I_THS_DATA_IRQ_STS(x)		BIT(x + 8)
+
 #define SUN50I_THS_CTRL0_T_ACQ(x)		((GENMASK(15, 0) & (x)) << 16)
 #define SUN50I_THS_FILTER_EN			BIT(2)
 #define SUN50I_THS_FILTER_TYPE(x)		(GENMASK(1, 0) & (x))
@@ -121,6 +133,23 @@ static const struct regmap_config config = {
 	.fast_io = true,
 };
 
+static int sun8i_h3_irq_ack(struct ths_device *tmdev)
+{
+	int i, state, ret = 0;
+
+	regmap_read(tmdev->regmap, SUN8I_THS_IS, &state);
+
+	for (i = 0; i < tmdev->chip->sensor_num; i++) {
+		if (state & SUN8I_THS_DATA_IRQ_STS(i)) {
+			regmap_write(tmdev->regmap, SUN8I_THS_IS,
+				     SUN8I_THS_DATA_IRQ_STS(i));
+			ret |= BIT(i);
+		}
+	}
+
+	return ret;
+}
+
 static int sun50i_h6_irq_ack(struct ths_device *tmdev)
 {
 	int i, state, ret = 0;
@@ -154,6 +183,26 @@ static irqreturn_t sun8i_irq_thread(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
+static int sun8i_h3_ths_calibrate(struct ths_device *tmdev,
+				  u16 *caldata, int callen)
+{
+	int i;
+
+	if (!caldata[0] || callen < 2 * tmdev->chip->sensor_num)
+		return -EINVAL;
+
+	for (i = 0; i < tmdev->chip->sensor_num; i++) {
+		int offset = (i % 2) << 4;
+
+		regmap_update_bits(tmdev->regmap,
+				   SUN8I_THS_TEMP_CALIB + (4 * (i >> 1)),
+				   0xfff << offset,
+				   caldata[i] << offset);
+	}
+
+	return 0;
+}
+
 static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
 				   u16 *caldata, int callen)
 {
@@ -319,6 +368,36 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	return ret;
 }
 
+static int sun8i_h3_thermal_init(struct ths_device *tmdev)
+{
+	int val;
+
+	/* average over 4 samples */
+	regmap_write(tmdev->regmap, SUN8I_THS_MFC,
+		     SUN50I_THS_FILTER_EN |
+		     SUN50I_THS_FILTER_TYPE(1));
+	/*
+	 * period = (x + 1) * 4096 / clkin; ~10ms
+	 * enable data interrupt
+	 */
+	val = GENMASK(7 + tmdev->chip->sensor_num, 8);
+	regmap_write(tmdev->regmap, SUN8I_THS_IC,
+		     SUN50I_H6_THS_PC_TEMP_PERIOD(58) | val);
+	/*
+	 * clkin = 24MHz
+	 * T acquire = clkin / (x + 1)
+	 *           = 20us
+	 * enable sensor
+	 */
+	regmap_write(tmdev->regmap, SUN8I_THS_CTRL0,
+		     SUN8I_THS_CTRL0_T_ACQ0(479));
+	val = GENMASK(tmdev->chip->sensor_num - 1, 0);
+	regmap_write(tmdev->regmap, SUN8I_THS_CTRL2,
+		     SUN8I_THS_CTRL2_T_ACQ1(479) | val);
+
+	return 0;
+}
+
 static int sun50i_h6_thermal_init(struct ths_device *tmdev)
 {
 	int val;
@@ -425,6 +504,17 @@ static int sun8i_ths_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static const struct ths_thermal_chip sun8i_h3_ths = {
+	.sensor_num = 1,
+	.offset = -1794,
+	.scale = -121,
+	.has_mod_clk = true,
+	.temp_data_base = SUN8I_THS_TEMP_DATA,
+	.calibrate = sun8i_h3_ths_calibrate,
+	.init = sun8i_h3_thermal_init,
+	.irq_ack = sun8i_h3_irq_ack,
+};
+
 static const struct ths_thermal_chip sun50i_h6_ths = {
 	.sensor_num = 2,
 	.offset = -2794,
@@ -437,6 +527,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
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
