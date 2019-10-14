Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38037D5B53
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfeQf2yNlguEehBTTunyqnWErOHuhR8LXG42aGJYm6A=; b=VKO1WegExRAtfw
	XtpAWpLVaCtz0EvppChxAWwujG49rRMw7LVgitjXHjNgdVVcDpSG4G9MlDeFTNnhEuEWKl2v7Z2wP
	qmuthfB25Lg+qB8lmhduG8lxHdxXpBTWb+CnZqQJM3lvwZUPhvZdMR1rIol1/qHnoKk9EOZxeirL2
	emKkBwEfCCcCRQOKAky3mH+XYUlpbHSLVGdUZn62zEJDUo2nxqeV2QoOmtqXx4BvJGMsC4sdWWdpP
	BTWykvbya7mZNe6/CyeurXufWSgd8kOWcYa3fysdd0vbYRmuZZRcXnRmwkuD5WFB5UA4LLt9mPK4Y
	a0jLXnEuusqN2BWhrVjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtje-0007vQ-LB; Mon, 14 Oct 2019 06:21:38 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtjT-0007uo-Sn
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:21:29 +0000
Received: by mail-pl1-x641.google.com with SMTP id j11so7545186plk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 23:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=554xhV+hLyMKcqr7sdgNkibt6TJgY0ufjKiym0bnAqk=;
 b=tuOaD5BwIZVKAid0XN0878Rpm8jrUzcUxMkqNkilQOH3FQSWmRzsxzmJB4xueu/OEt
 9DMT5N2rySVnS7966OlUCKjhCGW1BUBZIRFR5t3PSQ8SrXVX1Gphhkx3tnHK8EHHf1dO
 J8Hrtg4ycU2Mm9c/23phmLA6CUCoiHCnlpbFE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=554xhV+hLyMKcqr7sdgNkibt6TJgY0ufjKiym0bnAqk=;
 b=ZKZ38guXBIDbRDz5537SvqijdeWHMYbEvbbd3dY5kl/27iSZK8iHe1nE2ZG+u+55P6
 Ys0ngtSL8y0TCyQ7AofDE+xm3QyzFVuwzz54zzNqV01mHsVfpvktUN7iybb7BbELBK4S
 5IvubrBmGT4WHkbS/IXU0b9kding2IDhk2tgdDjz+NHk6VsBsWrtpYTGTpRkTNF35cJL
 r2qfcVwo2nc3OexU28bzyrQR5jMpcoMSQ7oA16zUY12B64FTnkGn59CxP5q1lrmF0nI1
 qb4cj8QnOVF7Pv1Z8DsHAJkrQ60uBmIKZM5pxZ0XwwRCx8ukgy6Ybg2Wq55+Gy1KnZQo
 sOdQ==
X-Gm-Message-State: APjAAAXC6oFY0wwkGZK54Xp5PnergZxz4TixhkluG5j+QDIO9AeuDAEk
 jZXmhd80fYsrd6XpfKnfeF7aMg==
X-Google-Smtp-Source: APXvYqwh8UClCtPKHBz5EKVkNH+ieGz5kCgjMjQVjuy5uE/j0Wokoc9Nn776sYI6foz0woXprXONiQ==
X-Received: by 2002:a17:902:a584:: with SMTP id
 az4mr27734351plb.74.1571034086897; 
 Sun, 13 Oct 2019 23:21:26 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id g24sm16874074pfi.81.2019.10.13.23.21.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 23:21:26 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH 2/4] ARM: mstar: Add machine for MStar infinity family SoCs
Date: Mon, 14 Oct 2019 15:15:57 +0900
Message-Id: <20191014061617.10296-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014061617.10296-1-daniel@0x0f.com>
References: <20191014061617.10296-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_232127_932530_BAF373F9 
X-CRM114-Status: GOOD (  22.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>, Mike Rapoport <rppt@linux.ibm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Paul Burton <paul.burton@mips.com>, Andrew Morton <akpm@linux-foundation.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Initial support for the MStar infinity/infinity3 series of Cortex A7
based IP camera SoCs.

These chips are interesting in that they contain a Cortex A7,
peripherals and system memory in a single tiny QFN package that
can be hand soldered allowing almost anyone to embed Linux
in their projects.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                    |  1 +
 arch/arm/Kconfig               |  2 +
 arch/arm/Makefile              |  1 +
 arch/arm/mach-mstar/Kconfig    | 15 ++++++
 arch/arm/mach-mstar/Makefile   |  1 +
 arch/arm/mach-mstar/infinity.c | 96 ++++++++++++++++++++++++++++++++++
 6 files changed, 116 insertions(+)
 create mode 100644 arch/arm/mach-mstar/Kconfig
 create mode 100644 arch/arm/mach-mstar/Makefile
 create mode 100644 arch/arm/mach-mstar/infinity.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 8b7913c13f9a..e35c3eb2b680 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1985,6 +1985,7 @@ ARM/MStar SoC support
 M:	Daniel Palmer <daniel@thingy.jp>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
+F:	arch/arm/mach-mstar/
 S:	Maintained
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8a50efb559f3..b8450ed8d946 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -667,6 +667,8 @@ source "arch/arm/mach-mmp/Kconfig"
 
 source "arch/arm/mach-moxart/Kconfig"
 
+source "arch/arm/mach-mstar/Kconfig"
+
 source "arch/arm/mach-mv78xx0/Kconfig"
 
 source "arch/arm/mach-mvebu/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..2a3c127cd243 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -196,6 +196,7 @@ machine-$(CONFIG_ARCH_MXC)		+= imx
 machine-$(CONFIG_ARCH_MEDIATEK)		+= mediatek
 machine-$(CONFIG_ARCH_MILBEAUT)		+= milbeaut
 machine-$(CONFIG_ARCH_MXS)		+= mxs
+machine-$(CONFIG_ARCH_MSTAR)		+= mstar
 machine-$(CONFIG_ARCH_NOMADIK)		+= nomadik
 machine-$(CONFIG_ARCH_NPCM)		+= npcm
 machine-$(CONFIG_ARCH_NSPIRE)		+= nspire
diff --git a/arch/arm/mach-mstar/Kconfig b/arch/arm/mach-mstar/Kconfig
new file mode 100644
index 000000000000..7bc79c296ebb
--- /dev/null
+++ b/arch/arm/mach-mstar/Kconfig
@@ -0,0 +1,15 @@
+menuconfig ARCH_MSTAR
+	bool "MStar SoC Support"
+	depends on ARCH_MULTI_V7
+	select ARM_GIC
+	help
+	  Support for MStar ARMv7 SoCs
+
+if ARCH_MSTAR
+
+config MACH_INFINITY
+	bool "MStar infinity SoC support"
+	default ARCH_INFINITY
+	help
+	  Support for MStar infinity(1/3) IP camera SoCs
+endif
diff --git a/arch/arm/mach-mstar/Makefile b/arch/arm/mach-mstar/Makefile
new file mode 100644
index 000000000000..144b58b189e3
--- /dev/null
+++ b/arch/arm/mach-mstar/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MACH_INFINITY) += infinity.o
diff --git a/arch/arm/mach-mstar/infinity.c b/arch/arm/mach-mstar/infinity.c
new file mode 100644
index 000000000000..520581660bef
--- /dev/null
+++ b/arch/arm/mach-mstar/infinity.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree support for MStar Infinity SoCs
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
+ * The IO space is remapped to the same place
+ * the vendor kernel does so that the hardcoded
+ * addresses all over the vendor drivers line up.
+ */
+
+#define INFINITY_IO_PHYS	0x1f000000
+#define INFINITY_IO_OFFSET	0xde000000
+#define INFINITY_IO_VIRT	(INFINITY_IO_PHYS + INFINITY_IO_OFFSET)
+#define INFINITY_IO_SIZE	0x00400000
+
+/*
+ * In the u-boot code the area these registers are in is
+ * called "L3 bridge".
+ *
+ * It's not exactly known what is the L3 bridge is but
+ * the vendor code for both u-boot and linux share calls
+ * to "flush the miu pipe". This seems to be to force pending
+ * CPU writes to memory so that the state is right before
+ * DMA capable devices try to read descriptors and data
+ * the CPU has prepared. Without doing this ethernet doesn't
+ * work reliably for example.
+ */
+
+#define INFINITY_L3BRIDGE_FLUSH		0x204414
+#define INFINITY_L3BRIDGE_STATUS	0x204440
+#define INFINITY_L3BRIDGE_FLUSH_TRIGGER	BIT(0)
+#define INFINITY_L3BRIDGE_STATUS_DONE	BIT(12)
+
+static void __iomem *miu_status;
+static void __iomem *miu_flush;
+
+static struct map_desc infinity_io_desc[] __initdata = {
+		{INFINITY_IO_VIRT, __phys_to_pfn(INFINITY_IO_PHYS),
+				INFINITY_IO_SIZE, MT_DEVICE},
+};
+
+static void __init infinity_map_io(void)
+{
+	iotable_init(infinity_io_desc, ARRAY_SIZE(infinity_io_desc));
+	miu_flush = (void __iomem *)(infinity_io_desc[0].virtual
+			+ INFINITY_L3BRIDGE_FLUSH);
+	miu_status = (void __iomem *)(infinity_io_desc[0].virtual
+			+ INFINITY_L3BRIDGE_STATUS);
+}
+
+static const char * const infinity_board_dt_compat[] = {
+	"mstar,infinity",
+	NULL,
+};
+
+static DEFINE_SPINLOCK(infinity_mb_lock);
+
+static void infinity_mb(void)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&infinity_mb_lock, flags);
+	/* toggle the flush miu pipe fire bit */
+	writel_relaxed(0, miu_flush);
+	writel_relaxed(INFINITY_L3BRIDGE_FLUSH_TRIGGER, miu_flush);
+	while (!(readl_relaxed(miu_status) & INFINITY_L3BRIDGE_STATUS_DONE)) {
+		/* wait for flush to complete */
+	}
+	spin_unlock_irqrestore(&infinity_mb_lock, flags);
+}
+
+static void __init infinity_barriers_init(void)
+{
+	soc_mb = infinity_mb;
+}
+
+static void __init infinity_init(void)
+{
+	infinity_barriers_init();
+}
+
+DT_MACHINE_START(INFINITY_DT, "MStar Infinity (Device Tree)")
+	.dt_compat	= infinity_board_dt_compat,
+	.init_machine	= infinity_init,
+	.map_io		= infinity_map_io,
+MACHINE_END
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
