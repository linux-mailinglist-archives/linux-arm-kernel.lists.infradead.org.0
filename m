Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8671B0198
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:35:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mMMMY0RAF8iQiM/W730Mf+cMrThJZI6kWX09v9ic1tw=; b=hpR/8s+vZrCJii
	ojrJqgyFxtzzevaAkXym/AJpkj0Mc3Cr9d9TJOksrxOPJiQ1oDPU6jLNH+Ni91JGe+aOlmChGlj+M
	UjpZMh5UVdowVoB0v4yMaU+FrVdjeNFWB9BO3KT/IizmxlUwNHuiwNkym9iopuOtXZyOEWumDFaZI
	F//vDI1AR9muwuivE5ZFUxSXsd5eWkcdKCGbTqu8I9XVD0eiZo97d30tD1eJa4JRI5CF1HHh87Ppd
	r6XRSa9vvrHcrNH9+wbvAXttQCID10obN7Vw9x8OGUl1mBfzKMnnLY3tJ+hRItHJai3mdp5p8AAsb
	+M0yumE5AbvgFgLgTPHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQ16-000123-2H; Mon, 20 Apr 2020 06:34:52 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQ0w-0000zr-Di
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:34:45 +0000
Received: by mail-lj1-x243.google.com with SMTP id u15so8647317ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 23:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4D8u893yJAbSUJx9cGm0vM/dMtwZ2FJuffGUqCVzw0o=;
 b=I9FrLqt2ZA/hwBT8Aven9R+lJsWm+PCh43tqc78QtrLG54QNALjwxthjhSgyduLKha
 0vM67F0gKOyy6SU1dYUUvbqoZN236EQq3bkNB1z5W7tF7YdMjRyJ0lbokL8h/20HgeTA
 gYsV+YGMa20Tqb/XcTKfv5zHUVAx4e4FsyHlFP3ZWHA3dltC9Hs4Tov6PiktV+GPRv1n
 df/Y73KtRlNbFWKgZXCLTj4hoadiNVPz/UsEe3RI5KIfhQ5bzI8ceOzGd+F3Q7a1q0dv
 JUn3HeSR5bYZtf9tIaf5lTlgkVhEbIDP1FecWBGKpv3JcLKoIlV69cO1eTIFIPrkL73a
 RJVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4D8u893yJAbSUJx9cGm0vM/dMtwZ2FJuffGUqCVzw0o=;
 b=MolrP7Fvvxa6+BGLeWBLNoAhZladnAuWhZ/GZQKty86ehhLhANHSJ0PO8oLErvQL08
 ZCetitsPs7ylgFtWAAIx0Tac0Cs3E9Yw+9I+WmEAWMuckfLpPH+DD8o2oiJ0R09yYKMx
 ijcZ8EqHDrufu7Y7YMoobJbYcBmjn2AgeHuum7YUrWacbI+5ERKMC1HaBqnmVwqMzmaZ
 i2me1qJmN8RAGl7UGvx+PWHVzRj7ojroSeG3FEUDC9DNfwWn5HK+wpPZ3hjUQ1qyIFBF
 lrZvrXfOAEQQUjwqeVyV2d3770FRnHBXloT7gmavra1QkpXmcjoWzHGqvsS+d7Dnmqzy
 ym7A==
X-Gm-Message-State: AGi0Pub20Aj8rc5Sy6svCPhyZU/K9guNdV8BdV8+IBcCPLXwGqIQfH/w
 aV8xaERIYThN71kEsd1KL7mmVyFO8ck=
X-Google-Smtp-Source: APiQypIeSg2+C2+1pYhc85wLSmzRsBFu0++ERSeIxAdBIP6/eIctXsg9QG/Tcj3aoAUDpd6UZISMrg==
X-Received: by 2002:a2e:9c92:: with SMTP id x18mr7876503lji.218.1587364478353; 
 Sun, 19 Apr 2020 23:34:38 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id z17sm152630ljc.8.2020.04.19.23.34.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 23:34:37 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: integrator: Retire LM and IM-PD1 boardfile code
Date: Mon, 20 Apr 2020 08:32:34 +0200
Message-Id: <20200420063234.388508-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_233442_987949_591431BA 
X-CRM114-Status: GOOD (  17.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We now support probing and populating logical modules and
the IM-PD1 example module in particular directly from the
device tree using the LM bus driver.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-integrator/Makefile        |   3 +-
 arch/arm/mach-integrator/impd1.c         | 475 -----------------------
 arch/arm/mach-integrator/impd1.h         |  15 -
 arch/arm/mach-integrator/integrator_ap.c |  31 --
 arch/arm/mach-integrator/lm.c            |  96 -----
 arch/arm/mach-integrator/lm.h            |  24 --
 6 files changed, 1 insertion(+), 643 deletions(-)
 delete mode 100644 arch/arm/mach-integrator/impd1.c
 delete mode 100644 arch/arm/mach-integrator/impd1.h
 delete mode 100644 arch/arm/mach-integrator/lm.c
 delete mode 100644 arch/arm/mach-integrator/lm.h

diff --git a/arch/arm/mach-integrator/Makefile b/arch/arm/mach-integrator/Makefile
index 71b97ffe8d32..7857a55c90b0 100644
--- a/arch/arm/mach-integrator/Makefile
+++ b/arch/arm/mach-integrator/Makefile
@@ -5,7 +5,6 @@
 
 # Object file lists.
 
-obj-y					:= core.o lm.o
+obj-y					:= core.o
 obj-$(CONFIG_ARCH_INTEGRATOR_AP)	+= integrator_ap.o
 obj-$(CONFIG_ARCH_INTEGRATOR_CP)	+= integrator_cp.o
-obj-$(CONFIG_INTEGRATOR_IMPD1)		+= impd1.o
diff --git a/arch/arm/mach-integrator/impd1.c b/arch/arm/mach-integrator/impd1.c
deleted file mode 100644
index 6f875ded8419..000000000000
--- a/arch/arm/mach-integrator/impd1.c
+++ /dev/null
@@ -1,475 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *  linux/arch/arm/mach-integrator/impd1.c
- *
- *  Copyright (C) 2003 Deep Blue Solutions Ltd, All Rights Reserved.
- *
- *  This file provides the core support for the IM-PD1 module.
- *
- * Module / boot parameters.
- *   lmid=n   impd1.lmid=n - set the logic module position in stack to 'n'
- */
-#include <linux/module.h>
-#include <linux/moduleparam.h>
-#include <linux/init.h>
-#include <linux/device.h>
-#include <linux/errno.h>
-#include <linux/mm.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-#include <linux/amba/mmci.h>
-#include <linux/io.h>
-#include <linux/platform_data/clk-integrator.h>
-#include <linux/slab.h>
-#include <linux/irqchip/arm-vic.h>
-#include <linux/gpio/machine.h>
-
-#include <linux/sizes.h>
-#include "lm.h"
-#include "impd1.h"
-
-static int module_id;
-
-module_param_named(lmid, module_id, int, 0444);
-MODULE_PARM_DESC(lmid, "logic module stack position");
-
-struct impd1_module {
-	void __iomem	*base;
-	void __iomem	*vic_base;
-};
-
-void impd1_tweak_control(struct device *dev, u32 mask, u32 val)
-{
-	struct impd1_module *impd1 = dev_get_drvdata(dev);
-	u32 cur;
-
-	val &= mask;
-	cur = readl(impd1->base + IMPD1_CTRL) & ~mask;
-	writel(cur | val, impd1->base + IMPD1_CTRL);
-}
-
-EXPORT_SYMBOL(impd1_tweak_control);
-
-/*
- * MMC support
- */
-static struct mmci_platform_data mmc_data = {
-	.ocr_mask	= MMC_VDD_32_33|MMC_VDD_33_34,
-};
-
-/*
- * CLCD support
- */
-#define PANEL		PROSPECTOR
-
-#define LTM10C209		1
-#define PROSPECTOR		2
-#define SVGA			3
-#define VGA			4
-
-#if PANEL == VGA
-#define PANELTYPE	vga
-static struct clcd_panel vga = {
-	.mode		= {
-		.name		= "VGA",
-		.refresh	= 60,
-		.xres		= 640,
-		.yres		= 480,
-		.pixclock	= 39721,
-		.left_margin	= 40,
-		.right_margin	= 24,
-		.upper_margin	= 32,
-		.lower_margin	= 11,
-		.hsync_len	= 96,
-		.vsync_len	= 2,
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		= TIM2_BCD | TIM2_IPC,
-	.cntl		= CNTL_LCDTFT | CNTL_LCDVCOMP(1),
-	.caps		= CLCD_CAP_5551,
-	.connector	= IMPD1_CTRL_DISP_VGA,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-
-#elif PANEL == SVGA
-#define PANELTYPE	svga
-static struct clcd_panel svga = {
-	.mode		= {
-		.name		= "SVGA",
-		.refresh	= 0,
-		.xres		= 800,
-		.yres		= 600,
-		.pixclock	= 27778,
-		.left_margin	= 20,
-		.right_margin	= 20,
-		.upper_margin	= 5,
-		.lower_margin	= 5,
-		.hsync_len	= 164,
-		.vsync_len	= 62,
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		= TIM2_BCD,
-	.cntl		= CNTL_LCDTFT | CNTL_LCDVCOMP(1),
-	.connector	= IMPD1_CTRL_DISP_VGA,
-	.caps		= CLCD_CAP_5551,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-
-#elif PANEL == PROSPECTOR
-#define PANELTYPE	prospector
-static struct clcd_panel prospector = {
-	.mode		= {
-		.name		= "PROSPECTOR",
-		.refresh	= 0,
-		.xres		= 640,
-		.yres		= 480,
-		.pixclock	= 40000,
-		.left_margin	= 33,
-		.right_margin	= 64,
-		.upper_margin	= 36,
-		.lower_margin	= 7,
-		.hsync_len	= 64,
-		.vsync_len	= 25,
-		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		= TIM2_BCD,
-	.cntl		= CNTL_LCDTFT | CNTL_LCDVCOMP(1),
-	.caps		= CLCD_CAP_5551,
-	.fixedtimings	= 1,
-	.connector	= IMPD1_CTRL_DISP_LCD,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-
-#elif PANEL == LTM10C209
-#define PANELTYPE	ltm10c209
-/*
- * Untested.
- */
-static struct clcd_panel ltm10c209 = {
-	.mode		= {
-		.name		= "LTM10C209",
-		.refresh	= 0,
-		.xres		= 640,
-		.yres		= 480,
-		.pixclock	= 40000,
-		.left_margin	= 20,
-		.right_margin	= 20,
-		.upper_margin	= 19,
-		.lower_margin	= 19,
-		.hsync_len	= 20,
-		.vsync_len	= 10,
-		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	},
-	.width		= -1,
-	.height		= -1,
-	.tim2		= TIM2_BCD,
-	.cntl		= CNTL_LCDTFT | CNTL_LCDVCOMP(1),
-	.caps		= CLCD_CAP_5551,
-	.fixedtimings	= 1,
-	.connector	= IMPD1_CTRL_DISP_LCD,
-	.bpp		= 16,
-	.grayscale	= 0,
-};
-#endif
-
-/*
- * Disable all display connectors on the interface module.
- */
-static void impd1fb_clcd_disable(struct clcd_fb *fb)
-{
-	impd1_tweak_control(fb->dev->dev.parent, IMPD1_CTRL_DISP_MASK, 0);
-}
-
-/*
- * Enable the relevant connector on the interface module.
- */
-static void impd1fb_clcd_enable(struct clcd_fb *fb)
-{
-	impd1_tweak_control(fb->dev->dev.parent, IMPD1_CTRL_DISP_MASK,
-			fb->panel->connector | IMPD1_CTRL_DISP_ENABLE);
-}
-
-static int impd1fb_clcd_setup(struct clcd_fb *fb)
-{
-	unsigned long framebase = fb->dev->res.start + 0x01000000;
-	unsigned long framesize = SZ_1M;
-	int ret = 0;
-
-	fb->panel = &PANELTYPE;
-
-	if (!request_mem_region(framebase, framesize, "clcd framebuffer")) {
-		printk(KERN_ERR "IM-PD1: unable to reserve framebuffer\n");
-		return -EBUSY;
-	}
-
-	fb->fb.screen_base = ioremap(framebase, framesize);
-	if (!fb->fb.screen_base) {
-		printk(KERN_ERR "IM-PD1: unable to map framebuffer\n");
-		ret = -ENOMEM;
-		goto free_buffer;
-	}
-
-	fb->fb.fix.smem_start	= framebase;
-	fb->fb.fix.smem_len	= framesize;
-
-	return 0;
-
- free_buffer:
-	release_mem_region(framebase, framesize);
-	return ret;
-}
-
-static int impd1fb_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
-{
-	unsigned long start, size;
-
-	start = vma->vm_pgoff + (fb->fb.fix.smem_start >> PAGE_SHIFT);
-	size = vma->vm_end - vma->vm_start;
-
-	return remap_pfn_range(vma, vma->vm_start, start, size,
-			       vma->vm_page_prot);
-}
-
-static void impd1fb_clcd_remove(struct clcd_fb *fb)
-{
-	iounmap(fb->fb.screen_base);
-	release_mem_region(fb->fb.fix.smem_start, fb->fb.fix.smem_len);
-}
-
-static struct clcd_board impd1_clcd_data = {
-	.name		= "IM-PD/1",
-	.caps		= CLCD_CAP_5551 | CLCD_CAP_888,
-	.check		= clcdfb_check,
-	.decode		= clcdfb_decode,
-	.disable	= impd1fb_clcd_disable,
-	.enable		= impd1fb_clcd_enable,
-	.setup		= impd1fb_clcd_setup,
-	.mmap		= impd1fb_clcd_mmap,
-	.remove		= impd1fb_clcd_remove,
-};
-
-struct impd1_device {
-	unsigned long	offset;
-	unsigned int	irq[2];
-	unsigned int	id;
-	void		*platform_data;
-};
-
-static struct impd1_device impd1_devs[] = {
-	{
-		.offset	= 0x00100000,
-		.irq	= { 1 },
-		.id	= 0x00141011,
-	}, {
-		.offset	= 0x00200000,
-		.irq	= { 2 },
-		.id	= 0x00141011,
-	}, {
-		.offset	= 0x00300000,
-		.irq	= { 3 },
-		.id	= 0x00041022,
-	}, {
-		.offset	= 0x00400000,
-		.irq	= { 4 },
-		.id	= 0x00041061,
-	}, {
-		.offset	= 0x00500000,
-		.irq	= { 5 },
-		.id	= 0x00041061,
-	}, {
-		.offset	= 0x00600000,
-		.irq	= { 6 },
-		.id	= 0x00041130,
-	}, {
-		.offset	= 0x00700000,
-		.irq	= { 7, 8 },
-		.id	= 0x00041181,
-		.platform_data = &mmc_data,
-	}, {
-		.offset	= 0x00800000,
-		.irq	= { 9 },
-		.id	= 0x00041041,
-	}, {
-		.offset	= 0x01000000,
-		.irq	= { 11 },
-		.id	= 0x00041110,
-		.platform_data = &impd1_clcd_data,
-	}
-};
-
-/*
- * Valid IRQs: 0 thru 9 and 11, 10 unused.
- */
-#define IMPD1_VALID_IRQS 0x00000bffU
-
-/*
- * As this module is bool, it is OK to have this as __ref() - no
- * probe calls will be done after the initial system bootup, as devices
- * are discovered as part of the machine startup.
- */
-static int __ref impd1_probe(struct lm_device *dev)
-{
-	struct impd1_module *impd1;
-	int irq_base;
-	int i;
-
-	if (dev->id != module_id)
-		return -EINVAL;
-
-	if (!devm_request_mem_region(&dev->dev, dev->resource.start,
-				     SZ_4K, "LM registers"))
-		return -EBUSY;
-
-	impd1 = devm_kzalloc(&dev->dev, sizeof(struct impd1_module),
-			     GFP_KERNEL);
-	if (!impd1)
-		return -ENOMEM;
-
-	impd1->base = devm_ioremap(&dev->dev, dev->resource.start, SZ_4K);
-	if (!impd1->base)
-		return -ENOMEM;
-
-	integrator_impd1_clk_init(impd1->base, dev->id);
-
-	if (!devm_request_mem_region(&dev->dev,
-				     dev->resource.start + 0x03000000,
-				     SZ_4K, "VIC"))
-		return -EBUSY;
-
-	impd1->vic_base = devm_ioremap(&dev->dev,
-				       dev->resource.start + 0x03000000,
-				       SZ_4K);
-	if (!impd1->vic_base)
-		return -ENOMEM;
-
-	irq_base = vic_init_cascaded(impd1->vic_base, dev->irq,
-				     IMPD1_VALID_IRQS, 0);
-
-	lm_set_drvdata(dev, impd1);
-
-	dev_info(&dev->dev, "IM-PD1 found at 0x%08lx\n",
-		 (unsigned long)dev->resource.start);
-
-	for (i = 0; i < ARRAY_SIZE(impd1_devs); i++) {
-		struct impd1_device *idev = impd1_devs + i;
-		struct amba_device *d;
-		unsigned long pc_base;
-		char devname[32];
-		int irq1 = idev->irq[0];
-		int irq2 = idev->irq[1];
-
-		/* Translate IRQs to IM-PD1 local numberspace */
-		if (irq1)
-			irq1 += irq_base;
-		if (irq2)
-			irq2 += irq_base;
-
-		pc_base = dev->resource.start + idev->offset;
-		snprintf(devname, 32, "lm%x:%5.5lx", dev->id, idev->offset >> 12);
-
-		/* Add GPIO descriptor lookup table for the PL061 block */
-		if (idev->offset == 0x00400000) {
-			struct gpiod_lookup_table *lookup;
-			char *chipname;
-			char *mmciname;
-
-			lookup = devm_kzalloc(&dev->dev,
-					      struct_size(lookup, table, 3),
-					      GFP_KERNEL);
-			chipname = devm_kstrdup(&dev->dev, devname, GFP_KERNEL);
-			mmciname = devm_kasprintf(&dev->dev, GFP_KERNEL,
-						  "lm%x:00700", dev->id);
-			if (!lookup || !chipname || !mmciname)
-				return -ENOMEM;
-
-			lookup->dev_id = mmciname;
-			/*
-			 * Offsets on GPIO block 1:
-			 * 3 = MMC WP (write protect)
-			 * 4 = MMC CD (card detect)
-			 *
-			 * Offsets on GPIO block 2:
-			 * 0 = Up key
-			 * 1 = Down key
-			 * 2 = Left key
-			 * 3 = Right key
-			 * 4 = Key lower left
-			 * 5 = Key lower right
-			 */
-			/* We need the two MMCI GPIO entries */
-			lookup->table[0] = (struct gpiod_lookup)
-				GPIO_LOOKUP(chipname, 3, "wp", 0);
-			lookup->table[1] = (struct gpiod_lookup)
-				GPIO_LOOKUP(chipname, 4, "cd", GPIO_ACTIVE_LOW);
-			gpiod_add_lookup_table(lookup);
-		}
-
-		d = amba_ahb_device_add_res(&dev->dev, devname, pc_base, SZ_4K,
-					    irq1, irq2,
-					    idev->platform_data, idev->id,
-					    &dev->resource);
-		if (IS_ERR(d)) {
-			dev_err(&dev->dev, "unable to register device: %ld\n", PTR_ERR(d));
-			continue;
-		}
-	}
-
-	return 0;
-}
-
-static int impd1_remove_one(struct device *dev, void *data)
-{
-	device_unregister(dev);
-	return 0;
-}
-
-static void impd1_remove(struct lm_device *dev)
-{
-	device_for_each_child(&dev->dev, NULL, impd1_remove_one);
-	integrator_impd1_clk_exit(dev->id);
-
-	lm_set_drvdata(dev, NULL);
-}
-
-static struct lm_driver impd1_driver = {
-	.drv = {
-		.name	= "impd1",
-		/*
-		 * As we're dropping the probe() function, suppress driver
-		 * binding from sysfs.
-		 */
-		.suppress_bind_attrs = true,
-	},
-	.probe		= impd1_probe,
-	.remove		= impd1_remove,
-};
-
-static int __init impd1_init(void)
-{
-	return lm_driver_register(&impd1_driver);
-}
-
-static void __exit impd1_exit(void)
-{
-	lm_driver_unregister(&impd1_driver);
-}
-
-module_init(impd1_init);
-module_exit(impd1_exit);
-
-MODULE_LICENSE("GPL");
-MODULE_DESCRIPTION("Integrator/IM-PD1 logic module core driver");
-MODULE_AUTHOR("Deep Blue Solutions Ltd");
diff --git a/arch/arm/mach-integrator/impd1.h b/arch/arm/mach-integrator/impd1.h
deleted file mode 100644
index 36124d34c8f7..000000000000
--- a/arch/arm/mach-integrator/impd1.h
+++ /dev/null
@@ -1,15 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#define IMPD1_LEDS	0x0c
-#define IMPD1_INT	0x10
-#define IMPD1_SW	0x14
-#define IMPD1_CTRL	0x18
-
-#define IMPD1_CTRL_DISP_LCD	(0 << 0)
-#define IMPD1_CTRL_DISP_VGA	(1 << 0)
-#define IMPD1_CTRL_DISP_LCD1	(2 << 0)
-#define IMPD1_CTRL_DISP_ENABLE	(1 << 2)
-#define IMPD1_CTRL_DISP_MASK	(7 << 0)
-
-struct device;
-
-void impd1_tweak_control(struct device *dev, u32 mask, u32 val);
diff --git a/arch/arm/mach-integrator/integrator_ap.c b/arch/arm/mach-integrator/integrator_ap.c
index 035069ea2c8b..58b02cbbea72 100644
--- a/arch/arm/mach-integrator/integrator_ap.c
+++ b/arch/arm/mach-integrator/integrator_ap.c
@@ -23,7 +23,6 @@
 #include "hardware.h"
 #include "cm.h"
 #include "common.h"
-#include "lm.h"
 
 /* Regmap to the AP system controller */
 static struct regmap *ap_syscon_map;
@@ -174,10 +173,7 @@ static const struct of_device_id ap_syscon_match[] = {
 
 static void __init ap_init_of(void)
 {
-	u32 sc_dec;
 	struct device_node *syscon;
-	int ret;
-	int i;
 
 	of_platform_default_populate(NULL, ap_auxdata_lookup, NULL);
 
@@ -189,33 +185,6 @@ static void __init ap_init_of(void)
 		pr_crit("could not find Integrator/AP system controller\n");
 		return;
 	}
-
-	ret = regmap_read(ap_syscon_map,
-			  INTEGRATOR_SC_DEC_OFFSET,
-			  &sc_dec);
-	if (ret) {
-		pr_crit("could not read from Integrator/AP syscon\n");
-		return;
-	}
-
-	for (i = 0; i < 4; i++) {
-		struct lm_device *lmdev;
-
-		if ((sc_dec & (16 << i)) == 0)
-			continue;
-
-		lmdev = kzalloc(sizeof(struct lm_device), GFP_KERNEL);
-		if (!lmdev)
-			continue;
-
-		lmdev->resource.start = 0xc0000000 + 0x10000000 * i;
-		lmdev->resource.end = lmdev->resource.start + 0x0fffffff;
-		lmdev->resource.flags = IORESOURCE_MEM;
-		lmdev->irq = irq_of_parse_and_map(syscon, i);
-		lmdev->id = i;
-
-		lm_device_register(lmdev);
-	}
 }
 
 static const char * ap_dt_board_compat[] = {
diff --git a/arch/arm/mach-integrator/lm.c b/arch/arm/mach-integrator/lm.c
deleted file mode 100644
index 55cd173d1d76..000000000000
--- a/arch/arm/mach-integrator/lm.c
+++ /dev/null
@@ -1,96 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *  linux/arch/arm/mach-integrator/lm.c
- *
- *  Copyright (C) 2003 Deep Blue Solutions Ltd, All Rights Reserved.
- */
-#include <linux/module.h>
-#include <linux/init.h>
-#include <linux/device.h>
-#include <linux/slab.h>
-
-#include "lm.h"
-
-#define to_lm_device(d)	container_of(d, struct lm_device, dev)
-#define to_lm_driver(d)	container_of(d, struct lm_driver, drv)
-
-static int lm_match(struct device *dev, struct device_driver *drv)
-{
-	return 1;
-}
-
-static int lm_bus_probe(struct device *dev)
-{
-	struct lm_device *lmdev = to_lm_device(dev);
-	struct lm_driver *lmdrv = to_lm_driver(dev->driver);
-
-	return lmdrv->probe(lmdev);
-}
-
-static int lm_bus_remove(struct device *dev)
-{
-	struct lm_device *lmdev = to_lm_device(dev);
-	struct lm_driver *lmdrv = to_lm_driver(dev->driver);
-
-	if (lmdrv->remove)
-		lmdrv->remove(lmdev);
-	return 0;
-}
-
-static struct bus_type lm_bustype = {
-	.name		= "logicmodule",
-	.match		= lm_match,
-	.probe		= lm_bus_probe,
-	.remove		= lm_bus_remove,
-//	.suspend	= lm_bus_suspend,
-//	.resume		= lm_bus_resume,
-};
-
-static int __init lm_init(void)
-{
-	return bus_register(&lm_bustype);
-}
-
-postcore_initcall(lm_init);
-
-int lm_driver_register(struct lm_driver *drv)
-{
-	drv->drv.bus = &lm_bustype;
-	return driver_register(&drv->drv);
-}
-
-void lm_driver_unregister(struct lm_driver *drv)
-{
-	driver_unregister(&drv->drv);
-}
-
-static void lm_device_release(struct device *dev)
-{
-	struct lm_device *d = to_lm_device(dev);
-
-	kfree(d);
-}
-
-int lm_device_register(struct lm_device *dev)
-{
-	int ret;
-
-	dev->dev.release = lm_device_release;
-	dev->dev.bus = &lm_bustype;
-
-	ret = dev_set_name(&dev->dev, "lm%d", dev->id);
-	if (ret)
-		return ret;
-	dev->resource.name = dev_name(&dev->dev);
-
-	ret = request_resource(&iomem_resource, &dev->resource);
-	if (ret == 0) {
-		ret = device_register(&dev->dev);
-		if (ret)
-			release_resource(&dev->resource);
-	}
-	return ret;
-}
-
-EXPORT_SYMBOL(lm_driver_register);
-EXPORT_SYMBOL(lm_driver_unregister);
diff --git a/arch/arm/mach-integrator/lm.h b/arch/arm/mach-integrator/lm.h
deleted file mode 100644
index 172966a699bd..000000000000
--- a/arch/arm/mach-integrator/lm.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-
-struct lm_device {
-	struct device		dev;
-	struct resource		resource;
-	unsigned int		irq;
-	unsigned int		id;
-};
-
-struct lm_driver {
-	struct device_driver	drv;
-	int			(*probe)(struct lm_device *);
-	void			(*remove)(struct lm_device *);
-	int			(*suspend)(struct lm_device *, pm_message_t);
-	int			(*resume)(struct lm_device *);
-};
-
-int lm_driver_register(struct lm_driver *drv);
-void lm_driver_unregister(struct lm_driver *drv);
-
-int lm_device_register(struct lm_device *dev);
-
-#define lm_get_drvdata(lm)	dev_get_drvdata(&(lm)->dev)
-#define lm_set_drvdata(lm,d)	dev_set_drvdata(&(lm)->dev, d)
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
