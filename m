Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABEE1F50E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 11:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wmgc8D4y+tq5d2kZYE1v4GbWyhN+uBZK6utLPDeyeL4=; b=I82vpBriqKqPz9
	AzD1FztrH295Uizjyc7MrG2qL9Hh1ZQKgPe0+MWaS3I0zeCNtFyGGboIOnatI8JMgotyjdmwjqM33
	qcIRP4CSZCkZpzZbL7+XuLHSCwbMu67//i0LBtdwcS2rpdtb1b7laWAR4Q2UntKPZEvsVm9CKuh1H
	xAqM/t2Hgx/2pd8JEhHjFypVMtd/JNCJyg5yzr2ohhQ4PovoKgYe8m8r4UQUC8D6+iuKJASwBZBZN
	stTmaQQ3vMWYaw/KxHu262vQ2HITps7abZVhxlQdO2/S3YnsapzSfdYDz4ZI8PeIl05PnGm94eb8t
	/mOc0dyLYfe5MlLV4qIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwiu-0002Ms-18; Wed, 10 Jun 2020 09:08:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwik-0002MF-Cj
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 09:08:31 +0000
Received: by mail-pl1-x644.google.com with SMTP id bg4so733759plb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 02:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XOjL5XtgGbA93LVXomVtFgXOXm6Sr4M6mhaTD4RYsdI=;
 b=frMZKx1zv7obfvNtum4jhtV0Zl8C3nq/5TTIvpc/k+m/mPSk8gfeEBItV5bgEu4aG5
 hg0NKtGIEhweeyzJyb3yGUcFWvfC42/6MSHR1A673/wGxIAWUTCPhWNMnlkYgg1nq96v
 pd5ftocL7i6T30U0WdZeqRUaXn+W9U3uKwhAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XOjL5XtgGbA93LVXomVtFgXOXm6Sr4M6mhaTD4RYsdI=;
 b=ThDmIRQp6phD1Gho3sdFk5RqOppDDrDmknsv4Agzx8j6Fk0Btww0zVc/Z8vv8qf6Zw
 FGrqEhr2d51LeGCeypcitUqTDgJJYjpMHt5+Ph69AGKou9YpOK7lKAPWAxMp+H2WhppR
 AYYfJyyof69aP1Vpwbh/zxeNBUD71ftFu0NH80ng5qov3ICrh3CueyLIkCaplfVjrwn3
 FOoYOlyfdGFGWD4sNcaXNkDFpIUZAhFAUlfY14s/d+Ycp4339gHAKvZoeKmh+mLQQw7M
 X5Zz1dPUJfol51uPhGGeGMbebsUt8RjK1V6x2sZmsDdxA1k2MEsqGMIjysjNBVwXizm5
 PAGQ==
X-Gm-Message-State: AOAM531cfJRrCM7zdq7Qm40yhVU8rl486Qvocq4PLLhV4ZMKEisKYy1D
 GRiI6JgcEQ73BXOZFYsF9fWsFg==
X-Google-Smtp-Source: ABdhPJxec3qRk8ln4bsEbxkkZaxgRovh7NcnXMmOcmS2Ud1ytTcW25fm/fPQRQh+rwhcM2Jpmh1Z3g==
X-Received: by 2002:a17:902:167:: with SMTP id
 94mr2194778plb.170.1591780109501; 
 Wed, 10 Jun 2020 02:08:29 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id nl8sm5191620pjb.13.2020.06.10.02.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 02:08:28 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH v2 2/5] ARM: mstar: Add machine for MStar/Sigmastar
 infinity/mercury family ARMv7 SoCs
Date: Wed, 10 Jun 2020 18:04:00 +0900
Message-Id: <20200610090421.3428945-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20191014061617.10296-2-daniel@0x0f.com>
References: <20191014061617.10296-2-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020830_433228_E648FDEC 
X-CRM114-Status: GOOD (  20.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck15@gmail.com>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 allen <allen.chen@ite.com.tw>, tim.bird@sony.com,
 Maxime Ripard <mripard@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, k@japko.eu,
 Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Initial support for the MStar/Sigmastar infinity/mercury series of ARMv7
based IP camera and dashcam SoCs.

These chips are interesting in that they contain a Cortex A7,
peripherals and system memory in a single tiny QFN package that
can be hand soldered allowing almost anyone to embed Linux
in their projects.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                   |  1 +
 arch/arm/Kconfig              |  2 +
 arch/arm/Makefile             |  1 +
 arch/arm/mach-mstar/Kconfig   | 26 +++++++++++++
 arch/arm/mach-mstar/Makefile  |  1 +
 arch/arm/mach-mstar/mstarv7.c | 72 +++++++++++++++++++++++++++++++++++
 6 files changed, 103 insertions(+)
 create mode 100644 arch/arm/mach-mstar/Kconfig
 create mode 100644 arch/arm/mach-mstar/Makefile
 create mode 100644 arch/arm/mach-mstar/mstarv7.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 1ca77f97b8ee..754521938303 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2114,6 +2114,7 @@ ARM/MStar/Sigmastar ARMv7 SoC support
 M:	Daniel Palmer <daniel@thingy.jp>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	arch/arm/mach-mstar/
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
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
index 000000000000..6235d0a7860a
--- /dev/null
+++ b/arch/arm/mach-mstar/Kconfig
@@ -0,0 +1,26 @@
+menuconfig ARCH_MSTARV7
+	bool "MStar/Sigmastar ARMv7 SoC Support"
+	depends on ARCH_MULTI_V7
+	select ARM_GIC
+	select ARM_HEAVY_MB
+	help
+	  Support for newer MStar/Sigmastar SoC families that are
+	  based on ARMv7 cores like the Cortex A7 and share the same
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
index 000000000000..ee96ce46cbbc
--- /dev/null
+++ b/arch/arm/mach-mstar/mstarv7.c
@@ -0,0 +1,72 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree support for MStar/Sigmastar ARMv7 SoCs
+ *
+ * Copyright (c) 2019 thingy.jp
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include <linux/init.h>
+#include <asm/mach/arch.h>
+#include <asm/mach/map.h>
+#include <linux/of.h>
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
+#define MSTARV7_L3BRIDGE_FLUSH		0x1f204414
+#define MSTARV7_L3BRIDGE_STATUS		0x1f204440
+#define MSTARV7_L3BRIDGE_FLUSH_TRIGGER	BIT(0)
+#define MSTARV7_L3BRIDGE_STATUS_DONE	BIT(12)
+
+static u32 __iomem *miu_status;
+static u32 __iomem *miu_flush;
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
+ */
+static void mstarv7_mb(void)
+{
+	/* toggle the flush miu pipe fire bit */
+	writel_relaxed(0, miu_flush);
+	writel_relaxed(MSTARV7_L3BRIDGE_FLUSH_TRIGGER, miu_flush);
+	while (!(readl_relaxed(miu_status) & MSTARV7_L3BRIDGE_STATUS_DONE)) {
+		/* wait for flush to complete */
+	}
+}
+
+static void __init mstarv7_barriers_init(void)
+{
+	miu_flush = ioremap(MSTARV7_L3BRIDGE_FLUSH, sizeof(*miu_flush));
+	miu_status = ioremap(MSTARV7_L3BRIDGE_STATUS, sizeof(*miu_status));
+	soc_mb = mstarv7_mb;
+}
+
+static void __init mstarv7_init(void)
+{
+	mstarv7_barriers_init();
+}
+
+DT_MACHINE_START(MSTARV7_DT, "MStar/Sigmastar ARMv7 (Device Tree)")
+	.dt_compat	= mstarv7_board_dt_compat,
+	.init_machine	= mstarv7_init,
+MACHINE_END
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
