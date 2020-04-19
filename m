Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15881AFC73
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWLNU56UYBP3x8ev3JYrAnOuBPxOHmsQ8+PtOB6CUy4=; b=igp9Rt5cshXU/S
	TzpeYsG4ic3Xqz0vlntHdh8o81i34tg3jDpAwhm1Omhn463vcPX7gIdag6C/gZq2Y3dRTjOoqp8R2
	fTnF7btt2QUEUQydvytzncgitEzzqz0/UG4xauMAR5OHy60dXTu1K+Z5mEX0DpH7ZDg5j5YtbOktt
	rBh//ozdx90vGslESoicZHEppImIbLVt8V84IxyCISrvbmuNvOScXpQe55bovKqZS8Gx8mCZQbzrs
	JzTVIr929CZof/Yo5JRamYP4wr4lE9Lf+N9w/SpuQaD301me9J+i9oMCOpiihlvc+kolJ7tJRMvgV
	zishH5ldRPMq6UIAeYeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDR7-0001ug-Jm; Sun, 19 Apr 2020 17:08:53 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQV-0001gI-8E
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:16 +0000
Received: by mail-oi1-f194.google.com with SMTP id d7so6749598oif.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7u0a7x6gVwqXn6aqvyWZupXMzL8Fz9JGwbGpr6xl9qw=;
 b=Edpv1/dlrXYlmfP9jvNYvdIutniR0zI52WzRCbh64gmy4OOHkN6Q11oaLxyIvLwTXg
 TQAulPzbzTG6QH7yLxfQ/buxDSEUj6DumrcuguO1LtEFMzWCEqvBrwb28EwVW3IbtolU
 JbtJmVad5rWkMYC4AmhjOQX//xFsZDtzwqlur8Cwa9kAIAi3169IJQdDUUrPAcWtXpwJ
 M8rNi6C6ZqwzFImy5385lI4nHAQ1nemK87ev9pW/TV9IK9dMKbBpBS/2QsTeJp+Oxihy
 iGiQWR+utpZMcg6pKRdX5a4IyKkWWv1q11zHxqs3+TpgJZwtqXYowyjFZDfsG5nQWvWe
 1cnw==
X-Gm-Message-State: AGi0PubzwGzbcdMCClDgSjLhhvihL4YEun7Fiy88qvBQquKf7rYMKxAj
 BlhZojY5cAaV9+fM0ZJUdw==
X-Google-Smtp-Source: APiQypIylm12TEGbRXZrDBPw2xjm/2k4Np+huyFbHSGpX+YqkB9/f2+MfTS6wgL2Gcpce4PpGiVy8w==
X-Received: by 2002:a05:6808:a91:: with SMTP id
 q17mr7982316oij.102.1587316093748; 
 Sun, 19 Apr 2020 10:08:13 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:13 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 01/17] ARM: vexpress: Move vexpress_flags_set() into arch code
Date: Sun, 19 Apr 2020 12:07:54 -0500
Message-Id: <20200419170810.5738-2-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100815_288783_1B3BAD06 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
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

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
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
