Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7221F47C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 22:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQEJ/xuDaJd3XYIX7e3jTEXVoDZO3442NguXvO5HR8I=; b=KpG6EgQSCr8774
	raFC3j0ruLmsClmXZWnmwZDIF8OGDu5rxql7Udpg5VUBXZqt20PZysjJNJn1eoAeogf4XzE1GN1n7
	IwJh54dum/V16uQq0KNXPsLgSYP/N0rZgYTKVkK0vPfhirPr5P0VkTY3efr5V+6dOfSy9xYzjBQjY
	sr4SmgzB9V3tikk6rDj/RXRaiPmv9j670/WYWx+KKd5LIucRSJbktNPijB2/I7gWe/qQ+l7GaX2VP
	ZFUTjY5D2YXJ/hE2XO+utJ0Tc0eswSUwY7GBdz0845yQZRqp0Ixnp90CXCY59HzGXylSBtflsEOSN
	pkzJlMgOTzNhQgJDU+8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikY1-0001ps-Si; Tue, 09 Jun 2020 20:08:38 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikXX-0001gm-PA
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 20:08:11 +0000
Received: by mail-lj1-x241.google.com with SMTP id c17so26672980lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 13:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kjp4z7wYiCrrM667mqmlZTf80dbcp8zu9m+RxGjxf9I=;
 b=PYyTdvKP+oATBeKULsAEYr47eMnO4wpZg3//iAw/2XUzyN/l05dnJ9oZ51sBvcKQhe
 4k0d+JIgV5fZFVno2MPERM2Y9ZQJ9/rNPy2JxwOjn3ep40Didh0yRIs1p6Mt79GJgtbq
 n1s+62+FRf+uAQoXhTDu0juwHa6RAwwmLV9opuP3jwFBUnPBXdaXKaNTTezuchqOEmN1
 Yp3CRtDsaqU9HCdo0nDq1GdyU/lV7g+7J/wx7RdcfNF2SOJxWjsmIklqUK2cF73IswOH
 rmbVt12cnheAtON5KEvVzF3EPlFzpdEGDh2kpGEOJrvUpx+0ult3ZyzEV/RZljd8XEBg
 Mtow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kjp4z7wYiCrrM667mqmlZTf80dbcp8zu9m+RxGjxf9I=;
 b=nQR1F/PeTJM3STRU4G90kCXg19Me8pSRwugD63upseBKJiglODgg2GHvmYl/fE4voo
 pKqkdAaf16ovzJzPIvlfmecJUeU+Ik3VQ3XKckYjvaziNX6kKVnJzXSAsASMIdLLgksb
 7D8251ONc1US8Xx5AP9Bd93ERryE89wdOGa/MY0azDY67RXl2YOQPraGUGJLn5W+ZwGp
 1cTWTeI3dRJO4TOQNG+8aIWhOiIRJ0Dm16wii1+QuXntWTRWyr3z0YqN1mzNb4GpmcwJ
 soy2FXCNUMRjV0Pjikltth5RO8pDHcTr4JhbaHBSnod8pzlG1GzKtRmiHNcU5feFzaxj
 b+8g==
X-Gm-Message-State: AOAM532j6I9UniuaBwqQBt/+32hbJZMK0URsO+pXe2s19GeJD/RRCzb8
 CjMaknQEVJ4o0mzps/jY4+8Cig==
X-Google-Smtp-Source: ABdhPJxfpl3e1nUamcL8sjNRH5nR46Oey9VO4GdWkuEBh8G6X10J+XF19SfUG4+iwAiAQ5BBIYNhSQ==
X-Received: by 2002:a2e:b6c5:: with SMTP id m5mr7681ljo.94.1591733285330;
 Tue, 09 Jun 2020 13:08:05 -0700 (PDT)
Received: from localhost.localdomain
 (c-92d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.146])
 by smtp.gmail.com with ESMTPSA id 66sm6038579lfk.54.2020.06.09.13.08.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 13:08:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>,
 Eric Anholt <eric@anholt.net>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 2/4] video: fbdev: amba-clcd: Retire elder CLCD driver
Date: Tue,  9 Jun 2020 22:04:44 +0200
Message-Id: <20200609200446.153209-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200609200446.153209-1-linus.walleij@linaro.org>
References: <20200609200446.153209-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_130807_864681_C736E12B 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All the functionality in this driver has been reimplemented
in the new DRM driver in drivers/gpu/drm/pl111/* and all
the boards using it have been migrated to use the DRM driver
with all configuration coming from the device tree.

I started the work to migrate the CLCD driver to DRM in
april 2017 and it took a little more than 3 years to do this
properly without leaving any platforms behind.

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
As the framebuffer subsystem is orphaned I expect this to
go in through the drm-misc tree.
---
 MAINTAINERS                     |   5 -
 drivers/video/fbdev/Kconfig     |  20 -
 drivers/video/fbdev/Makefile    |   1 -
 drivers/video/fbdev/amba-clcd.c | 989 --------------------------------
 include/linux/amba/clcd.h       | 290 ----------
 5 files changed, 1305 deletions(-)
 delete mode 100644 drivers/video/fbdev/amba-clcd.c
 delete mode 100644 include/linux/amba/clcd.h

diff --git a/MAINTAINERS b/MAINTAINERS
index df86f6f06000..086894075397 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1432,11 +1432,6 @@ S:	Odd Fixes
 F:	drivers/amba/
 F:	include/linux/amba/bus.h
 
-ARM PRIMECELL CLCD PL110 DRIVER
-M:	Russell King <linux@armlinux.org.uk>
-S:	Odd Fixes
-F:	drivers/video/fbdev/amba-clcd.*
-
 ARM PRIMECELL KMI PL050 DRIVER
 M:	Russell King <linux@armlinux.org.uk>
 S:	Odd Fixes
diff --git a/drivers/video/fbdev/Kconfig b/drivers/video/fbdev/Kconfig
index fa88e8b9a83d..0a5fc63e05d2 100644
--- a/drivers/video/fbdev/Kconfig
+++ b/drivers/video/fbdev/Kconfig
@@ -272,26 +272,6 @@ config FB_PM2_FIFO_DISCONNECT
 	help
 	  Support the Permedia2 FIFO disconnect feature.
 
-config FB_ARMCLCD
-	tristate "ARM PrimeCell PL110 support"
-	depends on ARM || ARM64 || COMPILE_TEST
-	depends on FB && ARM_AMBA && HAS_IOMEM
-	select FB_CFB_FILLRECT
-	select FB_CFB_COPYAREA
-	select FB_CFB_IMAGEBLIT
-	select FB_MODE_HELPERS if OF
-	select VIDEOMODE_HELPERS if OF
-	select BACKLIGHT_CLASS_DEVICE if OF
-	help
-	  This framebuffer device driver is for the ARM PrimeCell PL110
-	  Colour LCD controller.  ARM PrimeCells provide the building
-	  blocks for System on a Chip devices.
-
-	  If you want to compile this as a module (=code which can be
-	  inserted into and removed from the running kernel), say M
-	  here and read <file:Documentation/kbuild/modules.rst>.  The module
-	  will be called amba-clcd.
-
 config FB_ACORN
 	bool "Acorn VIDC support"
 	depends on (FB = y) && ARM && ARCH_ACORN
diff --git a/drivers/video/fbdev/Makefile b/drivers/video/fbdev/Makefile
index aa6352798cf4..76a43ec8f24c 100644
--- a/drivers/video/fbdev/Makefile
+++ b/drivers/video/fbdev/Makefile
@@ -75,7 +75,6 @@ obj-$(CONFIG_FB_HIT)              += hitfb.o
 obj-$(CONFIG_FB_ATMEL)		  += atmel_lcdfb.o
 obj-$(CONFIG_FB_PVR2)             += pvr2fb.o
 obj-$(CONFIG_FB_VOODOO1)          += sstfb.o
-obj-$(CONFIG_FB_ARMCLCD)	  += amba-clcd.o
 obj-$(CONFIG_FB_GOLDFISH)         += goldfishfb.o
 obj-$(CONFIG_FB_68328)            += 68328fb.o
 obj-$(CONFIG_FB_GBE)              += gbefb.o
diff --git a/drivers/video/fbdev/amba-clcd.c b/drivers/video/fbdev/amba-clcd.c
deleted file mode 100644
index c3d55fc6c4e0..000000000000
--- a/drivers/video/fbdev/amba-clcd.c
+++ /dev/null
@@ -1,989 +0,0 @@
-/*
- *  linux/drivers/video/amba-clcd.c
- *
- * Copyright (C) 2001 ARM Limited, by David A Rusling
- * Updated to 2.5, Deep Blue Solutions Ltd.
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of this archive
- * for more details.
- *
- *  ARM PrimeCell PL110 Color LCD Controller
- */
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-#include <linux/backlight.h>
-#include <linux/clk.h>
-#include <linux/delay.h>
-#include <linux/dma-mapping.h>
-#include <linux/fb.h>
-#include <linux/init.h>
-#include <linux/ioport.h>
-#include <linux/list.h>
-#include <linux/mm.h>
-#include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_graph.h>
-#include <linux/slab.h>
-#include <linux/string.h>
-#include <video/display_timing.h>
-#include <video/of_display_timing.h>
-#include <video/videomode.h>
-
-#define to_clcd(info)	container_of(info, struct clcd_fb, fb)
-
-/* This is limited to 16 characters when displayed by X startup */
-static const char *clcd_name = "CLCD FB";
-
-/*
- * Unfortunately, the enable/disable functions may be called either from
- * process or IRQ context, and we _need_ to delay.  This is _not_ good.
- */
-static inline void clcdfb_sleep(unsigned int ms)
-{
-	if (in_atomic()) {
-		mdelay(ms);
-	} else {
-		msleep(ms);
-	}
-}
-
-static inline void clcdfb_set_start(struct clcd_fb *fb)
-{
-	unsigned long ustart = fb->fb.fix.smem_start;
-	unsigned long lstart;
-
-	ustart += fb->fb.var.yoffset * fb->fb.fix.line_length;
-	lstart = ustart + fb->fb.var.yres * fb->fb.fix.line_length / 2;
-
-	writel(ustart, fb->regs + CLCD_UBAS);
-	writel(lstart, fb->regs + CLCD_LBAS);
-}
-
-static void clcdfb_disable(struct clcd_fb *fb)
-{
-	u32 val;
-
-	if (fb->board->disable)
-		fb->board->disable(fb);
-
-	if (fb->panel->backlight) {
-		fb->panel->backlight->props.power = FB_BLANK_POWERDOWN;
-		backlight_update_status(fb->panel->backlight);
-	}
-
-	val = readl(fb->regs + fb->off_cntl);
-	if (val & CNTL_LCDPWR) {
-		val &= ~CNTL_LCDPWR;
-		writel(val, fb->regs + fb->off_cntl);
-
-		clcdfb_sleep(20);
-	}
-	if (val & CNTL_LCDEN) {
-		val &= ~CNTL_LCDEN;
-		writel(val, fb->regs + fb->off_cntl);
-	}
-
-	/*
-	 * Disable CLCD clock source.
-	 */
-	if (fb->clk_enabled) {
-		fb->clk_enabled = false;
-		clk_disable(fb->clk);
-	}
-}
-
-static void clcdfb_enable(struct clcd_fb *fb, u32 cntl)
-{
-	/*
-	 * Enable the CLCD clock source.
-	 */
-	if (!fb->clk_enabled) {
-		fb->clk_enabled = true;
-		clk_enable(fb->clk);
-	}
-
-	/*
-	 * Bring up by first enabling..
-	 */
-	cntl |= CNTL_LCDEN;
-	writel(cntl, fb->regs + fb->off_cntl);
-
-	clcdfb_sleep(20);
-
-	/*
-	 * and now apply power.
-	 */
-	cntl |= CNTL_LCDPWR;
-	writel(cntl, fb->regs + fb->off_cntl);
-
-	/*
-	 * Turn on backlight
-	 */
-	if (fb->panel->backlight) {
-		fb->panel->backlight->props.power = FB_BLANK_UNBLANK;
-		backlight_update_status(fb->panel->backlight);
-	}
-
-	/*
-	 * finally, enable the interface.
-	 */
-	if (fb->board->enable)
-		fb->board->enable(fb);
-}
-
-static int
-clcdfb_set_bitfields(struct clcd_fb *fb, struct fb_var_screeninfo *var)
-{
-	u32 caps;
-	int ret = 0;
-
-	if (fb->panel->caps && fb->board->caps)
-		caps = fb->panel->caps & fb->board->caps;
-	else {
-		/* Old way of specifying what can be used */
-		caps = fb->panel->cntl & CNTL_BGR ?
-			CLCD_CAP_BGR : CLCD_CAP_RGB;
-		/* But mask out 444 modes as they weren't supported */
-		caps &= ~CLCD_CAP_444;
-	}
-
-	/* Only TFT panels can do RGB888/BGR888 */
-	if (!(fb->panel->cntl & CNTL_LCDTFT))
-		caps &= ~CLCD_CAP_888;
-
-	memset(&var->transp, 0, sizeof(var->transp));
-
-	var->red.msb_right = 0;
-	var->green.msb_right = 0;
-	var->blue.msb_right = 0;
-
-	switch (var->bits_per_pixel) {
-	case 1:
-	case 2:
-	case 4:
-	case 8:
-		/* If we can't do 5551, reject */
-		caps &= CLCD_CAP_5551;
-		if (!caps) {
-			ret = -EINVAL;
-			break;
-		}
-
-		var->red.length		= var->bits_per_pixel;
-		var->red.offset		= 0;
-		var->green.length	= var->bits_per_pixel;
-		var->green.offset	= 0;
-		var->blue.length	= var->bits_per_pixel;
-		var->blue.offset	= 0;
-		break;
-
-	case 16:
-		/* If we can't do 444, 5551 or 565, reject */
-		if (!(caps & (CLCD_CAP_444 | CLCD_CAP_5551 | CLCD_CAP_565))) {
-			ret = -EINVAL;
-			break;
-		}
-
-		/*
-		 * Green length can be 4, 5 or 6 depending whether
-		 * we're operating in 444, 5551 or 565 mode.
-		 */
-		if (var->green.length == 4 && caps & CLCD_CAP_444)
-			caps &= CLCD_CAP_444;
-		if (var->green.length == 5 && caps & CLCD_CAP_5551)
-			caps &= CLCD_CAP_5551;
-		else if (var->green.length == 6 && caps & CLCD_CAP_565)
-			caps &= CLCD_CAP_565;
-		else {
-			/*
-			 * PL110 officially only supports RGB555,
-			 * but may be wired up to allow RGB565.
-			 */
-			if (caps & CLCD_CAP_565) {
-				var->green.length = 6;
-				caps &= CLCD_CAP_565;
-			} else if (caps & CLCD_CAP_5551) {
-				var->green.length = 5;
-				caps &= CLCD_CAP_5551;
-			} else {
-				var->green.length = 4;
-				caps &= CLCD_CAP_444;
-			}
-		}
-
-		if (var->green.length >= 5) {
-			var->red.length = 5;
-			var->blue.length = 5;
-		} else {
-			var->red.length = 4;
-			var->blue.length = 4;
-		}
-		break;
-	case 32:
-		/* If we can't do 888, reject */
-		caps &= CLCD_CAP_888;
-		if (!caps) {
-			ret = -EINVAL;
-			break;
-		}
-
-		var->red.length = 8;
-		var->green.length = 8;
-		var->blue.length = 8;
-		break;
-	default:
-		ret = -EINVAL;
-		break;
-	}
-
-	/*
-	 * >= 16bpp displays have separate colour component bitfields
-	 * encoded in the pixel data.  Calculate their position from
-	 * the bitfield length defined above.
-	 */
-	if (ret == 0 && var->bits_per_pixel >= 16) {
-		bool bgr, rgb;
-
-		bgr = caps & CLCD_CAP_BGR && var->blue.offset == 0;
-		rgb = caps & CLCD_CAP_RGB && var->red.offset == 0;
-
-		if (!bgr && !rgb)
-			/*
-			 * The requested format was not possible, try just
-			 * our capabilities.  One of BGR or RGB must be
-			 * supported.
-			 */
-			bgr = caps & CLCD_CAP_BGR;
-
-		if (bgr) {
-			var->blue.offset = 0;
-			var->green.offset = var->blue.offset + var->blue.length;
-			var->red.offset = var->green.offset + var->green.length;
-		} else {
-			var->red.offset = 0;
-			var->green.offset = var->red.offset + var->red.length;
-			var->blue.offset = var->green.offset + var->green.length;
-		}
-	}
-
-	return ret;
-}
-
-static int clcdfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
-{
-	struct clcd_fb *fb = to_clcd(info);
-	int ret = -EINVAL;
-
-	if (fb->board->check)
-		ret = fb->board->check(fb, var);
-
-	if (ret == 0 &&
-	    var->xres_virtual * var->bits_per_pixel / 8 *
-	    var->yres_virtual > fb->fb.fix.smem_len)
-		ret = -EINVAL;
-
-	if (ret == 0)
-		ret = clcdfb_set_bitfields(fb, var);
-
-	return ret;
-}
-
-static int clcdfb_set_par(struct fb_info *info)
-{
-	struct clcd_fb *fb = to_clcd(info);
-	struct clcd_regs regs;
-
-	fb->fb.fix.line_length = fb->fb.var.xres_virtual *
-				 fb->fb.var.bits_per_pixel / 8;
-
-	if (fb->fb.var.bits_per_pixel <= 8)
-		fb->fb.fix.visual = FB_VISUAL_PSEUDOCOLOR;
-	else
-		fb->fb.fix.visual = FB_VISUAL_TRUECOLOR;
-
-	fb->board->decode(fb, &regs);
-
-	clcdfb_disable(fb);
-
-	writel(regs.tim0, fb->regs + CLCD_TIM0);
-	writel(regs.tim1, fb->regs + CLCD_TIM1);
-	writel(regs.tim2, fb->regs + CLCD_TIM2);
-	writel(regs.tim3, fb->regs + CLCD_TIM3);
-
-	clcdfb_set_start(fb);
-
-	clk_set_rate(fb->clk, (1000000000 / regs.pixclock) * 1000);
-
-	fb->clcd_cntl = regs.cntl;
-
-	clcdfb_enable(fb, regs.cntl);
-
-#ifdef DEBUG
-	printk(KERN_INFO
-	       "CLCD: Registers set to\n"
-	       "  %08x %08x %08x %08x\n"
-	       "  %08x %08x %08x %08x\n",
-		readl(fb->regs + CLCD_TIM0), readl(fb->regs + CLCD_TIM1),
-		readl(fb->regs + CLCD_TIM2), readl(fb->regs + CLCD_TIM3),
-		readl(fb->regs + CLCD_UBAS), readl(fb->regs + CLCD_LBAS),
-		readl(fb->regs + fb->off_ienb), readl(fb->regs + fb->off_cntl));
-#endif
-
-	return 0;
-}
-
-static inline u32 convert_bitfield(int val, struct fb_bitfield *bf)
-{
-	unsigned int mask = (1 << bf->length) - 1;
-
-	return (val >> (16 - bf->length) & mask) << bf->offset;
-}
-
-/*
- *  Set a single color register. The values supplied have a 16 bit
- *  magnitude.  Return != 0 for invalid regno.
- */
-static int
-clcdfb_setcolreg(unsigned int regno, unsigned int red, unsigned int green,
-		 unsigned int blue, unsigned int transp, struct fb_info *info)
-{
-	struct clcd_fb *fb = to_clcd(info);
-
-	if (regno < 16)
-		fb->cmap[regno] = convert_bitfield(transp, &fb->fb.var.transp) |
-				  convert_bitfield(blue, &fb->fb.var.blue) |
-				  convert_bitfield(green, &fb->fb.var.green) |
-				  convert_bitfield(red, &fb->fb.var.red);
-
-	if (fb->fb.fix.visual == FB_VISUAL_PSEUDOCOLOR && regno < 256) {
-		int hw_reg = CLCD_PALETTE + ((regno * 2) & ~3);
-		u32 val, mask, newval;
-
-		newval  = (red >> 11)  & 0x001f;
-		newval |= (green >> 6) & 0x03e0;
-		newval |= (blue >> 1)  & 0x7c00;
-
-		/*
-		 * 3.2.11: if we're configured for big endian
-		 * byte order, the palette entries are swapped.
-		 */
-		if (fb->clcd_cntl & CNTL_BEBO)
-			regno ^= 1;
-
-		if (regno & 1) {
-			newval <<= 16;
-			mask = 0x0000ffff;
-		} else {
-			mask = 0xffff0000;
-		}
-
-		val = readl(fb->regs + hw_reg) & mask;
-		writel(val | newval, fb->regs + hw_reg);
-	}
-
-	return regno > 255;
-}
-
-/*
- *  Blank the screen if blank_mode != 0, else unblank. If blank == NULL
- *  then the caller blanks by setting the CLUT (Color Look Up Table) to all
- *  black. Return 0 if blanking succeeded, != 0 if un-/blanking failed due
- *  to e.g. a video mode which doesn't support it. Implements VESA suspend
- *  and powerdown modes on hardware that supports disabling hsync/vsync:
- *    blank_mode == 2: suspend vsync
- *    blank_mode == 3: suspend hsync
- *    blank_mode == 4: powerdown
- */
-static int clcdfb_blank(int blank_mode, struct fb_info *info)
-{
-	struct clcd_fb *fb = to_clcd(info);
-
-	if (blank_mode != 0) {
-		clcdfb_disable(fb);
-	} else {
-		clcdfb_enable(fb, fb->clcd_cntl);
-	}
-	return 0;
-}
-
-static int clcdfb_mmap(struct fb_info *info,
-		       struct vm_area_struct *vma)
-{
-	struct clcd_fb *fb = to_clcd(info);
-	unsigned long len, off = vma->vm_pgoff << PAGE_SHIFT;
-	int ret = -EINVAL;
-
-	len = info->fix.smem_len;
-
-	if (off <= len && vma->vm_end - vma->vm_start <= len - off &&
-	    fb->board->mmap)
-		ret = fb->board->mmap(fb, vma);
-
-	return ret;
-}
-
-static const struct fb_ops clcdfb_ops = {
-	.owner		= THIS_MODULE,
-	.fb_check_var	= clcdfb_check_var,
-	.fb_set_par	= clcdfb_set_par,
-	.fb_setcolreg	= clcdfb_setcolreg,
-	.fb_blank	= clcdfb_blank,
-	.fb_fillrect	= cfb_fillrect,
-	.fb_copyarea	= cfb_copyarea,
-	.fb_imageblit	= cfb_imageblit,
-	.fb_mmap	= clcdfb_mmap,
-};
-
-static int clcdfb_register(struct clcd_fb *fb)
-{
-	int ret;
-
-	/*
-	 * ARM PL111 always has IENB at 0x1c; it's only PL110
-	 * which is reversed on some platforms.
-	 */
-	if (amba_manf(fb->dev) == 0x41 && amba_part(fb->dev) == 0x111) {
-		fb->off_ienb = CLCD_PL111_IENB;
-		fb->off_cntl = CLCD_PL111_CNTL;
-	} else {
-		fb->off_ienb = CLCD_PL110_IENB;
-		fb->off_cntl = CLCD_PL110_CNTL;
-	}
-
-	fb->clk = clk_get(&fb->dev->dev, NULL);
-	if (IS_ERR(fb->clk)) {
-		ret = PTR_ERR(fb->clk);
-		goto out;
-	}
-
-	ret = clk_prepare(fb->clk);
-	if (ret)
-		goto free_clk;
-
-	fb->fb.device		= &fb->dev->dev;
-
-	fb->fb.fix.mmio_start	= fb->dev->res.start;
-	fb->fb.fix.mmio_len	= resource_size(&fb->dev->res);
-
-	fb->regs = ioremap(fb->fb.fix.mmio_start, fb->fb.fix.mmio_len);
-	if (!fb->regs) {
-		printk(KERN_ERR "CLCD: unable to remap registers\n");
-		ret = -ENOMEM;
-		goto clk_unprep;
-	}
-
-	fb->fb.fbops		= &clcdfb_ops;
-	fb->fb.flags		= FBINFO_FLAG_DEFAULT;
-	fb->fb.pseudo_palette	= fb->cmap;
-
-	strncpy(fb->fb.fix.id, clcd_name, sizeof(fb->fb.fix.id));
-	fb->fb.fix.type		= FB_TYPE_PACKED_PIXELS;
-	fb->fb.fix.type_aux	= 0;
-	fb->fb.fix.xpanstep	= 0;
-	fb->fb.fix.ypanstep	= 0;
-	fb->fb.fix.ywrapstep	= 0;
-	fb->fb.fix.accel	= FB_ACCEL_NONE;
-
-	fb->fb.var.xres		= fb->panel->mode.xres;
-	fb->fb.var.yres		= fb->panel->mode.yres;
-	fb->fb.var.xres_virtual	= fb->panel->mode.xres;
-	fb->fb.var.yres_virtual	= fb->panel->mode.yres;
-	fb->fb.var.bits_per_pixel = fb->panel->bpp;
-	fb->fb.var.grayscale	= fb->panel->grayscale;
-	fb->fb.var.pixclock	= fb->panel->mode.pixclock;
-	fb->fb.var.left_margin	= fb->panel->mode.left_margin;
-	fb->fb.var.right_margin	= fb->panel->mode.right_margin;
-	fb->fb.var.upper_margin	= fb->panel->mode.upper_margin;
-	fb->fb.var.lower_margin	= fb->panel->mode.lower_margin;
-	fb->fb.var.hsync_len	= fb->panel->mode.hsync_len;
-	fb->fb.var.vsync_len	= fb->panel->mode.vsync_len;
-	fb->fb.var.sync		= fb->panel->mode.sync;
-	fb->fb.var.vmode	= fb->panel->mode.vmode;
-	fb->fb.var.activate	= FB_ACTIVATE_NOW;
-	fb->fb.var.nonstd	= 0;
-	fb->fb.var.height	= fb->panel->height;
-	fb->fb.var.width	= fb->panel->width;
-	fb->fb.var.accel_flags	= 0;
-
-	fb->fb.monspecs.hfmin	= 0;
-	fb->fb.monspecs.hfmax   = 100000;
-	fb->fb.monspecs.vfmin	= 0;
-	fb->fb.monspecs.vfmax	= 400;
-	fb->fb.monspecs.dclkmin = 1000000;
-	fb->fb.monspecs.dclkmax	= 100000000;
-
-	/*
-	 * Make sure that the bitfields are set appropriately.
-	 */
-	clcdfb_set_bitfields(fb, &fb->fb.var);
-
-	/*
-	 * Allocate colourmap.
-	 */
-	ret = fb_alloc_cmap(&fb->fb.cmap, 256, 0);
-	if (ret)
-		goto unmap;
-
-	/*
-	 * Ensure interrupts are disabled.
-	 */
-	writel(0, fb->regs + fb->off_ienb);
-
-	fb_set_var(&fb->fb, &fb->fb.var);
-
-	dev_info(&fb->dev->dev, "%s hardware, %s display\n",
-	         fb->board->name, fb->panel->mode.name);
-
-	ret = register_framebuffer(&fb->fb);
-	if (ret == 0)
-		goto out;
-
-	printk(KERN_ERR "CLCD: cannot register framebuffer (%d)\n", ret);
-
-	fb_dealloc_cmap(&fb->fb.cmap);
- unmap:
-	iounmap(fb->regs);
- clk_unprep:
-	clk_unprepare(fb->clk);
- free_clk:
-	clk_put(fb->clk);
- out:
-	return ret;
-}
-
-#ifdef CONFIG_OF
-static int clcdfb_of_get_dpi_panel_mode(struct device_node *node,
-		struct clcd_panel *clcd_panel)
-{
-	int err;
-	struct display_timing timing;
-	struct videomode video;
-
-	err = of_get_display_timing(node, "panel-timing", &timing);
-	if (err) {
-		pr_err("%pOF: problems parsing panel-timing (%d)\n", node, err);
-		return err;
-	}
-
-	videomode_from_timing(&timing, &video);
-
-	err = fb_videomode_from_videomode(&video, &clcd_panel->mode);
-	if (err)
-		return err;
-
-	/* Set up some inversion flags */
-	if (timing.flags & DISPLAY_FLAGS_PIXDATA_NEGEDGE)
-		clcd_panel->tim2 |= TIM2_IPC;
-	else if (!(timing.flags & DISPLAY_FLAGS_PIXDATA_POSEDGE))
-		/*
-		 * To preserve backwards compatibility, the IPC (inverted
-		 * pixel clock) flag needs to be set on any display that
-		 * doesn't explicitly specify that the pixel clock is
-		 * active on the negative or positive edge.
-		 */
-		clcd_panel->tim2 |= TIM2_IPC;
-
-	if (timing.flags & DISPLAY_FLAGS_HSYNC_LOW)
-		clcd_panel->tim2 |= TIM2_IHS;
-
-	if (timing.flags & DISPLAY_FLAGS_VSYNC_LOW)
-		clcd_panel->tim2 |= TIM2_IVS;
-
-	if (timing.flags & DISPLAY_FLAGS_DE_LOW)
-		clcd_panel->tim2 |= TIM2_IOE;
-
-	return 0;
-}
-
-static int clcdfb_snprintf_mode(char *buf, int size, struct fb_videomode *mode)
-{
-	return snprintf(buf, size, "%ux%u@%u", mode->xres, mode->yres,
-			mode->refresh);
-}
-
-static int clcdfb_of_get_backlight(struct device_node *panel,
-				   struct clcd_panel *clcd_panel)
-{
-	struct device_node *backlight;
-
-	/* Look up the optional backlight phandle */
-	backlight = of_parse_phandle(panel, "backlight", 0);
-	if (backlight) {
-		clcd_panel->backlight = of_find_backlight_by_node(backlight);
-		of_node_put(backlight);
-
-		if (!clcd_panel->backlight)
-			return -EPROBE_DEFER;
-	}
-	return 0;
-}
-
-static int clcdfb_of_get_mode(struct device *dev, struct device_node *panel,
-			      struct clcd_panel *clcd_panel)
-{
-	int err;
-	struct fb_videomode *mode;
-	char *name;
-	int len;
-
-	/* Only directly connected DPI panels supported for now */
-	if (of_device_is_compatible(panel, "panel-dpi"))
-		err = clcdfb_of_get_dpi_panel_mode(panel, clcd_panel);
-	else
-		err = -ENOENT;
-	if (err)
-		return err;
-	mode = &clcd_panel->mode;
-
-	len = clcdfb_snprintf_mode(NULL, 0, mode);
-	name = devm_kzalloc(dev, len + 1, GFP_KERNEL);
-	if (!name)
-		return -ENOMEM;
-
-	clcdfb_snprintf_mode(name, len + 1, mode);
-	mode->name = name;
-
-	return 0;
-}
-
-static int clcdfb_of_init_tft_panel(struct clcd_fb *fb, u32 r0, u32 g0, u32 b0)
-{
-	static struct {
-		unsigned int part;
-		u32 r0, g0, b0;
-		u32 caps;
-	} panels[] = {
-		{ 0x110, 1,  7, 13, CLCD_CAP_5551 },
-		{ 0x110, 0,  8, 16, CLCD_CAP_888 },
-		{ 0x110, 16, 8, 0,  CLCD_CAP_888 },
-		{ 0x111, 4, 14, 20, CLCD_CAP_444 },
-		{ 0x111, 3, 11, 19, CLCD_CAP_444 | CLCD_CAP_5551 },
-		{ 0x111, 3, 10, 19, CLCD_CAP_444 | CLCD_CAP_5551 |
-				    CLCD_CAP_565 },
-		{ 0x111, 0,  8, 16, CLCD_CAP_444 | CLCD_CAP_5551 |
-				    CLCD_CAP_565 | CLCD_CAP_888 },
-	};
-	int i;
-
-	/* Bypass pixel clock divider */
-	fb->panel->tim2 |= TIM2_BCD;
-
-	/* TFT display, vert. comp. interrupt at the start of the back porch */
-	fb->panel->cntl |= CNTL_LCDTFT | CNTL_LCDVCOMP(1);
-
-	fb->panel->caps = 0;
-
-	/* Match the setup with known variants */
-	for (i = 0; i < ARRAY_SIZE(panels) && !fb->panel->caps; i++) {
-		if (amba_part(fb->dev) != panels[i].part)
-			continue;
-		if (g0 != panels[i].g0)
-			continue;
-		if (r0 == panels[i].r0 && b0 == panels[i].b0)
-			fb->panel->caps = panels[i].caps;
-	}
-
-	/*
-	 * If we actually physically connected the R lines to B and
-	 * vice versa
-	 */
-	if (r0 != 0 && b0 == 0)
-		fb->panel->bgr_connection = true;
-
-	return fb->panel->caps ? 0 : -EINVAL;
-}
-
-static int clcdfb_of_init_display(struct clcd_fb *fb)
-{
-	struct device_node *endpoint, *panel;
-	int err;
-	unsigned int bpp;
-	u32 max_bandwidth;
-	u32 tft_r0b0g0[3];
-
-	fb->panel = devm_kzalloc(&fb->dev->dev, sizeof(*fb->panel), GFP_KERNEL);
-	if (!fb->panel)
-		return -ENOMEM;
-
-	/*
-	 * Fetch the panel endpoint.
-	 */
-	endpoint = of_graph_get_next_endpoint(fb->dev->dev.of_node, NULL);
-	if (!endpoint)
-		return -ENODEV;
-
-	panel = of_graph_get_remote_port_parent(endpoint);
-	if (!panel)
-		return -ENODEV;
-
-	err = clcdfb_of_get_backlight(panel, fb->panel);
-	if (err)
-		return err;
-
-	err = clcdfb_of_get_mode(&fb->dev->dev, panel, fb->panel);
-	if (err)
-		return err;
-
-	err = of_property_read_u32(fb->dev->dev.of_node, "max-memory-bandwidth",
-			&max_bandwidth);
-	if (!err) {
-		/*
-		 * max_bandwidth is in bytes per second and pixclock in
-		 * pico-seconds, so the maximum allowed bits per pixel is
-		 *   8 * max_bandwidth / (PICOS2KHZ(pixclock) * 1000)
-		 * Rearrange this calculation to avoid overflow and then ensure
-		 * result is a valid format.
-		 */
-		bpp = max_bandwidth / (1000 / 8)
-			/ PICOS2KHZ(fb->panel->mode.pixclock);
-		bpp = rounddown_pow_of_two(bpp);
-		if (bpp > 32)
-			bpp = 32;
-	} else
-		bpp = 32;
-	fb->panel->bpp = bpp;
-
-#ifdef CONFIG_CPU_BIG_ENDIAN
-	fb->panel->cntl |= CNTL_BEBO;
-#endif
-	fb->panel->width = -1;
-	fb->panel->height = -1;
-
-	if (of_property_read_u32_array(endpoint,
-			"arm,pl11x,tft-r0g0b0-pads",
-			tft_r0b0g0, ARRAY_SIZE(tft_r0b0g0)) != 0)
-		return -ENOENT;
-
-	return clcdfb_of_init_tft_panel(fb, tft_r0b0g0[0],
-					tft_r0b0g0[1],  tft_r0b0g0[2]);
-}
-
-static int clcdfb_of_vram_setup(struct clcd_fb *fb)
-{
-	int err;
-	struct device_node *memory;
-	u64 size;
-
-	err = clcdfb_of_init_display(fb);
-	if (err)
-		return err;
-
-	memory = of_parse_phandle(fb->dev->dev.of_node, "memory-region", 0);
-	if (!memory)
-		return -ENODEV;
-
-	fb->fb.screen_base = of_iomap(memory, 0);
-	if (!fb->fb.screen_base)
-		return -ENOMEM;
-
-	fb->fb.fix.smem_start = of_translate_address(memory,
-			of_get_address(memory, 0, &size, NULL));
-	fb->fb.fix.smem_len = size;
-
-	return 0;
-}
-
-static int clcdfb_of_vram_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
-{
-	unsigned long off, user_size, kernel_size;
-
-
-	off = vma->vm_pgoff << PAGE_SHIFT;
-	user_size = vma->vm_end - vma->vm_start;
-	kernel_size = fb->fb.fix.smem_len;
-
-	if (off >= kernel_size || user_size > (kernel_size - off))
-		return -ENXIO;
-
-	return remap_pfn_range(vma, vma->vm_start,
-			__phys_to_pfn(fb->fb.fix.smem_start) + vma->vm_pgoff,
-			user_size,
-			pgprot_writecombine(vma->vm_page_prot));
-}
-
-static void clcdfb_of_vram_remove(struct clcd_fb *fb)
-{
-	iounmap(fb->fb.screen_base);
-}
-
-static int clcdfb_of_dma_setup(struct clcd_fb *fb)
-{
-	unsigned long framesize;
-	dma_addr_t dma;
-	int err;
-
-	err = clcdfb_of_init_display(fb);
-	if (err)
-		return err;
-
-	framesize = PAGE_ALIGN(fb->panel->mode.xres * fb->panel->mode.yres *
-			fb->panel->bpp / 8);
-	fb->fb.screen_base = dma_alloc_coherent(&fb->dev->dev, framesize,
-			&dma, GFP_KERNEL);
-	if (!fb->fb.screen_base)
-		return -ENOMEM;
-
-	fb->fb.fix.smem_start = dma;
-	fb->fb.fix.smem_len = framesize;
-
-	return 0;
-}
-
-static int clcdfb_of_dma_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
-{
-	return dma_mmap_wc(&fb->dev->dev, vma, fb->fb.screen_base,
-			   fb->fb.fix.smem_start, fb->fb.fix.smem_len);
-}
-
-static void clcdfb_of_dma_remove(struct clcd_fb *fb)
-{
-	dma_free_coherent(&fb->dev->dev, fb->fb.fix.smem_len,
-			fb->fb.screen_base, fb->fb.fix.smem_start);
-}
-
-static struct clcd_board *clcdfb_of_get_board(struct amba_device *dev)
-{
-	struct clcd_board *board = devm_kzalloc(&dev->dev, sizeof(*board),
-			GFP_KERNEL);
-	struct device_node *node = dev->dev.of_node;
-
-	if (!board)
-		return NULL;
-
-	board->name = of_node_full_name(node);
-	board->caps = CLCD_CAP_ALL;
-	board->check = clcdfb_check;
-	board->decode = clcdfb_decode;
-	if (of_find_property(node, "memory-region", NULL)) {
-		board->setup = clcdfb_of_vram_setup;
-		board->mmap = clcdfb_of_vram_mmap;
-		board->remove = clcdfb_of_vram_remove;
-	} else {
-		board->setup = clcdfb_of_dma_setup;
-		board->mmap = clcdfb_of_dma_mmap;
-		board->remove = clcdfb_of_dma_remove;
-	}
-
-	return board;
-}
-#else
-static struct clcd_board *clcdfb_of_get_board(struct amba_device *dev)
-{
-	return NULL;
-}
-#endif
-
-static int clcdfb_probe(struct amba_device *dev, const struct amba_id *id)
-{
-	struct clcd_board *board = dev_get_platdata(&dev->dev);
-	struct clcd_fb *fb;
-	int ret;
-
-	if (!board)
-		board = clcdfb_of_get_board(dev);
-
-	if (!board)
-		return -EINVAL;
-
-	ret = dma_set_mask_and_coherent(&dev->dev, DMA_BIT_MASK(32));
-	if (ret)
-		goto out;
-
-	ret = amba_request_regions(dev, NULL);
-	if (ret) {
-		printk(KERN_ERR "CLCD: unable to reserve regs region\n");
-		goto out;
-	}
-
-	fb = kzalloc(sizeof(*fb), GFP_KERNEL);
-	if (!fb) {
-		ret = -ENOMEM;
-		goto free_region;
-	}
-
-	fb->dev = dev;
-	fb->board = board;
-
-	dev_info(&fb->dev->dev, "PL%03x designer %02x rev%u at 0x%08llx\n",
-		amba_part(dev), amba_manf(dev), amba_rev(dev),
-		(unsigned long long)dev->res.start);
-
-	ret = fb->board->setup(fb);
-	if (ret)
-		goto free_fb;
-
-	ret = clcdfb_register(fb);
-	if (ret == 0) {
-		amba_set_drvdata(dev, fb);
-		goto out;
-	}
-
-	fb->board->remove(fb);
- free_fb:
-	kfree(fb);
- free_region:
-	amba_release_regions(dev);
- out:
-	return ret;
-}
-
-static int clcdfb_remove(struct amba_device *dev)
-{
-	struct clcd_fb *fb = amba_get_drvdata(dev);
-
-	clcdfb_disable(fb);
-	unregister_framebuffer(&fb->fb);
-	if (fb->fb.cmap.len)
-		fb_dealloc_cmap(&fb->fb.cmap);
-	iounmap(fb->regs);
-	clk_unprepare(fb->clk);
-	clk_put(fb->clk);
-
-	fb->board->remove(fb);
-
-	kfree(fb);
-
-	amba_release_regions(dev);
-
-	return 0;
-}
-
-static const struct amba_id clcdfb_id_table[] = {
-	{
-		.id	= 0x00041110,
-		.mask	= 0x000ffffe,
-	},
-	{ 0, 0 },
-};
-
-MODULE_DEVICE_TABLE(amba, clcdfb_id_table);
-
-static struct amba_driver clcd_driver = {
-	.drv 		= {
-		.name	= "clcd-pl11x",
-	},
-	.probe		= clcdfb_probe,
-	.remove		= clcdfb_remove,
-	.id_table	= clcdfb_id_table,
-};
-
-static int __init amba_clcdfb_init(void)
-{
-	if (fb_get_options("ambafb", NULL))
-		return -ENODEV;
-
-	return amba_driver_register(&clcd_driver);
-}
-
-module_init(amba_clcdfb_init);
-
-static void __exit amba_clcdfb_exit(void)
-{
-	amba_driver_unregister(&clcd_driver);
-}
-
-module_exit(amba_clcdfb_exit);
-
-MODULE_DESCRIPTION("ARM PrimeCell PL110 CLCD core driver");
-MODULE_LICENSE("GPL");
diff --git a/include/linux/amba/clcd.h b/include/linux/amba/clcd.h
deleted file mode 100644
index b6e0cbeaf533..000000000000
--- a/include/linux/amba/clcd.h
+++ /dev/null
@@ -1,290 +0,0 @@
-/*
- * linux/include/asm-arm/hardware/amba_clcd.h -- Integrator LCD panel.
- *
- * David A Rusling
- *
- * Copyright (C) 2001 ARM Limited
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of this archive
- * for more details.
- */
-#include <linux/fb.h>
-#include <linux/amba/clcd-regs.h>
-
-enum {
-	/* individual formats */
-	CLCD_CAP_RGB444		= (1 << 0),
-	CLCD_CAP_RGB5551	= (1 << 1),
-	CLCD_CAP_RGB565		= (1 << 2),
-	CLCD_CAP_RGB888		= (1 << 3),
-	CLCD_CAP_BGR444		= (1 << 4),
-	CLCD_CAP_BGR5551	= (1 << 5),
-	CLCD_CAP_BGR565		= (1 << 6),
-	CLCD_CAP_BGR888		= (1 << 7),
-
-	/* connection layouts */
-	CLCD_CAP_444		= CLCD_CAP_RGB444 | CLCD_CAP_BGR444,
-	CLCD_CAP_5551		= CLCD_CAP_RGB5551 | CLCD_CAP_BGR5551,
-	CLCD_CAP_565		= CLCD_CAP_RGB565 | CLCD_CAP_BGR565,
-	CLCD_CAP_888		= CLCD_CAP_RGB888 | CLCD_CAP_BGR888,
-
-	/* red/blue ordering */
-	CLCD_CAP_RGB		= CLCD_CAP_RGB444 | CLCD_CAP_RGB5551 |
-				  CLCD_CAP_RGB565 | CLCD_CAP_RGB888,
-	CLCD_CAP_BGR		= CLCD_CAP_BGR444 | CLCD_CAP_BGR5551 |
-				  CLCD_CAP_BGR565 | CLCD_CAP_BGR888,
-
-	CLCD_CAP_ALL		= CLCD_CAP_BGR | CLCD_CAP_RGB,
-};
-
-struct backlight_device;
-
-struct clcd_panel {
-	struct fb_videomode	mode;
-	signed short		width;	/* width in mm */
-	signed short		height;	/* height in mm */
-	u32			tim2;
-	u32			tim3;
-	u32			cntl;
-	u32			caps;
-	unsigned int		bpp:8,
-				fixedtimings:1,
-				grayscale:1;
-	unsigned int		connector;
-	struct backlight_device	*backlight;
-	/*
-	 * If the B/R lines are switched between the CLCD
-	 * and the panel we need to know this and not try to
-	 * compensate with the BGR bit in the control register.
-	 */
-	bool			bgr_connection;
-};
-
-struct clcd_regs {
-	u32			tim0;
-	u32			tim1;
-	u32			tim2;
-	u32			tim3;
-	u32			cntl;
-	unsigned long		pixclock;
-};
-
-struct clcd_fb;
-
-/*
- * the board-type specific routines
- */
-struct clcd_board {
-	const char *name;
-
-	/*
-	 * Optional.  Hardware capability flags.
-	 */
-	u32	caps;
-
-	/*
-	 * Optional.  Check whether the var structure is acceptable
-	 * for this display.
-	 */
-	int	(*check)(struct clcd_fb *fb, struct fb_var_screeninfo *var);
-
-	/*
-	 * Compulsory.  Decode fb->fb.var into regs->*.  In the case of
-	 * fixed timing, set regs->* to the register values required.
-	 */
-	void	(*decode)(struct clcd_fb *fb, struct clcd_regs *regs);
-
-	/*
-	 * Optional.  Disable any extra display hardware.
-	 */
-	void	(*disable)(struct clcd_fb *);
-
-	/*
-	 * Optional.  Enable any extra display hardware.
-	 */
-	void	(*enable)(struct clcd_fb *);
-
-	/*
-	 * Setup platform specific parts of CLCD driver
-	 */
-	int	(*setup)(struct clcd_fb *);
-
-	/*
-	 * mmap the framebuffer memory
-	 */
-	int	(*mmap)(struct clcd_fb *, struct vm_area_struct *);
-
-	/*
-	 * Remove platform specific parts of CLCD driver
-	 */
-	void	(*remove)(struct clcd_fb *);
-};
-
-struct amba_device;
-struct clk;
-
-/* this data structure describes each frame buffer device we find */
-struct clcd_fb {
-	struct fb_info		fb;
-	struct amba_device	*dev;
-	struct clk		*clk;
-	struct clcd_panel	*panel;
-	struct clcd_board	*board;
-	void			*board_data;
-	void __iomem		*regs;
-	u16			off_ienb;
-	u16			off_cntl;
-	u32			clcd_cntl;
-	u32			cmap[16];
-	bool			clk_enabled;
-};
-
-static inline void clcdfb_decode(struct clcd_fb *fb, struct clcd_regs *regs)
-{
-	struct fb_var_screeninfo *var = &fb->fb.var;
-	u32 val, cpl;
-
-	/*
-	 * Program the CLCD controller registers and start the CLCD
-	 */
-	val = ((var->xres / 16) - 1) << 2;
-	val |= (var->hsync_len - 1) << 8;
-	val |= (var->right_margin - 1) << 16;
-	val |= (var->left_margin - 1) << 24;
-	regs->tim0 = val;
-
-	val = var->yres;
-	if (fb->panel->cntl & CNTL_LCDDUAL)
-		val /= 2;
-	val -= 1;
-	val |= (var->vsync_len - 1) << 10;
-	val |= var->lower_margin << 16;
-	val |= var->upper_margin << 24;
-	regs->tim1 = val;
-
-	val = fb->panel->tim2;
-	val |= var->sync & FB_SYNC_HOR_HIGH_ACT  ? 0 : TIM2_IHS;
-	val |= var->sync & FB_SYNC_VERT_HIGH_ACT ? 0 : TIM2_IVS;
-
-	cpl = var->xres_virtual;
-	if (fb->panel->cntl & CNTL_LCDTFT)	  /* TFT */
-		/* / 1 */;
-	else if (!var->grayscale)		  /* STN color */
-		cpl = cpl * 8 / 3;
-	else if (fb->panel->cntl & CNTL_LCDMONO8) /* STN monochrome, 8bit */
-		cpl /= 8;
-	else					  /* STN monochrome, 4bit */
-		cpl /= 4;
-
-	regs->tim2 = val | ((cpl - 1) << 16);
-
-	regs->tim3 = fb->panel->tim3;
-
-	val = fb->panel->cntl;
-	if (var->grayscale)
-		val |= CNTL_LCDBW;
-
-	if (fb->panel->caps && fb->board->caps && var->bits_per_pixel >= 16) {
-		/*
-		 * if board and panel supply capabilities, we can support
-		 * changing BGR/RGB depending on supplied parameters. Here
-		 * we switch to what the framebuffer is providing if need
-		 * be, so if the framebuffer is BGR but the display connection
-		 * is RGB (first case) we switch it around. Vice versa mutatis
-		 * mutandis if the framebuffer is RGB but the display connection
-		 * is BGR, we flip it around.
-		 */
-		if (var->red.offset == 0)
-			val &= ~CNTL_BGR;
-		else
-			val |= CNTL_BGR;
-		if (fb->panel->bgr_connection)
-			val ^= CNTL_BGR;
-	}
-
-	switch (var->bits_per_pixel) {
-	case 1:
-		val |= CNTL_LCDBPP1;
-		break;
-	case 2:
-		val |= CNTL_LCDBPP2;
-		break;
-	case 4:
-		val |= CNTL_LCDBPP4;
-		break;
-	case 8:
-		val |= CNTL_LCDBPP8;
-		break;
-	case 16:
-		/*
-		 * PL110 cannot choose between 5551 and 565 modes in its
-		 * control register.  It is possible to use 565 with
-		 * custom external wiring.
-		 */
-		if (amba_part(fb->dev) == 0x110 ||
-		    var->green.length == 5)
-			val |= CNTL_LCDBPP16;
-		else if (var->green.length == 6)
-			val |= CNTL_LCDBPP16_565;
-		else
-			val |= CNTL_LCDBPP16_444;
-		break;
-	case 32:
-		val |= CNTL_LCDBPP24;
-		break;
-	}
-
-	regs->cntl = val;
-	regs->pixclock = var->pixclock;
-}
-
-static inline int clcdfb_check(struct clcd_fb *fb, struct fb_var_screeninfo *var)
-{
-	var->xres_virtual = var->xres = (var->xres + 15) & ~15;
-	var->yres_virtual = var->yres = (var->yres + 1) & ~1;
-
-#define CHECK(e,l,h) (var->e < l || var->e > h)
-	if (CHECK(right_margin, (5+1), 256) ||	/* back porch */
-	    CHECK(left_margin, (5+1), 256) ||	/* front porch */
-	    CHECK(hsync_len, (5+1), 256) ||
-	    var->xres > 4096 ||
-	    var->lower_margin > 255 ||		/* back porch */
-	    var->upper_margin > 255 ||		/* front porch */
-	    var->vsync_len > 32 ||
-	    var->yres > 1024)
-		return -EINVAL;
-#undef CHECK
-
-	/* single panel mode: PCD = max(PCD, 1) */
-	/* dual panel mode: PCD = max(PCD, 5) */
-
-	/*
-	 * You can't change the grayscale setting, and
-	 * we can only do non-interlaced video.
-	 */
-	if (var->grayscale != fb->fb.var.grayscale ||
-	    (var->vmode & FB_VMODE_MASK) != FB_VMODE_NONINTERLACED)
-		return -EINVAL;
-
-#define CHECK(e) (var->e != fb->fb.var.e)
-	if (fb->panel->fixedtimings &&
-	    (CHECK(xres)		||
-	     CHECK(yres)		||
-	     CHECK(bits_per_pixel)	||
-	     CHECK(pixclock)		||
-	     CHECK(left_margin)		||
-	     CHECK(right_margin)	||
-	     CHECK(upper_margin)	||
-	     CHECK(lower_margin)	||
-	     CHECK(hsync_len)		||
-	     CHECK(vsync_len)		||
-	     CHECK(sync)))
-		return -EINVAL;
-#undef CHECK
-
-	var->nonstd = 0;
-	var->accel_flags = 0;
-
-	return 0;
-}
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
