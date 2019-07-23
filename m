Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F6D7197C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tgPTBzAwCQ9zwnDgUlODqttiUz2nm1GEQyVGqEqe7D0=; b=s0V1Gpq2HGC/cS
	s861l/HyGieRg/fYCYS9GumljfXuPZuaF8ASz/o+9oafWoPDM/JXHM3ZKEJwN88vaz7pVydPTVcQJ
	r6Cr3usAXH0ZfYWAUBAMWY5cmHl/FrSaD2mfnhjhDoiMl4O7pz3qKXEHGi5Ty6iSj6GXb1Knr8e9b
	4+zoHVr5LIo2Wny8MsNRU0A+f9wJfGYZtbMPMKgNDKQ4axmH22MfF7opZiJkpNWm18RLW1D+ZmQGW
	CO8mssxOqpq1vIaL5NTJnZJ8BxRQ7zl4MyMeWplmGVE5DR5AELH+bG/TvM+pNCN450cwCRemSo+26
	E/2yGx/16qUMNpHnmp8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpv0p-00061k-U4; Tue, 23 Jul 2019 13:39:27 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuzb-0005BF-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:38:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id c19so29368798lfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 06:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NoM+u3eZl93GWMw56RZ3gY4cqzVCzROKb5N4Ny2Ql9w=;
 b=GMZgH5hTIHYVDXVgnx9aTggTXry9d3EtswgkQeikW0/PTMcVYOrZSxHk9v2MEb3QXV
 DIFyjJfVuLIT9kvL0KTxyaEkBZV4yX8glp2E3OMotZ2KRvNuyDjwJqpysO24v78btCyM
 imtGhXXuyYMvbtv4whsweOS9Iq7tAraY6fTDb2cZU8KGrhfTVXopZIxrG2xm8vdJv7lO
 KIR41z+4Nw4SRa2Y/b0mptGPh5BLSYeo+gVxMr/t6ehv4pdpCt5ob+LxgMYFMlrLT+Ko
 QR7zKgoS2CQECU6VrtultzQvkp/iNXIMsVrxHHSIK7Yv1hoZkDjOBcrgQZjHFGcSUFEe
 KUPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NoM+u3eZl93GWMw56RZ3gY4cqzVCzROKb5N4Ny2Ql9w=;
 b=JHpsAPYlGZb1Iwu4UOUM0zZSXY3oAx9OddozyAloR6pEanVeAdT606A38t0dfdbbp4
 43p3olqPdCW6WI7uAzudYTRNGm6WiA5va6GRtCiqNxXe3jZrtbFUUtV2bYTKszE+R1Ex
 aS4438V0veZoB42hmZSC2sSMDKLrzp+JfxCNDO7dSg/YFFihZDv+6LgC9RNxOuYTcGHt
 WE+KSTtg3wsAnddJARH07ADOdLGHL+onQeZg5gK4Psy1SvTr5YR5R3BnTOGyMvCyLZaB
 Os9GR+2FGHhZfKWz4xYYlqmEa1pDpHbfNlPU6KgUh7JlwVn4mo0RVgDP2ZzIQONiqRKH
 HSvA==
X-Gm-Message-State: APjAAAU9JZG/krt6M9HCnMYFlcnxcILxqYIxTqnIiYwHdhBHbmZEOyjL
 dljrI1sZswPesrYnNxkbY9q4og==
X-Google-Smtp-Source: APXvYqx/agNR9O0NxKWUkg0HTDap2yeWtdIJN0/09VO7UVwZ1XEO3sMglPZrXN5ijjEJJJiv9xKMNQ==
X-Received: by 2002:a19:6b0e:: with SMTP id d14mr34277883lfa.174.1563889089021; 
 Tue, 23 Jul 2019 06:38:09 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id l24sm8069411lji.78.2019.07.23.06.38.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 06:38:07 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Daniel Tang <dt.tangr@gmail.com>,
	Fabian Vogt <fabian@ritter-vogt.de>
Subject: [PATCH 3/3] RFT: ARM: nspire: Move CLCD set-up to device tree
Date: Tue, 23 Jul 2019 15:37:55 +0200
Message-Id: <20190723133755.22677-4-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723133755.22677-1-linus.walleij@linaro.org>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063811_274004_2E668AC7 
X-CRM114-Status: GOOD (  19.39  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This moves the nspire over to using the device tree to
set-up and probe the PL111 DRM driver and use the panels
from the simple-panel drivers.

Cc: Daniel Tang <dt.tangr@gmail.com>
Cc: Fabian Vogt <fabian@ritter-vogt.de>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
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
