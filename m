Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4928A814A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xr3y+4bZXpzrljFO96Zx0o0QImCzziAuM0uB1MkR+LU=; b=CdcVjkXThy6Ljw
	57QWHeNPVSMhv5AeGfzsBM0t44SobG5CElqAkJk3yaYLjEFqWIkjoPy3zYvkx81l90l5zmrRNhWr0
	9gsxPCOytWJ21bt/CGw1cSA8MvUS40QzEivnF28T6ZHNTGW2sshxVFoAb1l8Ia638a8CQBVRAi+6Y
	2lWXq35QV89PEA8yVk+rK63ZoDmD5Piwj/kNceBF3AHKflnAAeEP2rKJp89OUMcEqpGKmnDHZi7X4
	BH2NM2bwS3zj2Be8OkFxxjdjMP497rSCYS5PvCgWkF8nTr9D1TOr9nOfvXH3dWWIN6lGlmU3DaqaO
	XmuN7tQ9gIaeiAtx1iDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYrF-0007ll-8G; Mon, 05 Aug 2019 09:00:45 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYpl-0005rD-JC
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 08:59:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so78639748ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 01:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jfOLGq6Ai0AatLr585XiepWY5gInSVAO5M5bFbr7QxQ=;
 b=BwbiULzNxlKsmYtkH38zVgb6lOkydkaYKlfp+fxJBTbtNMmpfRL4K97oBQWmmU5+g/
 7wqnccDxHp/GJxIa9yEMltbbt8d/9EVrYHKPUxb+Vtvz9WDV6yWDnl7Ha+l9xqS5KuWB
 4Vj0AYvQYdYys2MAcpdwnc7s9E7uHb7OIa1D3H5NHDT7Z45q9hwWCRehjyHTJeiR+/KK
 0uDzFxUj4s+yvq9CPJCecjQI19lCqwBuo3HpU57HrCPmWQUYxF0AU2bJVIntKwicQSZt
 fN1zF7/lEOY5ocFCc5ctpGYSDke1lnzlYZE1y+Z5926dFvM0ltgEksFirQNrdPEiS7fw
 NbWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jfOLGq6Ai0AatLr585XiepWY5gInSVAO5M5bFbr7QxQ=;
 b=ADi/H3KRfJ6rmVaFBUDvi4PoZLTZXWmKtw3a9JLaFumgLwebA377ds0Z/xf5r7Fnkc
 FaV687vYm0bCy+n2ZULKMSdsFCoytZ5y9WTCQKsgdSTu0dvfneZiVcwk+BlWxUpKvywI
 cawvAU6iWr8+PEDw7rrT9U1aWUR+QDkDX0Kou4zLnf6kkFg0UB34YV9oka+7vugtHIJk
 n1aF+hKWW8rYscYFL+SWaIajov6HyH+EK2CK85/+LKWcaqfjZA8uQ5LnemNFrONvFMqW
 jN9Ce4UFyodXWkEYxoSVvETGekUC5keae1wiAUyukGV4t4nlBGzeztamLw7amhjUKNyq
 8+PA==
X-Gm-Message-State: APjAAAXuaRH2osNfkYnQ7oBsdMT47SSi/IDO5D8SXiYaHDwEzcKbu1kW
 5dW64Edpb/VqGQm927J5jhjptA==
X-Google-Smtp-Source: APXvYqxXq48lDJOLtkqezS2PRY41uNOKrg2SvUci/REjnvWMJvCJpvEragtYWGl9Wt3LUxCsHuyGxw==
X-Received: by 2002:a2e:124b:: with SMTP id t72mr78846078lje.143.1564995551920; 
 Mon, 05 Aug 2019 01:59:11 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id b20sm234500lfc.17.2019.08.05.01.59.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 01:59:11 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 4/4 v2] ARM: nspire: Move CLCD set-up to device tree
Date: Mon,  5 Aug 2019 10:58:47 +0200
Message-Id: <20190805085847.25554-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190805085847.25554-1-linus.walleij@linaro.org>
References: <20190805085847.25554-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015913_908749_7DCFCD53 
X-CRM114-Status: GOOD (  20.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This moves the nspire over to using the device tree to
set-up and probe the PL111 DRM driver and use the panels
from the simple-panel drivers.

Cc: Daniel Tang <dt.tangr@gmail.com>
Cc: Fabian Vogt <fabian@ritter-vogt.de>
Tested-by: Fabian Vogt <fabian@ritter-vogt.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v2:
- Now tested
- This will be sent separately to ARM SoC after the rest
  of the patches land.
---
 arch/arm/boot/dts/nspire-classic.dtsi |  19 ++++-
 arch/arm/boot/dts/nspire-cx.dts       |  18 +++-
 arch/arm/boot/dts/nspire.dtsi         |  10 ++-
 arch/arm/mach-nspire/Makefile         |   1 -
 arch/arm/mach-nspire/clcd.c           | 114 --------------------------
 arch/arm/mach-nspire/clcd.h           |  10 ---
 arch/arm/mach-nspire/nspire.c         |  25 ------
 7 files changed, 43 insertions(+), 154 deletions(-)
 delete mode 100644 arch/arm/mach-nspire/clcd.c
 delete mode 100644 arch/arm/mach-nspire/clcd.h

diff --git a/arch/arm/boot/dts/nspire-classic.dtsi b/arch/arm/boot/dts/nspire-classic.dtsi
index c53f42777851..fabd8270f168 100644
--- a/arch/arm/boot/dts/nspire-classic.dtsi
+++ b/arch/arm/boot/dts/nspire-classic.dtsi
@@ -8,7 +8,13 @@
 /include/ "nspire.dtsi"
 
 &lcd {
-	lcd-type = "classic";
+	port {
+		clcd_pads: endpoint {
+			remote-endpoint = <&panel_in>;
+			/* Dummy values, since we are grayscale */
+			arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
+		};
+	};
 };
 
 &fast_timer {
@@ -69,6 +75,17 @@
 			#interrupt-cells = <1>;
 		};
 	};
+
+	panel {
+		compatible = "ti,nspire-classic-lcd-panel";
+		ports {
+			port {
+				panel_in: endpoint {
+					remote-endpoint = <&clcd_pads>;
+				};
+			};
+		};
+	};
 	chosen {
 		bootargs = "debug earlyprintk console=tty0 console=ttyS0,115200n8 root=/dev/ram0";
 	};
diff --git a/arch/arm/boot/dts/nspire-cx.dts b/arch/arm/boot/dts/nspire-cx.dts
index da95c3736651..1551d0d0189f 100644
--- a/arch/arm/boot/dts/nspire-cx.dts
+++ b/arch/arm/boot/dts/nspire-cx.dts
@@ -9,7 +9,12 @@
 /include/ "nspire.dtsi"
 
 &lcd {
-	lcd-type = "cx";
+	port {
+		clcd_pads: endpoint {
+			remote-endpoint = <&panel_in>;
+			arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
+		};
+	};
 };
 
 &fast_timer {
@@ -106,6 +111,17 @@
 			};
 		};
 	};
+
+	panel {
+		compatible = "ti,nspire-cx-lcd-panel";
+		ports {
+			port {
+				panel_in: endpoint {
+					remote-endpoint = <&clcd_pads>;
+				};
+			};
+		};
+	};
 	chosen {
 		bootargs = "debug earlyprintk console=tty0 console=ttyAMA0,115200n8 root=/dev/ram0";
 	};
diff --git a/arch/arm/boot/dts/nspire.dtsi b/arch/arm/boot/dts/nspire.dtsi
index c35fd6667716..d9a0fd7524dc 100644
--- a/arch/arm/boot/dts/nspire.dtsi
+++ b/arch/arm/boot/dts/nspire.dtsi
@@ -95,8 +95,14 @@
 			reg = <0xC0000000 0x1000>;
 			interrupts = <21>;
 
-			clocks = <&apb_pclk>;
-			clock-names = "apb_pclk";
+			/*
+			 * We assume the same clock is fed to APB and CLCDCLK.
+			 * There is some code to scale the clock down by a factor
+			 * 48 for the display so likely the frequency to the
+			 * display is 1MHz and the CLCDCLK is 48 MHz.
+			 */
+			clocks = <&apb_pclk>, <&apb_pclk>;
+			clock-names = "clcdclk", "apb_pclk";
 		};
 
 		adc: adc@C4000000 {
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
