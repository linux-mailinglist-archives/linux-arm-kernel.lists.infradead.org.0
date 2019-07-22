Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F067019C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DE8yWVu2Y6fKg53gi4gR+tyXDTDDOeoh6vLezQEVRmE=; b=O5gxY+yXT7kTZp
	yVcGvmfWm7sDJCKoYOqSp1KuzliIrFmycjIDOm2R8/Yrs58jGVKggEyAmyzWxH83quP2pSjCE84wd
	oKqj/fM9LB0Cav94AaCR1FLyJupLrwsmtTBJl2wlIOO9smxwoQR+zHt9+h9f118TolSgzJGVzga0M
	/FDuZ1FrQKxwRyY9UMU/xHH/7FoREnOxabwA09lssOpOqQa6N0dc4G8BnccHvi+fWlMjAapct4T1U
	1v+M1hv7Hv4MTa827jud8GMvVBSHSXLVTUDq3NgQjyGDofsDKlAUW5Twb7siHKOkv+lduMXHo+RMV
	FA0Yd89laLolWwC2MbjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpYf4-0004UR-DJ; Mon, 22 Jul 2019 13:47:30 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpYcO-0001TB-Js
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:44:46 +0000
Received: by mail-wm1-x342.google.com with SMTP id g67so31291189wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 22 Jul 2019 06:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cl5zg39Cl4/S2kfGv0jRvRdfNEoBv9uo7wZVLIOvXqk=;
 b=y+M/5CbcGEIcdNqV/egICb8FrMGtXtBlVWgihxudOjk7jXnywoD0EJ7gf1ju1xOY5z
 BZ/InXQHyjacAMLVMndKUElyjiV/6aC5yi5/fAMI2Ol1F9LCRflw6BCKS5NiyKOXbQhW
 qPdSpM8wzu6+VaUwrYZD/0FLn9SkrGgAJRvXQ+I4Fr94EOGmKZn2xWqF5UiMHuouyDGk
 P2/CV86gu8IkCxYLgkutWOZuAwWlHvwIgF1UcIhVvLQD4FySvHqClk7D4IMQohdyK9Hk
 5sSuBJ7k8eplpR26QtX+rE+c3SugRg55Ru+rAvcY7e06KJ7mTpLn4Z+gWgw67ELmM52D
 2j1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cl5zg39Cl4/S2kfGv0jRvRdfNEoBv9uo7wZVLIOvXqk=;
 b=jBcyV879ZGH4bB0Mzq8LwfZJHw4PmnrD70he7PyB++gYqWptcye4ez3pvsNXyKW/jA
 rdvc9qBTmo9klW1ewUfDa3m5Iw0mjBIc9c5+8Cd7t4TtP24GKIPyTCjHVlmg1ke/H3Bp
 454i4xvyIlmHptYcNg2aoKzsSe+TAP5K62XaNpFwOrLzU+JfCMf4yRSKMrlFzAQiqKcZ
 LH5I8YKqVjNgf77I9acc9S6Cs19C72saoEt99EMhFkWwJQiUaHl64dMbkumTHOsEHVpU
 +/CoxSyWxyiW7YeOo3XwEHaCCf8SEiRa+d41nCDrB/Gd83wslDWZVJZB3HpJVaW+qxf7
 Km/Q==
X-Gm-Message-State: APjAAAWEv2TSIm3aTgB1iYlgWPn9nso3xccEPAzubV2O/XCrDZDrOACy
 S0bdoU3hLZaqaYfbxGj4gfs=
X-Google-Smtp-Source: APXvYqzuRR4VH4AgMsKrgc/zg95SeYIfM1iEAfQMM+gfLXFvSgu0o01EWinF+4CxRTgRk8PZ9l+AjQ==
X-Received: by 2002:a7b:c212:: with SMTP id x18mr62608436wmi.77.1563803083203; 
 Mon, 22 Jul 2019 06:44:43 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id p6sm40652484wrq.97.2019.07.22.06.44.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 06:44:42 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 4/9] fbdev: da8xx: add support for a regulator
Date: Mon, 22 Jul 2019 15:44:18 +0200
Message-Id: <20190722134423.26555-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190722134423.26555-1-brgl@bgdev.pl>
References: <20190722134423.26555-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_064444_809291_13339690 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We want to remove the hacky platform data callback for power control.
Add a regulator to the driver data and enable/disable it next to
the current panel_power_ctrl() calls. We will use it in subsequent
patch on da850-evm.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Acked-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
---
 drivers/video/fbdev/da8xx-fb.c | 54 ++++++++++++++++++++++++++++++----
 1 file changed, 49 insertions(+), 5 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index b1cf248f3291..02dfe9e32eed 100644
--- a/drivers/video/fbdev/da8xx-fb.c
+++ b/drivers/video/fbdev/da8xx-fb.c
@@ -19,6 +19,7 @@
 #include <linux/clk.h>
 #include <linux/cpufreq.h>
 #include <linux/console.h>
+#include <linux/regulator/consumer.h>
 #include <linux/spinlock.h>
 #include <linux/slab.h>
 #include <linux/delay.h>
@@ -165,6 +166,7 @@ struct da8xx_fb_par {
 #endif
 	unsigned int		lcdc_clk_rate;
 	void (*panel_power_ctrl)(int);
+	struct regulator	*lcd_supply;
 	u32 pseudo_palette[16];
 	struct fb_videomode	mode;
 	struct lcd_ctrl_config	cfg;
@@ -1066,6 +1068,7 @@ static void lcd_da8xx_cpufreq_deregister(struct da8xx_fb_par *par)
 static int fb_remove(struct platform_device *dev)
 {
 	struct fb_info *info = dev_get_drvdata(&dev->dev);
+	int ret;
 
 	if (info) {
 		struct da8xx_fb_par *par = info->par;
@@ -1073,8 +1076,13 @@ static int fb_remove(struct platform_device *dev)
 #ifdef CONFIG_CPU_FREQ
 		lcd_da8xx_cpufreq_deregister(par);
 #endif
-		if (par->panel_power_ctrl)
+		if (par->panel_power_ctrl) {
 			par->panel_power_ctrl(0);
+		} else if (par->lcd_supply) {
+			ret = regulator_disable(par->lcd_supply);
+			if (ret)
+				return ret;
+		}
 
 		lcd_disable_raster(DA8XX_FRAME_WAIT);
 		lcdc_write(0, LCD_RASTER_CTRL_REG);
@@ -1179,15 +1187,25 @@ static int cfb_blank(int blank, struct fb_info *info)
 	case FB_BLANK_UNBLANK:
 		lcd_enable_raster();
 
-		if (par->panel_power_ctrl)
+		if (par->panel_power_ctrl) {
 			par->panel_power_ctrl(1);
+		} else if (par->lcd_supply) {
+			ret = regulator_enable(par->lcd_supply);
+			if (ret)
+				return ret;
+		}
 		break;
 	case FB_BLANK_NORMAL:
 	case FB_BLANK_VSYNC_SUSPEND:
 	case FB_BLANK_HSYNC_SUSPEND:
 	case FB_BLANK_POWERDOWN:
-		if (par->panel_power_ctrl)
+		if (par->panel_power_ctrl) {
 			par->panel_power_ctrl(0);
+		} else if (par->lcd_supply) {
+			ret = regulator_disable(par->lcd_supply);
+			if (ret)
+				return ret;
+		}
 
 		lcd_disable_raster(DA8XX_FRAME_WAIT);
 		break;
@@ -1400,6 +1418,20 @@ static int fb_probe(struct platform_device *device)
 		par->panel_power_ctrl(1);
 	}
 
+	par->lcd_supply = devm_regulator_get_optional(&device->dev, "lcd");
+	if (IS_ERR(par->lcd_supply)) {
+		if (PTR_ERR(par->lcd_supply) == -EPROBE_DEFER) {
+			ret = -EPROBE_DEFER;
+			goto err_pm_runtime_disable;
+		}
+
+		par->lcd_supply = NULL;
+	} else {
+		ret = regulator_enable(par->lcd_supply);
+		if (ret)
+			goto err_pm_runtime_disable;
+	}
+
 	fb_videomode_to_var(&da8xx_fb_var, lcdc_info);
 	par->cfg = *lcd_cfg;
 
@@ -1603,10 +1635,16 @@ static int fb_suspend(struct device *dev)
 {
 	struct fb_info *info = dev_get_drvdata(dev);
 	struct da8xx_fb_par *par = info->par;
+	int ret;
 
 	console_lock();
-	if (par->panel_power_ctrl)
+	if (par->panel_power_ctrl) {
 		par->panel_power_ctrl(0);
+	} else if (par->lcd_supply) {
+		ret = regulator_disable(par->lcd_supply);
+		if (ret)
+			return ret;
+	}
 
 	fb_set_suspend(info, 1);
 	lcd_disable_raster(DA8XX_FRAME_WAIT);
@@ -1620,6 +1658,7 @@ static int fb_resume(struct device *dev)
 {
 	struct fb_info *info = dev_get_drvdata(dev);
 	struct da8xx_fb_par *par = info->par;
+	int ret;
 
 	console_lock();
 	pm_runtime_get_sync(dev);
@@ -1627,8 +1666,13 @@ static int fb_resume(struct device *dev)
 	if (par->blank == FB_BLANK_UNBLANK) {
 		lcd_enable_raster();
 
-		if (par->panel_power_ctrl)
+		if (par->panel_power_ctrl) {
 			par->panel_power_ctrl(1);
+		} else if (par->lcd_supply) {
+			ret = regulator_enable(par->lcd_supply);
+			if (ret)
+				return ret;
+		}
 	}
 
 	fb_set_suspend(info, 0);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
