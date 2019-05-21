Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1A9245AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xSQjQn864PSTiAtD4xX9VXYjNtXJMw956+heySqPMcg=; b=uMiuyZBJUpSKRh
	Wwb+QYQEUmd5Y/P1jx9BgJz6iqWWxEoeEpcggA9lBixVw88IlzKM+NsHgDnBFxlI5Sagyj6CrSRsb
	gp4PnWmHZP2v6pxR7XLPNyEp0/oPRR1LOBoQt/0ZPePsKiJoZlY+YehUFPSAgCbBUH5qK1jNuuZ61
	7t981Pf6QnjpZgKtW+YTKnJgvzaPmVHlIFNxd1SopdEYV0DD7omCwmVjZEvULsTGm5MEAoiDPwaxN
	Z+mi3/Oy4tmgP7Od7VDI9R7JxZdDLUi0BV2lCrf3sP7J+kK0SGVIA2x60CROsMPHRQ2kD2kWIH758
	C9ajQV8d+6QBa/K3cciw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStnE-0008RG-V0; Tue, 21 May 2019 01:42:16 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStn5-0008Qs-UV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:42:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id n22so11694373lfe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:42:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kO7/ARc/j1pAITgbr/7HY0EQu84NZf4mpPHFLN6TCWY=;
 b=W951JTEMdg7q+qglVZinKbFax2hz6M8q8mNEKauBQqgx3xmbUUO9yMZAMJqfR4je3b
 hyMzTxdfkv8z6698yy/KBvJjXRdKGSyIAKRwkUCEAw+05NwAUGdC8N+Og3LTYp7dNFtG
 EwqDM63L26f0Ro5TgZ+2ISu/sjYWguVjfbh65oIH/f0IpUBLGQVh/kGi5OMCgZobM6rI
 zA5lOuroLQ7bu23u8srtZuFs3/KKvRPvHlt3weQSA81h16bNR8TamdJPxM9PXjr6dQ9B
 djtn6I4P7Qag/s5QlAv5L5+U1CFtqzMNaaEQJxHgWolfoKLDZ8uPv2VwmglafSP5+Ww9
 VW1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kO7/ARc/j1pAITgbr/7HY0EQu84NZf4mpPHFLN6TCWY=;
 b=Mp2VrNP4mJtgLhR1H4zJ40qSi/22d8uOPmIvB60DyxXobjTC07qEnt4ozEjT3bS8Zm
 0Iiv5DlQLGOg+kZfaG+htZ1MvTbKJPlrMfPT5G36ZSqiuSNne58gVDiX5Yf2B15Rjv8s
 tpsutGyXjmxRxHLhacbB1vI3YlZ3MnhAD0A5SKnpkXUw0uzvyYPnUArZx2VX/n9Sn/wL
 sEDG8XY9+zr/Cc7814ZHjNd3bT1J5dpYDYDigTSHWQK/g/3+QZgXuMGlgn1B8oE4jrFW
 MXYPjVXNzt+jmVW4PhPa0PIcJfi6LhXM9YxBX97Vj+EMa945NASrpFt6jAmQWJhIf3bc
 bctw==
X-Gm-Message-State: APjAAAWfftP2HdbzonKLrzNcjVFDzE3+TTM8FQxfcjPrpxNhj+VCxIgu
 ZH/LzbERKy9Urd1SDQJVjb+BBH+DI9Y=
X-Google-Smtp-Source: APXvYqzWGoUPG5zn1MerU8aSxRkbqg4xRaRhxIaKu3pXSPiwofTsohRSrtIcuyoM0rvG9pdBleBDrg==
X-Received: by 2002:ac2:5222:: with SMTP id i2mr32423660lfl.80.1558402925658; 
 Mon, 20 May 2019 18:42:05 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id s29sm4412455lfc.51.2019.05.20.18.42.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:42:04 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: versatile: Drop CLCD platform data
Date: Tue, 21 May 2019 03:40:01 +0200
Message-Id: <20190521014001.17978-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184207_990624_05EE5BD4 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Versatile family no longer makes any use of the CLCD
platform data, we have moved over all users to the DRM
driver that has built-in handling of the displays. Delete
the old auxdata.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-versatile/versatile_dt.c        | 157 ------------------
 .../platform_data/video-clcd-versatile.h      |  28 ----
 2 files changed, 185 deletions(-)
 delete mode 100644 include/linux/platform_data/video-clcd-versatile.h

diff --git a/arch/arm/mach-versatile/versatile_dt.c b/arch/arm/mach-versatile/versatile_dt.c
index e9d60687e416..3e2634851f16 100644
--- a/arch/arm/mach-versatile/versatile_dt.c
+++ b/arch/arm/mach-versatile/versatile_dt.c
@@ -29,8 +29,6 @@
 #include <linux/of_platform.h>
 #include <linux/slab.h>
 #include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-#include <linux/platform_data/video-clcd-versatile.h>
 #include <linux/amba/mmci.h>
 #include <asm/mach-types.h>
 #include <asm/mach/arch.h>
@@ -47,14 +45,12 @@
  */
 #define VERSATILE_SYS_PCICTL_OFFSET           0x44
 #define VERSATILE_SYS_MCI_OFFSET              0x48
-#define VERSATILE_SYS_CLCD_OFFSET             0x50
 
 /*
  * VERSATILE peripheral addresses
  */
 #define VERSATILE_MMCI0_BASE           0x10005000	/* MMC interface */
 #define VERSATILE_MMCI1_BASE           0x1000B000	/* MMC Interface */
-#define VERSATILE_CLCD_BASE            0x10120000	/* CLCD */
 #define VERSATILE_SCTL_BASE            0x101E0000	/* System controller */
 #define VERSATILE_IB2_BASE             0x24000000	/* IB2 module */
 #define VERSATILE_IB2_CTL_BASE		(VERSATILE_IB2_BASE + 0x03000000)
@@ -96,158 +92,6 @@ static struct mmci_platform_data mmc1_plat_data = {
 	.status		= mmc_status,
 };
 
-/*
- * CLCD support.
- */
-#define SYS_CLCD_MODE_MASK	(3 << 0)
-#define SYS_CLCD_MODE_888	(0 << 0)
-#define SYS_CLCD_MODE_5551	(1 << 0)
-#define SYS_CLCD_MODE_565_RLSB	(2 << 0)
-#define SYS_CLCD_MODE_565_BLSB	(3 << 0)
-#define SYS_CLCD_NLCDIOON	(1 << 2)
-#define SYS_CLCD_VDDPOSSWITCH	(1 << 3)
-#define SYS_CLCD_PWR3V5SWITCH	(1 << 4)
-#define SYS_CLCD_ID_MASK	(0x1f << 8)
-#define SYS_CLCD_ID_SANYO_3_8	(0x00 << 8)
-#define SYS_CLCD_ID_UNKNOWN_8_4	(0x01 << 8)
-#define SYS_CLCD_ID_EPSON_2_2	(0x02 << 8)
-#define SYS_CLCD_ID_SANYO_2_5	(0x07 << 8)
-#define SYS_CLCD_ID_VGA		(0x1f << 8)
-
-static bool is_sanyo_2_5_lcd;
-
-/*
- * Disable all display connectors on the interface module.
- */
-static void versatile_clcd_disable(struct clcd_fb *fb)
-{
-	void __iomem *sys_clcd = versatile_sys_base + VERSATILE_SYS_CLCD_OFFSET;
-	u32 val;
-
-	val = readl(sys_clcd);
-	val &= ~SYS_CLCD_NLCDIOON | SYS_CLCD_PWR3V5SWITCH;
-	writel(val, sys_clcd);
-
-	/*
-	 * If the LCD is Sanyo 2x5 in on the IB2 board, turn the back-light off
-	 */
-	if (of_machine_is_compatible("arm,versatile-ab") && is_sanyo_2_5_lcd) {
-		unsigned long ctrl;
-
-		ctrl = readl(versatile_ib2_ctrl);
-		ctrl &= ~0x01;
-		writel(ctrl, versatile_ib2_ctrl);
-	}
-}
-
-/*
- * Enable the relevant connector on the interface module.
- */
-static void versatile_clcd_enable(struct clcd_fb *fb)
-{
-	struct fb_var_screeninfo *var = &fb->fb.var;
-	void __iomem *sys_clcd = versatile_sys_base + VERSATILE_SYS_CLCD_OFFSET;
-	u32 val;
-
-	val = readl(sys_clcd);
-	val &= ~SYS_CLCD_MODE_MASK;
-
-	switch (var->green.length) {
-	case 5:
-		val |= SYS_CLCD_MODE_5551;
-		break;
-	case 6:
-		if (var->red.offset == 0)
-			val |= SYS_CLCD_MODE_565_RLSB;
-		else
-			val |= SYS_CLCD_MODE_565_BLSB;
-		break;
-	case 8:
-		val |= SYS_CLCD_MODE_888;
-		break;
-	}
-
-	/*
-	 * Set the MUX
-	 */
-	writel(val, sys_clcd);
-
-	/*
-	 * And now enable the PSUs
-	 */
-	val |= SYS_CLCD_NLCDIOON | SYS_CLCD_PWR3V5SWITCH;
-	writel(val, sys_clcd);
-
-	/*
-	 * If the LCD is Sanyo 2x5 in on the IB2 board, turn the back-light on
-	 */
-	if (of_machine_is_compatible("arm,versatile-ab") && is_sanyo_2_5_lcd) {
-		unsigned long ctrl;
-
-		ctrl = readl(versatile_ib2_ctrl);
-		ctrl |= 0x01;
-		writel(ctrl, versatile_ib2_ctrl);
-	}
-}
-
-/*
- * Detect which LCD panel is connected, and return the appropriate
- * clcd_panel structure.  Note: we do not have any information on
- * the required timings for the 8.4in panel, so we presently assume
- * VGA timings.
- */
-static int versatile_clcd_setup(struct clcd_fb *fb)
-{
-	void __iomem *sys_clcd = versatile_sys_base + VERSATILE_SYS_CLCD_OFFSET;
-	const char *panel_name;
-	u32 val;
-
-	is_sanyo_2_5_lcd = false;
-
-	val = readl(sys_clcd) & SYS_CLCD_ID_MASK;
-	if (val == SYS_CLCD_ID_SANYO_3_8)
-		panel_name = "Sanyo TM38QV67A02A";
-	else if (val == SYS_CLCD_ID_SANYO_2_5) {
-		panel_name = "Sanyo QVGA Portrait";
-		is_sanyo_2_5_lcd = true;
-	} else if (val == SYS_CLCD_ID_EPSON_2_2)
-		panel_name = "Epson L2F50113T00";
-	else if (val == SYS_CLCD_ID_VGA)
-		panel_name = "VGA";
-	else {
-		printk(KERN_ERR "CLCD: unknown LCD panel ID 0x%08x, using VGA\n",
-			val);
-		panel_name = "VGA";
-	}
-
-	fb->panel = versatile_clcd_get_panel(panel_name);
-	if (!fb->panel)
-		return -EINVAL;
-
-	return versatile_clcd_setup_dma(fb, SZ_1M);
-}
-
-static void versatile_clcd_decode(struct clcd_fb *fb, struct clcd_regs *regs)
-{
-	clcdfb_decode(fb, regs);
-
-	/* Always clear BGR for RGB565: we do the routing externally */
-	if (fb->fb.var.green.length == 6)
-		regs->cntl &= ~CNTL_BGR;
-}
-
-static struct clcd_board clcd_plat_data = {
-	.name		= "Versatile",
-	.caps		= CLCD_CAP_5551 | CLCD_CAP_565 | CLCD_CAP_888,
-	.check		= clcdfb_check,
-	.decode		= versatile_clcd_decode,
-	.disable	= versatile_clcd_disable,
-	.enable		= versatile_clcd_enable,
-	.setup		= versatile_clcd_setup,
-	.mmap		= versatile_clcd_mmap_dma,
-	.remove		= versatile_clcd_remove_dma,
-};
-
 /*
  * Lookup table for attaching a specific name and platform_data pointer to
  * devices as they get created by of_platform_populate().  Ideally this table
@@ -257,7 +101,6 @@ static struct clcd_board clcd_plat_data = {
 struct of_dev_auxdata versatile_auxdata_lookup[] __initdata = {
 	OF_DEV_AUXDATA("arm,primecell", VERSATILE_MMCI0_BASE, "fpga:05", &mmc0_plat_data),
 	OF_DEV_AUXDATA("arm,primecell", VERSATILE_MMCI1_BASE, "fpga:0b", &mmc1_plat_data),
-	OF_DEV_AUXDATA("arm,primecell", VERSATILE_CLCD_BASE, "dev:20", &clcd_plat_data),
 	{}
 };
 
diff --git a/include/linux/platform_data/video-clcd-versatile.h b/include/linux/platform_data/video-clcd-versatile.h
deleted file mode 100644
index 305ebaec3afd..000000000000
--- a/include/linux/platform_data/video-clcd-versatile.h
+++ /dev/null
@@ -1,28 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef PLAT_CLCD_H
-#define PLAT_CLCD_H
-
-#ifdef CONFIG_PLAT_VERSATILE_CLCD
-struct clcd_panel *versatile_clcd_get_panel(const char *);
-int versatile_clcd_setup_dma(struct clcd_fb *, unsigned long);
-int versatile_clcd_mmap_dma(struct clcd_fb *, struct vm_area_struct *);
-void versatile_clcd_remove_dma(struct clcd_fb *);
-#else
-static inline struct clcd_panel *versatile_clcd_get_panel(const char *s)
-{
-	return NULL;
-}
-static inline int versatile_clcd_setup_dma(struct clcd_fb *fb, unsigned long framesize)
-{
-	return -ENODEV;
-}
-static inline int versatile_clcd_mmap_dma(struct clcd_fb *fb, struct vm_area_struct *vm)
-{
-	return -ENODEV;
-}
-static inline void versatile_clcd_remove_dma(struct clcd_fb *fb)
-{
-}
-#endif
-
-#endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
