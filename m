Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BEF1F786F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:06:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTifLYZnYdPk0kCveqyTwqds1W8PmcEiG7tPEioT97w=; b=bOhPqIQf39pqFE
	qTofa+miJlHJrR7Hvsq4UHqueep/BLIYVnYThpZHmu0e8PgYZkwkRC/P5wMR1hUUUrIWao6TvjrpN
	toEh7s/5gAE3/kSEiksdvUX9yg4+r5kA7AbHUL8QzdQ//KfmnGdm/rPtR8tBmPYLnJDafzzJzkWF1
	FlcahXbLvsynEYcH/8sWO4Z2AAWknGO/uqsI/lfEzdMqK/OmYC/HzUlijx0qYmnPEz2ExSz2T8vJq
	ub2m7Sf84ojTY8TxUhBH9Y3V+NJPqyz87LF1umdem3BEWtLeVQfNuFNw/FbLArSo9mCq4zTPeWDfG
	ADRHCqxuMFysVNKcD0SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjOF-0000KJ-UJ; Fri, 12 Jun 2020 13:06:35 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjNB-0008DO-9h
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:05:35 +0000
Received: by mail-pj1-x1043.google.com with SMTP id b7so4225136pju.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:05:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qMbNPv+tqKnl8E3aX1NCgpAym5wq7AoUgSkigUX08uo=;
 b=diActX4SxskrdAp93QrKQ5GAuFiIyzsJdK4KsM9/rURnDcmB+dbPk2pZ8fvVqw3EwN
 aB979+bAMzJTim++qRezbcfD/YciQpsmiT3PKVKJtyQAFPanyRuBxzk4a7n5cOhv1Ub2
 L+j5wD9dxkZGo3FEdY6aWnSZB0QF8FkwKrwcQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qMbNPv+tqKnl8E3aX1NCgpAym5wq7AoUgSkigUX08uo=;
 b=CbumfyLO3/U0t/nMy8wm3gRgNvzieTWAsfYs0/6R1Yk6cICA4SLlJ4P/HOogjDsUS3
 XWbPtREEugYNMKRHLWqz6SRObg6RCjFSROLi1xTn4XvJgx4FpP515Py+9+ZvQxVTdISU
 MTVILrD+vJXebxfmVxnS6Blarz1BZ/hsufCVRejSHOHZzX95kFZ3XlJ+wZBubx4p4jq0
 9yzEClUpcxGF2G50rL2adCkKgd9uly32RfqYQfRM7/2qS0ahGbh6YPpD7/4OYUdqCAhO
 4vdny2yyovOblzQZuMqMHT0aZB5IXXD/I5DCLAB5X1iFnmcRuIaa25Go6w1ZeUOJ0IjG
 HHwA==
X-Gm-Message-State: AOAM531WDXCjo2sYYPDUgkJS/WCXur8fCoABREsRanTpig9kwJInh38L
 TInNxA/sr9fyMpCRY82uOoCqCw==
X-Google-Smtp-Source: ABdhPJxUQETTOdOueD3XFB8MZrdvUCMkJgQZXJo6Ao0qwCF9/FoKVsU7J8HrSHGbCzDhi7k/fwiZag==
X-Received: by 2002:a17:90a:9d82:: with SMTP id
 k2mr12823519pjp.224.1591967127732; 
 Fri, 12 Jun 2020 06:05:27 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.05.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:05:26 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 06/12] ARM: mstar: Add machine for MStar/Sigmastar Armv7
 SoCs
Date: Fri, 12 Jun 2020 22:00:06 +0900
Message-Id: <20200612130032.3905240-7-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060530_033386_C5AE949F 
X-CRM114-Status: GOOD (  21.70  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: linux-chenxing.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 Will Deacon <will@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Initial support for the MStar/Sigmastar Armv7 based IP camera
and dashcam SoCs.

These chips are interesting in that they contain a Cortex-A7,
peripherals and system memory in a single tiny QFN package that
can be hand soldered allowing almost anyone to embed Linux
in their projects.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                   |  1 +
 arch/arm/Kconfig              |  2 +
 arch/arm/Makefile             |  1 +
 arch/arm/mach-mstar/Kconfig   | 26 ++++++++++++
 arch/arm/mach-mstar/Makefile  |  1 +
 arch/arm/mach-mstar/mstarv7.c | 80 +++++++++++++++++++++++++++++++++++
 6 files changed, 111 insertions(+)
 create mode 100644 arch/arm/mach-mstar/Kconfig
 create mode 100644 arch/arm/mach-mstar/Makefile
 create mode 100644 arch/arm/mach-mstar/mstarv7.c

diff --git a/MAINTAINERS b/MAINTAINERS
index c44070f76a1b..4bd57bbdddb0 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2116,6 +2116,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 W:	http://linux-chenxing.org/
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
+F:	arch/arm/mach-mstar/
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
 M:	Michael Petchkovsky <mkpetch@internode.on.net>
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index fb6c85c5d344..e466694f8486 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -669,6 +669,8 @@ source "arch/arm/mach-mmp/Kconfig"
 
 source "arch/arm/mach-moxart/Kconfig"
 
+source "arch/arm/mach-mstar/Kconfig"
+
 source "arch/arm/mach-mv78xx0/Kconfig"
 
 source "arch/arm/mach-mvebu/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 59fde2d598d8..e7f4ca060c0f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -197,6 +197,7 @@ machine-$(CONFIG_ARCH_MXC)		+= imx
 machine-$(CONFIG_ARCH_MEDIATEK)		+= mediatek
 machine-$(CONFIG_ARCH_MILBEAUT)		+= milbeaut
 machine-$(CONFIG_ARCH_MXS)		+= mxs
+machine-$(CONFIG_ARCH_MSTARV7)		+= mstar
 machine-$(CONFIG_ARCH_NOMADIK)		+= nomadik
 machine-$(CONFIG_ARCH_NPCM)		+= npcm
 machine-$(CONFIG_ARCH_NSPIRE)		+= nspire
diff --git a/arch/arm/mach-mstar/Kconfig b/arch/arm/mach-mstar/Kconfig
new file mode 100644
index 000000000000..52744fe32368
--- /dev/null
+++ b/arch/arm/mach-mstar/Kconfig
@@ -0,0 +1,26 @@
+menuconfig ARCH_MSTARV7
+	bool "MStar/Sigmastar Armv7 SoC Support"
+	depends on ARCH_MULTI_V7
+	select ARM_GIC
+	select ARM_HEAVY_MB
+	help
+	  Support for newer MStar/Sigmastar SoC families that are
+	  based on Armv7 cores like the Cortex A7 and share the same
+	  basic hardware like the infinity and mercury series.
+
+if ARCH_MSTARV7
+
+config MACH_INFINITY
+	bool "MStar/Sigmastar infinity SoC support"
+	default ARCH_MSTARV7
+	help
+	  Support for MStar/Sigmastar infinity IP camera SoCs.
+
+config MACH_MERCURY
+	bool "MStar/Sigmastar mercury SoC support"
+	default ARCH_MSTARV7
+	help
+	  Support for MStar/Sigmastar mercury dash camera SoCs.
+	  Note that older Mercury2 SoCs are ARM9 based and not supported.
+
+endif
diff --git a/arch/arm/mach-mstar/Makefile b/arch/arm/mach-mstar/Makefile
new file mode 100644
index 000000000000..93b0391ede7e
--- /dev/null
+++ b/arch/arm/mach-mstar/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_ARCH_MSTARV7) += mstarv7.o
diff --git a/arch/arm/mach-mstar/mstarv7.c b/arch/arm/mach-mstar/mstarv7.c
new file mode 100644
index 000000000000..81a4cbcab206
--- /dev/null
+++ b/arch/arm/mach-mstar/mstarv7.c
@@ -0,0 +1,80 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree support for MStar/Sigmastar Armv7 SoCs
+ *
+ * Copyright (c) 2020 thingy.jp
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include <linux/init.h>
+#include <asm/mach/arch.h>
+#include <asm/mach/map.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/io.h>
+
+/*
+ * In the u-boot code the area these registers are in is
+ * called "L3 bridge" and there are register descriptions
+ * for something in the same area called "AXI".
+ *
+ * It's not exactly known what this is but the vendor code
+ * for both u-boot and linux share calls to "flush the miu pipe".
+ * This seems to be to force pending CPU writes to memory so that
+ * the state is right before DMA capable devices try to read
+ * descriptors and data the CPU has prepared. Without doing this
+ * ethernet doesn't work reliably for example.
+ */
+
+#define MSTARV7_L3BRIDGE_FLUSH		0x14
+#define MSTARV7_L3BRIDGE_STATUS		0x40
+#define MSTARV7_L3BRIDGE_FLUSH_TRIGGER	BIT(0)
+#define MSTARV7_L3BRIDGE_STATUS_DONE	BIT(12)
+
+static void __iomem *l3bridge;
+
+static const char * const mstarv7_board_dt_compat[] __initconst = {
+	"mstar,infinity",
+	"mstar,infinity3",
+	"mstar,mercury5",
+	NULL,
+};
+
+/*
+ * This may need locking to deal with situations where an interrupt
+ * happens while we are in here and mb() gets called by the interrupt handler.
+ *
+ * The vendor code did have a spin lock but it doesn't seem to be needed and
+ * removing it hasn't caused any side effects so far.
+ *
+ * [writel|readl]_relaxed have to be used here because otherwise
+ * we'd end up right back in here.
+ */
+static void mstarv7_mb(void)
+{
+	/* toggle the flush miu pipe fire bit */
+	writel_relaxed(0, l3bridge + MSTARV7_L3BRIDGE_FLUSH);
+	writel_relaxed(MSTARV7_L3BRIDGE_FLUSH_TRIGGER, l3bridge
+			+ MSTARV7_L3BRIDGE_FLUSH);
+	while (!(readl_relaxed(l3bridge + MSTARV7_L3BRIDGE_STATUS)
+			& MSTARV7_L3BRIDGE_STATUS_DONE)) {
+		/* wait for flush to complete */
+	}
+}
+
+static void __init mstarv7_init(void)
+{
+	struct device_node *np;
+
+	np = of_find_compatible_node(NULL, NULL, "mstar,l3bridge");
+	l3bridge = of_iomap(np, 0);
+	if (l3bridge)
+		soc_mb = mstarv7_mb;
+	else
+		pr_warn("Failed to install memory barrier, DMA will be broken!\n");
+}
+
+DT_MACHINE_START(MSTARV7_DT, "MStar/Sigmastar Armv7 (Device Tree)")
+	.dt_compat	= mstarv7_board_dt_compat,
+	.init_machine	= mstarv7_init,
+MACHINE_END
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
