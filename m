Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92642554C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1wNnU8ht220v1fa86qkYMi37UKFOzmTud/YhGJaM1Q=; b=ruMSO25sr7prIM
	11DtZd9WmA2Z+CX2DxGRMcVZ553QjVw2sVriMLDSzCCk/Wvti6Di2Kb+f1tjU3p6LpjqVeudzdYSd
	cVfvFhe33+U+NtnvNqBJCaXDy9Uz8yfbsC4UXpsGX4m47IE3CsYK/JMYBDR7pXuWbsr+0zs2lmUWc
	1F0ADxINqIDT3NKKGlCiUguhnvavqIAyLzR54yLR0X1nx5bfxqvL+GJpNtw9tQhBX3iI/Oe1CF6Eh
	tcGbRr2aRagjnos+FcABE83M11ghDh0sQlD6P3ZfKOPv/NRGauZA1WFKc5mNwuafymYgwEBBm2x9r
	QuzcAXjy2fizl/gWA85g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoWZ-0006mj-6c; Tue, 25 Jun 2019 16:42:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfoPQ-00020n-Fg
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:35:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id g135so3506372wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q8CTKhWBWFU1fqIPJGLSNQd9vJ1aS8JWPNlYGCmcN8g=;
 b=jrA5ZxxSlBscH60wVMRBFqwb9J9maa3kZ+JU/Fp6J34myN9KJoXuFwMIV3ZMmz7DNl
 JG1+U+oqjwTTtkfTBwVSTD9L0stYYQBCQZkkcL3caSVFgC7U6RXMgCV/zfQrx45vdTPR
 ayJ9TIWzXGPqIe9iL9vtxCexuyN/YsuaVdU4T1Q4mDvSPLx+u2zB3+l0GtmMMSE7vAuY
 HbLhX9dVYD7+9Iarnn6PZ2NDdK94xvM49thFHPfOOqjj+zAUG4SbHrwUzjnbuK/64XdC
 3fSgoI3x6TSweLX2gY1e5b8i24ts0cvG/7te0F0uN7yuIYRTLlPHbaTRofncPw/XoXFE
 Gz/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q8CTKhWBWFU1fqIPJGLSNQd9vJ1aS8JWPNlYGCmcN8g=;
 b=mCbH4ux+pX15KRiBdEngZjfUS3riwCJz9RtXxPqDaILHb+FNJQej53zb5RTNFfd9+1
 iu8a6527eiZRfaqiDX/LmzZJktoz7iNsd1qCmk0ulcMVDADvQEvT3eShRxq7WZkuejU3
 vqlnTbE6d1nAMvsnXqhwTqL+Uk//rzRHWJyX+g+w/ic2TKbnyXasm2TP/XKXY9LRmXn/
 /ATprTRpf8hB8XdHWdG4IdWOr0mhzttFF37qJ2iNr5Tf70RFXHfyJHR20ppRyFMjM0p+
 +e6pYe6YCWNr5hF8OYDInWmAtdWmmT983KI6J+6W5MBZTHIDURaGrx4T224QPQFZq6Ms
 aDfw==
X-Gm-Message-State: APjAAAWEHRUZxAi+cGoCtxR9qtK+UV+gQ5ZB0mGmqBp8daSmGzZhtqgV
 jbtAezU4TxB4u6m0Kwn5VX1qqw==
X-Google-Smtp-Source: APXvYqy9vA8JJyTM1z74NApjY88ZDcDlQT7HuRw6dubZNjHezxo9Xp8wOa5eR0G69DpWTbPZXt+I1w==
X-Received: by 2002:a1c:40c6:: with SMTP id
 n189mr19922351wma.118.1561480502950; 
 Tue, 25 Jun 2019 09:35:02 -0700 (PDT)
Received: from debian-brgl.home ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id g8sm2683795wme.20.2019.06.25.09.35.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 09:35:02 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Lechner <david@lechnology.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 09/12] fbdev: da8xx: remove panel_power_ctrl() callback from
 platform data
Date: Tue, 25 Jun 2019 18:34:31 +0200
Message-Id: <20190625163434.13620-10-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625163434.13620-1-brgl@bgdev.pl>
References: <20190625163434.13620-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_093505_373333_5D6012BA 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

There are no more users of panel_power_ctrl(). Remove it from the
driver.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/video/fbdev/da8xx-fb.c | 25 +++++--------------------
 include/video/da8xx-fb.h       |  1 -
 2 files changed, 5 insertions(+), 21 deletions(-)

diff --git a/drivers/video/fbdev/da8xx-fb.c b/drivers/video/fbdev/da8xx-fb.c
index 4fa99ff79f3b..328de29c4933 100644
--- a/drivers/video/fbdev/da8xx-fb.c
+++ b/drivers/video/fbdev/da8xx-fb.c
@@ -165,7 +165,6 @@ struct da8xx_fb_par {
 	struct notifier_block	freq_transition;
 #endif
 	unsigned int		lcdc_clk_rate;
-	void (*panel_power_ctrl)(int);
 	struct regulator	*lcd_supply;
 	u32 pseudo_palette[16];
 	struct fb_videomode	mode;
@@ -1076,9 +1075,7 @@ static int fb_remove(struct platform_device *dev)
 #ifdef CONFIG_CPU_FREQ
 		lcd_da8xx_cpufreq_deregister(par);
 #endif
-		if (par->panel_power_ctrl) {
-			par->panel_power_ctrl(0);
-		} else if (par->lcd_supply) {
+		if (par->lcd_supply) {
 			ret = regulator_disable(par->lcd_supply);
 			if (ret)
 				return ret;
@@ -1187,9 +1184,7 @@ static int cfb_blank(int blank, struct fb_info *info)
 	case FB_BLANK_UNBLANK:
 		lcd_enable_raster();
 
-		if (par->panel_power_ctrl) {
-			par->panel_power_ctrl(1);
-		} else if (par->lcd_supply) {
+		if (par->lcd_supply) {
 			ret = regulator_enable(par->lcd_supply);
 			if (ret)
 				return ret;
@@ -1199,9 +1194,7 @@ static int cfb_blank(int blank, struct fb_info *info)
 	case FB_BLANK_VSYNC_SUSPEND:
 	case FB_BLANK_HSYNC_SUSPEND:
 	case FB_BLANK_POWERDOWN:
-		if (par->panel_power_ctrl) {
-			par->panel_power_ctrl(0);
-		} else if (par->lcd_supply) {
+		if (par->lcd_supply) {
 			ret = regulator_disable(par->lcd_supply);
 			if (ret)
 				return ret;
@@ -1414,10 +1407,6 @@ static int fb_probe(struct platform_device *device)
 	par->dev = &device->dev;
 	par->lcdc_clk = tmp_lcdc_clk;
 	par->lcdc_clk_rate = clk_get_rate(par->lcdc_clk);
-	if (fb_pdata->panel_power_ctrl) {
-		par->panel_power_ctrl = fb_pdata->panel_power_ctrl;
-		par->panel_power_ctrl(1);
-	}
 
 	par->lcd_supply = devm_regulator_get_optional(&device->dev, "lcd");
 	if (IS_ERR(par->lcd_supply)) {
@@ -1639,9 +1628,7 @@ static int fb_suspend(struct device *dev)
 	int ret;
 
 	console_lock();
-	if (par->panel_power_ctrl) {
-		par->panel_power_ctrl(0);
-	} else if (par->lcd_supply) {
+	if (par->lcd_supply) {
 		ret = regulator_disable(par->lcd_supply);
 		if (ret)
 			return ret;
@@ -1667,9 +1654,7 @@ static int fb_resume(struct device *dev)
 	if (par->blank == FB_BLANK_UNBLANK) {
 		lcd_enable_raster();
 
-		if (par->panel_power_ctrl) {
-			par->panel_power_ctrl(1);
-		} else if (par->lcd_supply) {
+		if (par->lcd_supply) {
 			ret = regulator_enable(par->lcd_supply);
 			if (ret)
 				return ret;
diff --git a/include/video/da8xx-fb.h b/include/video/da8xx-fb.h
index efed3c3383d6..1d19ae62b844 100644
--- a/include/video/da8xx-fb.h
+++ b/include/video/da8xx-fb.h
@@ -32,7 +32,6 @@ struct da8xx_lcdc_platform_data {
 	const char manu_name[10];
 	void *controller_data;
 	const char type[25];
-	void (*panel_power_ctrl)(int);
 };
 
 struct lcd_ctrl_config {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
