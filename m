Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036308894A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 10 Aug 2019 09:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ox+YO3MVNEsriE/6Wi0/blKsPDYBeH6Fk3h56JpZoUw=; b=B9/LGt7OEWDRUU
	WYph8t85ej3MZGYbMWAL0dRoy3G9hin6zPxDSTar7Dou4BYhwzoxfZT3XcQ84matX2BDLyA9IVaU/
	zHl23H+9d47zBgesGaAKyZoS9Ag01PlOecHXVmohZ8R43V0YdBr+/UCAJaF5uA2kwibGyvlwKZrj9
	oL/dFwfjk6B/HTfQxp2PFHlFZ9GuiYaZmmQiL+j8JTzzndJlf0btDhifg7Z1yqzB5u8iqyGffVh0B
	p/k8N3wd7m6J0xZuelYfLNGXY926ZkCvvCwIefanefdcwrhUUMVWPU56Xs98EuRjA4PHpr8EgZSFC
	rWZuR3WLqMynVSK2pg2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwMBB-0001eZ-UY; Sat, 10 Aug 2019 07:52:46 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwMAy-0001di-Kz
 for linux-arm-kernel@lists.infradead.org; Sat, 10 Aug 2019 07:52:34 +0000
Received: by mail-lf1-x143.google.com with SMTP id n19so2721647lfe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 10 Aug 2019 00:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7TSg5OYjMILz0eZRu41KJFftegjsyL3xfQJqvP5Ud6A=;
 b=BO79h5LzBgr9Z8AWVcjumCGy1tt2OATTKweDGGQDXNbcaG3igwg4aacCPOl9KGgyJ7
 h8q9/1IWdhnmym/O82aJp6hiG42gW+Q4cxZLlueCqnzOGPkQ6IqZ+3vwr7ZASJNbiWJl
 mBbQWvj+bp9IOK5ypswMbdedFA+GEYghSTxLlMTJVmxwmsXdBE5Wts6fc9iyPyL/3mYE
 ajchzu3szzN3UsjZ5wFE0DHgd9Swg/fctNKbDfdNWlm4KTBkpqJaapEboaE3J8KtWTaa
 VSfZdqffR3ybuUwD2hJ9WCyLPezTzxxXH97FbJSAa1ICu45+a24ORvGMyCGMzRKEQIVQ
 OEWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7TSg5OYjMILz0eZRu41KJFftegjsyL3xfQJqvP5Ud6A=;
 b=VSvODY9u5usCMhxzsoD4O5EbIY7X74QK3XwvCLjoSAHtgCc5SFuUHUzjeLEPm6thiA
 5J7aKw2M07GF0NrLEtqHCMr4W3nydmKSyjvw/7O46SQ7ue48ZZ3Ilj6am/tKJqoDBBpo
 oVdBDgbsiHyvN+1gKezVkH8h5BMj5Vhknzf50uHvf1FqPZHHBxyMMeDA55GPIbW8DzvC
 cugGNV9cdTHZulPeQf1JSVe02Nb7dhrLSAP+uAAOdDo3+Z43vcogOAD0mtOD76oSBJyf
 YvU6ChqcEtDOqeVz2v2NbzSpWaBtvjgTslQ74L8vl10JhkGq9d3cZYdrc3CLyTv9ARl/
 PSpA==
X-Gm-Message-State: APjAAAVmP6Q4eFW4w3ot9AoZhQCJIHenepuJZuxnae+ACvWRK10KbsqJ
 CL5vjg2EucBWB/P/nS2U2404rA==
X-Google-Smtp-Source: APXvYqxPFaOKn4sWQvoC4fexODNkv5ouz77GXKXE/pLBVkLdlIoBEQm1Z6feCNnvlqopXRrmBKRlzA==
X-Received: by 2002:ac2:4157:: with SMTP id c23mr14579596lfi.173.1565423548566; 
 Sat, 10 Aug 2019 00:52:28 -0700 (PDT)
Received: from localhost.localdomain
 (c-2ccd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.44])
 by smtp.gmail.com with ESMTPSA id r8sm6023429lfc.39.2019.08.10.00.52.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 00:52:26 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: mach-nspire: Kill off CLCD auxdata
Date: Sat, 10 Aug 2019 09:50:23 +0200
Message-Id: <20190810075023.7327-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_005232_731366_648C17FD 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Fabian Vogt <fabian@ritter-vogt.de>, Daniel Tang <dt.tangr@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After transitioning the CLCD to use DRM we can now kill off
the final piece of auxdata on the NSPIRE.

Cc: Daniel Tang <dt.tangr@gmail.com>
Cc: Fabian Vogt <fabian@ritter-vogt.de>
Tested-by: Fabian Vogt <fabian@ritter-vogt.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks:

Please apply this directly for v5.4 wherever NSPIRE changes
go.
I have negotiated with the NSPIRE maintainers to do
this change.

This is a split from the v3 patch
"ARM: nspire: Move CLCD set-up to device tree"
so you can apply machine changes separately.
---
 arch/arm/mach-nspire/Makefile |   1 -
 arch/arm/mach-nspire/clcd.c   | 114 ----------------------------------
 arch/arm/mach-nspire/clcd.h   |  10 ---
 arch/arm/mach-nspire/nspire.c |  25 --------
 4 files changed, 150 deletions(-)
 delete mode 100644 arch/arm/mach-nspire/clcd.c
 delete mode 100644 arch/arm/mach-nspire/clcd.h

diff --git a/arch/arm/mach-nspire/Makefile b/arch/arm/mach-nspire/Makefile
index 1d568c600452..4716b9b9aa7b 100644
--- a/arch/arm/mach-nspire/Makefile
+++ b/arch/arm/mach-nspire/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-y				+= nspire.o
-obj-y				+= clcd.o
diff --git a/arch/arm/mach-nspire/clcd.c b/arch/arm/mach-nspire/clcd.c
deleted file mode 100644
index 44738dcb391d..000000000000
--- a/arch/arm/mach-nspire/clcd.c
+++ /dev/null
@@ -1,114 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- *	linux/arch/arm/mach-nspire/clcd.c
- *
- *	Copyright (C) 2013 Daniel Tang <tangrs@tangrs.id.au>
- */
-
-#include <linux/init.h>
-#include <linux/of.h>
-#include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
-#include <linux/dma-mapping.h>
-
-static struct clcd_panel nspire_cx_lcd_panel = {
-	.mode		= {
-		.name		= "Color LCD",
-		.refresh	= 60,
-		.xres		= 320,
-		.yres		= 240,
-		.sync		= 0,
-		.vmode		= FB_VMODE_NONINTERLACED,
-		.pixclock	= 1,
-		.hsync_len	= 6,
-		.vsync_len	= 1,
-		.right_margin	= 50,
-		.left_margin	= 38,
-		.lower_margin	= 3,
-		.upper_margin	= 17,
-	},
-	.width		= 65, /* ~6.50 cm */
-	.height		= 49, /* ~4.87 cm */
-	.tim2		= TIM2_IPC,
-	.cntl		= CNTL_LCDTFT | CNTL_LCDVCOMP(1),
-	.bpp		= 16,
-	.caps		= CLCD_CAP_565,
-};
-
-static struct clcd_panel nspire_classic_lcd_panel = {
-	.mode		= {
-		.name		= "Grayscale LCD",
-		.refresh	= 60,
-		.xres		= 320,
-		.yres		= 240,
-		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_VERT_HIGH_ACT,
-		.vmode		= FB_VMODE_NONINTERLACED,
-		.pixclock	= 1,
-		.hsync_len	= 6,
-		.vsync_len	= 1,
-		.right_margin	= 6,
-		.left_margin	= 6,
-	},
-	.width		= 71, /* 7.11cm */
-	.height		= 53, /* 5.33cm */
-	.tim2		= 0x80007d0,
-	.cntl		= CNTL_LCDMONO8,
-	.bpp		= 8,
-	.grayscale	= 1,
-	.caps		= CLCD_CAP_5551,
-};
-
-int nspire_clcd_setup(struct clcd_fb *fb)
-{
-	struct clcd_panel *panel;
-	size_t panel_size;
-	const char *type;
-	dma_addr_t dma;
-	int err;
-
-	BUG_ON(!fb->dev->dev.of_node);
-
-	err = of_property_read_string(fb->dev->dev.of_node, "lcd-type", &type);
-	if (err) {
-		pr_err("CLCD: Could not find lcd-type property\n");
-		return err;
-	}
-
-	if (!strcmp(type, "cx")) {
-		panel = &nspire_cx_lcd_panel;
-	} else if (!strcmp(type, "classic")) {
-		panel = &nspire_classic_lcd_panel;
-	} else {
-		pr_err("CLCD: Unknown lcd-type %s\n", type);
-		return -EINVAL;
-	}
-
-	panel_size = ((panel->mode.xres * panel->mode.yres) * panel->bpp) / 8;
-	panel_size = ALIGN(panel_size, PAGE_SIZE);
-
-	fb->fb.screen_base = dma_alloc_wc(&fb->dev->dev, panel_size, &dma,
-					  GFP_KERNEL);
-
-	if (!fb->fb.screen_base) {
-		pr_err("CLCD: unable to map framebuffer\n");
-		return -ENOMEM;
-	}
-
-	fb->fb.fix.smem_start = dma;
-	fb->fb.fix.smem_len = panel_size;
-	fb->panel = panel;
-
-	return 0;
-}
-
-int nspire_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma)
-{
-	return dma_mmap_wc(&fb->dev->dev, vma, fb->fb.screen_base,
-			   fb->fb.fix.smem_start, fb->fb.fix.smem_len);
-}
-
-void nspire_clcd_remove(struct clcd_fb *fb)
-{
-	dma_free_wc(&fb->dev->dev, fb->fb.fix.smem_len, fb->fb.screen_base,
-		    fb->fb.fix.smem_start);
-}
diff --git a/arch/arm/mach-nspire/clcd.h b/arch/arm/mach-nspire/clcd.h
deleted file mode 100644
index 7f36bd8511c5..000000000000
--- a/arch/arm/mach-nspire/clcd.h
+++ /dev/null
@@ -1,10 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- *	linux/arch/arm/mach-nspire/clcd.h
- *
- *	Copyright (C) 2013 Daniel Tang <tangrs@tangrs.id.au>
- */
-
-int nspire_clcd_setup(struct clcd_fb *fb);
-int nspire_clcd_mmap(struct clcd_fb *fb, struct vm_area_struct *vma);
-void nspire_clcd_remove(struct clcd_fb *fb);
diff --git a/arch/arm/mach-nspire/nspire.c b/arch/arm/mach-nspire/nspire.c
index 957bd0c0fbd5..2d4abb0288b9 100644
--- a/arch/arm/mach-nspire/nspire.c
+++ b/arch/arm/mach-nspire/nspire.c
@@ -12,14 +12,12 @@
 #include <linux/irqchip/arm-vic.h>
 #include <linux/clkdev.h>
 #include <linux/amba/bus.h>
-#include <linux/amba/clcd.h>
 
 #include <asm/mach/arch.h>
 #include <asm/mach-types.h>
 #include <asm/mach/map.h>
 
 #include "mmio.h"
-#include "clcd.h"
 
 static const char *const nspire_dt_match[] __initconst = {
 	"ti,nspire",
@@ -29,28 +27,6 @@ static const char *const nspire_dt_match[] __initconst = {
 	NULL,
 };
 
-static struct clcd_board nspire_clcd_data = {
-	.name		= "LCD",
-	.caps		= CLCD_CAP_5551 | CLCD_CAP_565,
-	.check		= clcdfb_check,
-	.decode		= clcdfb_decode,
-	.setup		= nspire_clcd_setup,
-	.mmap		= nspire_clcd_mmap,
-	.remove		= nspire_clcd_remove,
-};
-
-
-static struct of_dev_auxdata nspire_auxdata[] __initdata = {
-	OF_DEV_AUXDATA("arm,pl111", NSPIRE_LCD_PHYS_BASE,
-			NULL, &nspire_clcd_data),
-	{ }
-};
-
-static void __init nspire_init(void)
-{
-	of_platform_default_populate(NULL, nspire_auxdata, NULL);
-}
-
 static void nspire_restart(enum reboot_mode mode, const char *cmd)
 {
 	void __iomem *base = ioremap(NSPIRE_MISC_PHYS_BASE, SZ_4K);
@@ -62,6 +38,5 @@ static void nspire_restart(enum reboot_mode mode, const char *cmd)
 
 DT_MACHINE_START(NSPIRE, "TI-NSPIRE")
 	.dt_compat	= nspire_dt_match,
-	.init_machine	= nspire_init,
 	.restart	= nspire_restart,
 MACHINE_END
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
