Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC4F4FCFE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 18:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=delwVf4j5pxkYPdwvDOUSRhS2DZlyj5OIcFRAaGOy+s=; b=gx/B7kU69g78YZeuSg0KUDl7Jl
	SerLJKExGpysWaciYXww7LFLfYvmHOiqbw1fJGehou0vw4/H82dUL2uFW2nRMIomrBP1xjRSr6avW
	L9sGs0IFqr5lH2f1E2hYTw6VQqBoAuLbu0mGxhkOa0o0KpRSN0kmWPu4qXLeGHYBPXudYbuhYcOPI
	Z2WJg5kgpljJaKc3pDgwA96We1LStE/wH7KwZ9q2t/1QPS8t2LJAayel4/DjpD/TqqVZbnFHEZphF
	r3JNyhcX+woe2vSVCgkOdddepDJ4Yag3mLmNxut3QrIS5rNTIpe8NBYvJIer3HoaXSLK3d2c716Kv
	CfAy8sXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hf5cq-0006Ba-6g; Sun, 23 Jun 2019 16:45:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hf5ZY-0002kM-Hd
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 16:42:34 +0000
Received: by mail-pg1-x543.google.com with SMTP id y72so5774811pgd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 09:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RTcK3pbraTehLFDRf/5iQTqAdMG2KSczJRXJiBCvB5Y=;
 b=J79n+G0FL6XsNrisl6wbrkk+LaSJR6g3/f6ISU3BTLA9JY3Gqkm4YYdTSvx/+5Kqg7
 kbr1y5dzXFGY1CYoZ83vKdhe7nZ7CKTdLOBaDy/ML+spf/jCjKex5kzhqJeI0IPbN3N0
 yxwnVWyDo28A2xTdG5uWbE1xAfskgvDsey1vfABp8IHb7J7YnXcj8Y8Zlvaiz49r1b3L
 fGNKV8818ts9AVqoiVfZU1XtTPsUtfmFVkjgmtVGGiVuSofPy0kZbll+M8ozOW+x+JPa
 PRBDcTuudkpmeEV4rk5FT8U1nNgL7daeNWgAMoZeaBYmT2mk/vxpb9lzrniT2jLpukwd
 HhRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RTcK3pbraTehLFDRf/5iQTqAdMG2KSczJRXJiBCvB5Y=;
 b=Y0CGRCjvqVx14reAibuAm7OnwlfPKImKDIYCo9hFWUqp1E0h+G+41FzttF9/bPrLiI
 9eiCzCRaj/hQsgs9DtY8rivDiWfBORzdulV1VEi6kZaw87O6AuK0MLHINSiz/FoUeZVm
 bw82JqIJY8/XIIJToOFPKeLeaxaEfwuzzDIJr5M/nIGJoyWLXcozIE43s0wTtT7gIyVY
 uRBDTxBcqjD520dnd7sJde73y7XmlAMKp6mtFj9r43qL8lFEByUv1z9477ZL2R3CYsU/
 +sk7HiycdlUOd+7W0mlAKVmgrnHLifr24jqwlWBrG1Xr321JMxxCP5ggyi3491JzX0/N
 fnng==
X-Gm-Message-State: APjAAAVZr6cSZ2NqjEt3T4g2emIdAVQJg6MVKQDy/EXv2GA+pw2Cs1Uv
 n9K2iNgdV8UyoBHve18wr1Q=
X-Google-Smtp-Source: APXvYqzGanD57O3MhuhLaVMM/J9OguOZ9knpULHKCKx5u7OSJ407HPyX7xnw3TY+8qmoUkfWdIvHGw==
X-Received: by 2002:a65:418d:: with SMTP id a13mr29100398pgq.332.1561308151893; 
 Sun, 23 Jun 2019 09:42:31 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id w3sm8457242pgl.31.2019.06.23.09.42.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 23 Jun 2019 09:42:31 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, maxime.ripard@bootlin.com,
 wens@csie.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mchehab+samsung@kernel.org, linus.walleij@linaro.org,
 nicolas.ferre@microchip.com, paulmck@linux.ibm.com
Subject: [PATCH v4 09/11] thermal: sun8i: rework for ths calibrate func
Date: Sun, 23 Jun 2019 12:42:04 -0400
Message-Id: <20190623164206.7467-10-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190623164206.7467-1-tiny.windzz@gmail.com>
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_094233_308448_29B75157 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
index 04f53ffb6a14..260b24340f5b 100644
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
@@ -251,7 +222,45 @@ static int sun50i_ths_calibrate(struct ths_device *tmdev)
 		}
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
@@ -300,7 +309,7 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
 	if (ret)
 		goto bus_disable;
 
-	ret = sun50i_ths_calibrate(tmdev);
+	ret = sun8i_ths_calibrate(tmdev);
 	if (ret)
 		goto ahb_disable;
 
@@ -428,6 +437,7 @@ static const struct ths_thermal_chip sun50i_h6_ths = {
 	.scale = -67,
 	.ft_deviation = SUN50I_H6_FT_DEVIATION,
 	.temp_data_base = SUN50I_H6_THS_TEMP_DATA,
+	.calibrate = sun50i_h6_ths_calibrate,
 	.init = sun50i_thermal_init,
 	.irq_ack = sun50i_h6_irq_ack,
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
