Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8533AF516
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 06:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZK4FCijqoFsMK9o9y3Wsf3+0vBcZq5kqxzRuRTnRiSg=; b=BBguvNW2AQrNuO
	/eVdM6+keDZxTU5bXf9yDUp3PAuiBz3CiYkDXYIYEfgrA4Vg6KYfoqWXEjDKxp2bJ4GgCZlxe8xz7
	G0ALTIRg/y59bXDYiNEWryl8HX2Lf15w/iip9zwDEG+w2ZMixeUad7qr1WwlaM9in0xr/NAVElz9f
	CxgPJ4xju0iRh76cZTs+mCEVG2fbt3AJku50H2COFAMhp5dkxoNwtUPBE51yS8HlkSfqEQ/vvsh+n
	lTCmNa6GzZxbQWHZtnCXBBglEXUKEgXjJXOF+ddYCaPVr+nflCh80RNzp7lu+/CUxZyW/WUB2VBd/
	i4j2onlL2PTCCK3LDBZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7uIv-0003xh-UL; Wed, 11 Sep 2019 04:32:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7uIQ-0003ms-PR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 04:32:00 +0000
Received: by mail-pg1-x544.google.com with SMTP id u17so10839121pgi.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 21:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uJdweSw4ePjTPGHT2eJ+4FvNU1BlXNSlTTXUJYXjsWA=;
 b=bX7Sjc+6a9GKvJk3q/b/FIK4AF+J/tC3mGTlfGSmsDhOX3beIxvfFKofgB0LAGS1Xf
 GXBoYyLPMaIAwBN4mAw3y4eAyHYjOjYInd8gY0Jn94vQ3819XRBgeGwJ5k1yC+dlX0q1
 /EUowJU5NiBtaTC3fBzmcx7EAivBQVXku23fQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uJdweSw4ePjTPGHT2eJ+4FvNU1BlXNSlTTXUJYXjsWA=;
 b=TNL8LGVKihASUeSNf78+p9OYmpH7rLEzB/F6qOxVaqzZdil4veGzoAlK2n7Qw0H5Yp
 4k3K+E4dL32qMnppIiTAY3kNuCYXeEGb7rWqXetf2RrY2NvuGGciKooqYh5iwaWSBwC3
 nGrzlccp1fLepx6fJn5AufMz6qK3YDboX7Zkh637JGAhM3lZdwWq+LV5lP2jFWDC5uU4
 xj6dKjzBFBRytqFLQVuZPhYdw3e3rFB2suWnKnr3eDPUFL+jwM2hq/CWGhD/hHAnHH30
 5KEh/p2nHJ6qp+k3TwSogxxnW0yJuxGw6onhC/PcKLD1A1WtkFNSHzFDW5agVy2L4qzI
 5ivw==
X-Gm-Message-State: APjAAAVAo7nGKqxKtfZvEymMLCwro9yoh/PiT4i18UNRWACkEsZTXi6w
 nmIcX3RivxklkW+/BFrn0cEDkvnFlEakWw==
X-Google-Smtp-Source: APXvYqyegz9UX7q13a2UBaftFge+41/PlJ2DhUaT+1WxleqxijdChEV3xz6QZjidIPCHleTFcpeSHA==
X-Received: by 2002:a62:2b46:: with SMTP id r67mr41290786pfr.140.1568176317601; 
 Tue, 10 Sep 2019 21:31:57 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id u17sm264700pjn.7.2019.09.10.21.31.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 21:31:56 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 2/4] ARM: mstar: Add machine for MStar msc313 family SoCs
Date: Wed, 11 Sep 2019 13:31:40 +0900
Message-Id: <20190911043142.3734-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911043142.3734-1-daniel@0x0f.com>
References: <20190911043142.3734-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_213158_849281_69C18059 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Palmer <daniel@0x0f.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Initial support for the MStar msc313 series of Cortex A7 based
IP camera SoCs.

These chips are interesting in that they contain a Cortex A7,
peripherals and system memory in a single tiny QFN package that
can be hand soldered allowing almost anyone to embed Linux
in their projects.
---
 MAINTAINERS                  |  1 +
 arch/arm/Kconfig             |  2 +
 arch/arm/Makefile            |  1 +
 arch/arm/mach-mstar/Kconfig  | 14 ++++++
 arch/arm/mach-mstar/Makefile |  1 +
 arch/arm/mach-mstar/msc313.c | 96 ++++++++++++++++++++++++++++++++++++
 6 files changed, 115 insertions(+)
 create mode 100644 arch/arm/mach-mstar/Kconfig
 create mode 100644 arch/arm/mach-mstar/Makefile
 create mode 100644 arch/arm/mach-mstar/msc313.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 252fa7171aea..b046773af438 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1959,6 +1959,7 @@ ARM/MStar SoC support
 M:	Daniel Palmer <daniel@thingy.jp>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
+F:	arch/arm/mach-mstar/
 S:	Maintained
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 24360211534a..c5c6d31e4301 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -760,6 +760,8 @@ source "arch/arm/mach-mmp/Kconfig"
 
 source "arch/arm/mach-moxart/Kconfig"
 
+source "arch/arm/mach-mstar/Kconfig"
+
 source "arch/arm/mach-mv78xx0/Kconfig"
 
 source "arch/arm/mach-mvebu/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index c3624ca6c0bc..581e32505408 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -191,6 +191,7 @@ machine-$(CONFIG_ARCH_MXC)		+= imx
 machine-$(CONFIG_ARCH_MEDIATEK)		+= mediatek
 machine-$(CONFIG_ARCH_MILBEAUT)		+= milbeaut
 machine-$(CONFIG_ARCH_MXS)		+= mxs
+machine-$(CONFIG_ARCH_MSTAR)		+= mstar
 machine-$(CONFIG_ARCH_NOMADIK)		+= nomadik
 machine-$(CONFIG_ARCH_NPCM)		+= npcm
 machine-$(CONFIG_ARCH_NSPIRE)		+= nspire
diff --git a/arch/arm/mach-mstar/Kconfig b/arch/arm/mach-mstar/Kconfig
new file mode 100644
index 000000000000..d6b0a515da91
--- /dev/null
+++ b/arch/arm/mach-mstar/Kconfig
@@ -0,0 +1,14 @@
+menuconfig ARCH_MSTAR
+	bool "MStar SoC Support"
+	depends on ARCH_MULTI_V7
+	select ARM_GIC
+	help
+	  Support for MStar ARMv7 SoCs
+
+if ARCH_MSTAR
+
+config MACH_MSC313
+	bool "MStar MSC313(d/e) SoC support"
+	default ARCH_MSTAR
+
+endif
diff --git a/arch/arm/mach-mstar/Makefile b/arch/arm/mach-mstar/Makefile
new file mode 100644
index 000000000000..231105cdc872
--- /dev/null
+++ b/arch/arm/mach-mstar/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MACH_MSC313) += msc313.o
\ No newline at end of file
diff --git a/arch/arm/mach-mstar/msc313.c b/arch/arm/mach-mstar/msc313.c
new file mode 100644
index 000000000000..c104635f39e4
--- /dev/null
+++ b/arch/arm/mach-mstar/msc313.c
@@ -0,0 +1,96 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree support for MStar MSC313 SoCs
+ *
+ * Copyright (c) 2019 thingy.jp
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include <linux/init.h>
+#include <asm/mach/arch.h>
+#include <asm/mach/map.h>
+#include <linux/of.h>
+#include <asm/io.h>
+
+/*
+ * The IO space is remapped to the same place
+ * the vendor kernel does so that the hardcoded
+ * addresses all over the vendor drivers line up.
+ */
+
+#define MSC313_IO_PHYS		0x1f000000
+#define MSC313_IO_OFFSET	0xde000000
+#define MSC313_IO_VIRT		(MSC313_IO_PHYS + MSC313_IO_OFFSET)
+#define MSC313_IO_SIZE		0x00400000
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
+#define MSC313_L3BRIDGE_FLUSH		0x204414
+#define MSC313_L3BRIDGE_STATUS		0x204440
+#define MSC313_L3BRIDGE_FLUSH_TRIGGER	BIT(0)
+#define MSC313_L3BRIDGE_STATUS_DONE	BIT(12)
+
+static void __iomem *miu_status;
+static void __iomem *miu_flush;
+
+static struct map_desc msc313_io_desc[] __initdata = {
+		{MSC313_IO_VIRT, __phys_to_pfn(MSC313_IO_PHYS),
+				MSC313_IO_SIZE, MT_DEVICE},
+};
+
+static void __init msc313_map_io(void)
+{
+	iotable_init(msc313_io_desc, ARRAY_SIZE(msc313_io_desc));
+	miu_flush = (void __iomem *) (msc313_io_desc[0].virtual
+			+ MSC313_L3BRIDGE_FLUSH);
+	miu_status = (void __iomem *) (msc313_io_desc[0].virtual
+			+ MSC313_L3BRIDGE_STATUS);
+}
+
+static const char * const msc313_board_dt_compat[] = {
+	"mstar,msc313",
+	NULL,
+};
+
+static DEFINE_SPINLOCK(msc313_mb_lock);
+
+static void msc313_mb(void)
+{
+	unsigned long flags;
+
+	spin_lock_irqsave(&msc313_mb_lock, flags);
+	/* toggle the flush miu pipe fire bit */
+	writel_relaxed(0, miu_flush);
+	writel_relaxed(MSC313_L3BRIDGE_FLUSH_TRIGGER, miu_flush);
+	while (!(readl_relaxed(miu_status) & MSC313_L3BRIDGE_STATUS_DONE)) {
+		/* wait for flush to complete */
+	}
+	spin_unlock_irqrestore(&msc313_mb_lock, flags);
+}
+
+static void __init msc313_barriers_init(void)
+{
+	soc_mb = msc313_mb;
+}
+
+static void __init msc313_init(void)
+{
+	msc313_barriers_init();
+}
+
+DT_MACHINE_START(MSTAR_DT, "MStar MSC313 (Device Tree)")
+	.dt_compat	= msc313_board_dt_compat,
+	.init_machine = msc313_init,
+	.map_io = msc313_map_io,
+MACHINE_END
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
