Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8731E1BE963
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUJUG+eDEWDqvvFw1IE9+8pbHJLpBqIoM+V3StY7FMA=; b=BnFrrO+JBFB0n/
	9MZBfu+e8n8LQfbWI3+RUU6AIByfse+7CtGzxTtV7s8eyHLtbQLPiT8u2GjzVswm60FIQn3/O11cp
	VwXyJmtlcnikjJNoLMeaQQp7XxzacMm2W7YPkvubgD/V/vWOPC1+DgmRHsXZzGIMB5xO2lZUK89T0
	70VcdTgf88sAc1w4DKOrwGjfYngUy1pq1EWXG7bg2dvUSDV62EQA3Zfj2sKfvvDpsYfSKKSFrZiH3
	+QMC5uKJvrYHOYMxN/0thldD8LvLVyJaKQxykLW9dhYP4bp9Cl6mQMhzy98OmfT/kVmiCRL77sr06
	AsHa2/SJByB0pnKdYLww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtnc-0005OX-JA; Wed, 29 Apr 2020 20:59:20 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmo-00052Y-3x
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:31 +0000
Received: by mail-ot1-f66.google.com with SMTP id b13so2991476oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q+TgxwbB2Dl7ZPjDzyWggOx4otMnZDta1bvf94cBc94=;
 b=Z4tzJGvFBxB9pPAl+qT8aDKpnj8OXnsPKXdqbzoL8TFT0N10908ywk1W52FsZKTKTn
 MH9jOe6JQngxGmmnWZCS7kjSR7c5KAkTPnAxvRem7Dv11h0zVtdOeIWYcxf18rTzWWbc
 0LqAHfp54aMxAGs7t99ak1LCLhC8cosV1jMRTFzj4EzXIhkW4gKwTRkGd9DMj//h67WJ
 ozmjbybqobj1Gmvbiey7pQ+//bO8hROQQMrmxG5ndZXDmiwJ2GgBzQN+CLs1O65YOYQ1
 cav9qPHjj+e0xVwA4darkeCLgH/t7As7SzFoqwdQXZ9FW8tOmod/UmlHnQluiYlN96wi
 eiHg==
X-Gm-Message-State: AGi0Pub9WOauQav7ujoW4h4Kc9DquJ7ci/OSgy10slfNQC7V7maze2Bg
 mIfXYm65TxTj/plhyUrvFnQrvMc=
X-Google-Smtp-Source: APiQypJBRfyZPy1x2+wmhpnE8ByJYQPJyS6MhU4mFvIB5u0UOWmSacZq2fGsL82wlHmlRmCQ0Y+0Tw==
X-Received: by 2002:a9d:6754:: with SMTP id w20mr26876095otm.10.1588193909174; 
 Wed, 29 Apr 2020 13:58:29 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:28 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 01/16] ARM: vexpress: Move vexpress_flags_set() into arch
 code
Date: Wed, 29 Apr 2020 15:58:10 -0500
Message-Id: <20200429205825.10604-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135830_152587_E550AD44 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

vexpress_flags_set() is only used by the platform SMP related code and
has nothing to do with the vexpress-sysreg MFD driver other than both
access the same h/w block. It's also only needed for 32-bit systems and
must be built-in for them. Let's move vexpress_flags_set() closer to
where it is being used. This will allow for vexpress-sysreg to be built
as a module.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-vexpress/Kconfig |  1 -
 arch/arm/mach-vexpress/core.h  |  1 +
 arch/arm/mach-vexpress/dcscb.c |  1 +
 arch/arm/mach-vexpress/v2m.c   | 23 +++++++++++++++++++++++
 drivers/mfd/vexpress-sysreg.c  | 19 -------------------
 include/linux/vexpress.h       |  4 ----
 6 files changed, 25 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 726a68085c3b..18951cd20d9d 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -22,7 +22,6 @@ menuconfig ARCH_VEXPRESS
 	select REGULATOR_FIXED_VOLTAGE if REGULATOR
 	select VEXPRESS_CONFIG
 	select VEXPRESS_SYSCFG
-	select MFD_VEXPRESS_SYSREG
 	help
 	  This option enables support for systems using Cortex processor based
 	  ARM core and logic (FPGA) tiles on the Versatile Express motherboard,
diff --git a/arch/arm/mach-vexpress/core.h b/arch/arm/mach-vexpress/core.h
index f4a7519084f1..bda78675c55d 100644
--- a/arch/arm/mach-vexpress/core.h
+++ b/arch/arm/mach-vexpress/core.h
@@ -1,3 +1,4 @@
 bool vexpress_smp_init_ops(void);
+void vexpress_flags_set(u32 data);
 
 extern const struct smp_operations vexpress_smp_dt_ops;
diff --git a/arch/arm/mach-vexpress/dcscb.c b/arch/arm/mach-vexpress/dcscb.c
index 46a903c88c6a..a0554d7d04f7 100644
--- a/arch/arm/mach-vexpress/dcscb.c
+++ b/arch/arm/mach-vexpress/dcscb.c
@@ -20,6 +20,7 @@
 #include <asm/cputype.h>
 #include <asm/cp15.h>
 
+#include "core.h"
 
 #define RST_HOLD0	0x0
 #define RST_HOLD1	0x4
diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-vexpress/v2m.c
index 95886b3bb9dd..ffe7c7a85ae9 100644
--- a/arch/arm/mach-vexpress/v2m.c
+++ b/arch/arm/mach-vexpress/v2m.c
@@ -1,8 +1,31 @@
 // SPDX-License-Identifier: GPL-2.0
+#include <linux/of.h>
+#include <linux/of_address.h>
 #include <asm/mach/arch.h>
 
 #include "core.h"
 
+#define SYS_FLAGSSET		0x030
+#define SYS_FLAGSCLR		0x034
+
+void vexpress_flags_set(u32 data)
+{
+	static void __iomem *base;
+
+	if (!base) {
+		struct device_node *node = of_find_compatible_node(NULL, NULL,
+				"arm,vexpress-sysreg");
+
+		base = of_iomap(node, 0);
+	}
+
+	if (WARN_ON(!base))
+		return;
+
+	writel(~0, base + SYS_FLAGSCLR);
+	writel(data, base + SYS_FLAGSSET);
+}
+
 static const char * const v2m_dt_match[] __initconst = {
 	"arm,vexpress",
 	NULL,
diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index c68ff56dbdb1..0b9cc67706c7 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -8,7 +8,6 @@
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/mfd/core.h>
-#include <linux/of_address.h>
 #include <linux/of_platform.h>
 #include <linux/platform_data/syscon.h>
 #include <linux/platform_device.h>
@@ -42,24 +41,6 @@
 
 #define SYS_MISC_MASTERSITE	(1 << 14)
 
-void vexpress_flags_set(u32 data)
-{
-	static void __iomem *base;
-
-	if (!base) {
-		struct device_node *node = of_find_compatible_node(NULL, NULL,
-				"arm,vexpress-sysreg");
-
-		base = of_iomap(node, 0);
-	}
-
-	if (WARN_ON(!base))
-		return;
-
-	writel(~0, base + SYS_FLAGSCLR);
-	writel(data, base + SYS_FLAGSSET);
-}
-
 /* The sysreg block is just a random collection of various functions... */
 
 static struct syscon_platform_data vexpress_sysreg_sys_id_pdata = {
diff --git a/include/linux/vexpress.h b/include/linux/vexpress.h
index 0e130b5077a5..2ec7992b054c 100644
--- a/include/linux/vexpress.h
+++ b/include/linux/vexpress.h
@@ -40,8 +40,4 @@ struct device *vexpress_config_bridge_register(struct device *parent,
 
 struct regmap *devm_regmap_init_vexpress_config(struct device *dev);
 
-/* Platform control */
-
-void vexpress_flags_set(u32 data);
-
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
