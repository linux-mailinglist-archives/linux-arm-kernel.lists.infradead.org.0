Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A59888A2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 07:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TmkrJCXSNr5hQPHk3z1JxVC1856np1Q4PxHGuJ0CUrY=; b=ncirm9TxnUedKDqswayUCkKcOz
	TDf+PUm2oX1F4i+ZKiopOWb14TsGYusJUs4G+GjZ36sXqzVlZJVxHp6ao38aCZLid45IY/5351ePB
	DGgxP4S+TbzO6afs5/FH0Fy6wF54J79fk8xOzSbgSEOClK9spXK25Gb6+1D5O6ibrq+Dx6gajSupj
	Tts97lfiYjJimhEsO9h358cEcXFFa1FM7R/uKL9zbaEmta8IEpMy+OTuUiV2YslhhkOd6hqaUbZta
	jTiNiKmqktGed4HBHn6XFUBFScxRwjt037E/rH6DC7lSaIgwPxMHe17SEUtSgp7ciMQpxkTxMdwH+
	lNHlCk3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwJz9-0004Hk-3C; Sat, 10 Aug 2019 05:32:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwJwt-0001FV-2s
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 05:29:52 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so47121173pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 22:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OgfjFUuoODNFVR0ZkvXZDxeFbZPjLqSi2JIeoavOMgw=;
 b=MJc3rDZPoveXjHTdN7LEH2hpFio/XloP5QHsQGg4GMD0LCzGAz+jZSCHG50z1LvXaH
 WxRdKkPluVG8Rxm1vvFvttyqFiEBhh5iRxJiPn9BLstbW9LTuN8jej5YcGRl4UOxHmYJ
 CX3mjXj4KVcB5IdyZuVkEEuPe6fBn4rPvPGLj13Ezl08ch19+EJ9IE5oRzoBIK27S2t9
 dtJm9b+iXCbqWT/gZTmPLnyiP/9+fsV/jVGgSXGXNf5x4pe+aQ9Xft6UHuP61Qvha0/O
 1hzCp82QsTbhbZMdC+vEBCCy2BcyldfSQqjIm9dCp0i7OtoPysbMIBLTdXskwuUdhB23
 Oq/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OgfjFUuoODNFVR0ZkvXZDxeFbZPjLqSi2JIeoavOMgw=;
 b=OqDKU7MhoEq4jBhujAZcU3ccz+FI2B7GMwS0LcJsV4l/EmX76sxdk6nh1Fte50ox1K
 s4Rm3uylIRrjVw50048nQL8FGN6dR6nPQgUBiaAZa6MVgu1uVQvctMdpS6YAG62tvFgy
 OvcJpWAk/VjydCm+kbpeDnbhdW1SoP2Cbe9EJK+fEwtiR2IHPE/FsPQRSJkai/HsjNt3
 L+jqQ4mpzfLQva3TUvbJC3mRpS1DS2v+9VB8DZY1iZWo/BpCrWroxWTcx7az2Dk9YJZL
 H1wDzk/FIE1fpYUmW21jbO0CcD05Wh7rh6A+BoZW57pQttUm29Ba1EmAz+AsGVfCNyNY
 o0/g==
X-Gm-Message-State: APjAAAXdQ4jwdXDOrdeuXrZv3w0W8g7pvFuKq/pXoOuhZKky/c7gZblW
 FaaFZ2+l7D97OtD3YoJ4hts=
X-Google-Smtp-Source: APXvYqwC4638wzZl+8v+psyBs+EeT0oA2gS/8mge82pBrAdHJeehqHQxiVbpjzKmAwzQqbXgrXp7+Q==
X-Received: by 2002:a17:90a:1785:: with SMTP id
 q5mr12858514pja.106.1565414990372; 
 Fri, 09 Aug 2019 22:29:50 -0700 (PDT)
Received: from localhost ([202.182.106.211])
 by smtp.gmail.com with ESMTPSA id i7sm8395873pjk.24.2019.08.09.22.29.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 09 Aug 2019 22:29:49 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, mchehab+samsung@kernel.org, davem@davemloft.net,
 gregkh@linuxfoundation.org, Jonathan.Cameron@huawei.com,
 nicolas.ferre@microchip.com
Subject: [PATCH v5 09/18] thermal: sun8i: rework for ths calibrate func
Date: Sat, 10 Aug 2019 05:28:20 +0000
Message-Id: <20190810052829.6032-10-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190810052829.6032-1-tiny.windzz@gmail.com>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_222951_451403_232424F9 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Here, we do something to prepare for the subsequent
support of multiple platforms.

1) rename sun50i_ths_calibrate to sun8i_ths_calibrate, because
   this function should be suitable for all platforms now.

2) introduce calibrate callback to mask calibration method
   differences.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 86 ++++++++++++++++++---------------
 1 file changed, 48 insertions(+), 38 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 6f4294c2aba7..47c20c4c69e7 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -60,6 +60,8 @@ struct ths_thermal_chip {
 	int		scale;
 	int		ft_deviation;
 	int		temp_data_base;
+	int		(*calibrate)(struct ths_device *tmdev,
+				     u16 *caldata, int callen);
 	int		(*init)(struct ths_device *tmdev);
 	int             (*irq_ack)(struct ths_device *tmdev);
 };
@@ -152,45 +154,14 @@ static irqreturn_t sun8i_irq_thread(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-static int sun50i_ths_calibrate(struct ths_device *tmdev)
+static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
+				   u16 *caldata, int callen)
 {
-	struct nvmem_cell *calcell;
 	struct device *dev = tmdev->dev;
-	u16 *caldata;
-	size_t callen;
-	int ft_temp;
-	int i, ret = 0;
-
-	calcell = devm_nvmem_cell_get(dev, "calib");
-	if (IS_ERR(calcell)) {
-		if (PTR_ERR(calcell) == -EPROBE_DEFER)
-			return -EPROBE_DEFER;
-		/*
-		 * Even if the external calibration data stored in sid is
-		 * not accessible, the THS hardware can still work, although
-		 * the data won't be so accurate.
-		 *
-		 * The default value of calibration register is 0x800 for
-		 * every sensor, and the calibration value is usually 0x7xx
-		 * or 0x8xx, so they won't be away from the default value
-		 * for a lot.
-		 *
-		 * So here we do not return error if the calibartion data is
-		 * not available, except the probe needs deferring.
-		 */
-		goto out;
-	}
+	int i, ft_temp;
 
-	caldata = nvmem_cell_read(calcell, &callen);
-	if (IS_ERR(caldata)) {
-		ret = PTR_ERR(caldata);
-		goto out;
-	}
-
-	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num) {
-		ret = -EINVAL;
-		goto out_free;
-	}
+	if (!caldata[0] || callen < 2 + 2 * tmdev->chip->sensor_num)
+		return -EINVAL;
 
 	/*
 	 * efuse layout:
@@ -245,7 +216,45 @@ static int sun50i_ths_calibrate(struct ths_device *tmdev)
 				   cdata << offset);
 	}
 
-out_free:
+	return 0;
+}
+
+static int sun8i_ths_calibrate(struct ths_device *tmdev)
+{
+	struct nvmem_cell *calcell;
+	struct device *dev = tmdev->dev;
+	u16 *caldata;
+	size_t callen;
+	int ret = 0;
+
+	calcell = devm_nvmem_cell_get(dev, "calib");
+	if (IS_ERR(calcell)) {
+		if (PTR_ERR(calcell) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		/*
+		 * Even if the external calibration data stored in sid is
+		 * not accessible, the THS hardware can still work, although
+		 * the data won't be so accurate.
+		 *
+		 * The default value of calibration register is 0x800 for
+		 * every sensor, and the calibration value is usually 0x7xx
+		 * or 0x8xx, so they won't be away from the default value
+		 * for a lot.
+		 *
+		 * So here we do not return error if the calibartion data is
+		 * not available, except the probe needs deferring.
+		 */
+		goto out;
+	}
+
+	caldata = nvmem_cell_read(calcell, &callen);
+	if (IS_ERR(caldata)) {
+		ret = PTR_ERR(caldata);
+		goto out;
+	}
+
+	tmdev->chip->calibrate(tmdev, caldata, callen);
+
 	kfree(caldata);
 out:
 	return ret;
@@ -294,7 +303,7 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	if (ret)
 		goto bus_disable;
 
-	ret = sun50i_ths_calibrate(tmdev);
+	ret = sun8i_ths_calibrate(tmdev);
 	if (ret)
 		goto mod_disable;
 
@@ -422,6 +431,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 	.scale = -67,
 	.ft_deviation = SUN50I_H6_FT_DEVIATION,
 	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
+	.calibrate = sun50i_h6_ths_calibrate,
 	.init = sun50i_h6_thermal_init,
 	.irq_ack = sun50i_h6_irq_ack,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
