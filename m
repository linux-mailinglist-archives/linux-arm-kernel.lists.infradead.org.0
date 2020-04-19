Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E90C1AFC7C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79gFw0QOhrEcVNtibzhOB0K0ORodB1KN4jNkmfpJi4M=; b=VAkv2pV9grCXN+
	gKNeC9K6HZv6UGyiCmORLOlM2Mbkj5+Rjjo/GKe1ASI0lUCRxCJSoW2V1K6T6bCHVrPFXFRXXMWy0
	UXUPzq6SNI4E9mfi3mnoEOPD/tNMPreU2E29CBypwcbbSiRkIHMGIQdRofxnbJwmNr30T0Zs3yymK
	Y3WClCSxUmUmQL+z7iPIEAz3YTlQ/krJ+pADf5sPT1LISkuTL+7EzA88eEawt2xoWyyUjfZfNecXn
	Sqa/hSnmI/x4xHezzY9qgfqsrSUI7GSEScoFYwodK3mf297i8gJvJIpALRkgPI9Av8f2owS1YyT0v
	aTVkQBmbkcGgWtn17kdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDSm-0005gu-Pd; Sun, 19 Apr 2020 17:10:36 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQc-0001jw-5Q
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:24 +0000
Received: by mail-ot1-f65.google.com with SMTP id i27so5960526ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dfjp1gZuZ5vkk5hbQ7tBLiYF+WukIQyW6RLLpGIIUfY=;
 b=PD37Lm+n/Y9RFkO1PtZftuMuYXndd/U3O8gJ2gWQgqvrl0rfFjxa8qa86Bvev78DI9
 h/TgGRsHhnqEeniH2Ja9o5r41A/IJaMcEJvRc+W6bqJtXs1/lK2A40n/5c47X8tTtjP4
 FesXNexF+29QR5mlI5ra5Oa3UuaxrOke5Q3bZ02a2TqzatlrsruAAX+rkCLQ3M1PGyT8
 QyHpgG0fvuVjNkSkBftq8ftQ+Dvn/PGB6WsJewjQMV+N4LWZl5M0HfvAj/XWFhvkOoat
 X2Z/JV+wYe8jf1tuSI0ZhQlgHFQKJFlbCiaMZ/NjnMBGrCWA4kXmK1mDzotr36NE4ozy
 83mQ==
X-Gm-Message-State: AGi0PuZQtlYQsYg63rXrUilT634fYJJkjMUjTkJ72VOo9nU8FpuORoV5
 TVwVus6l9A5Yued2qUtNVA==
X-Google-Smtp-Source: APiQypIPS0+XDNzclSv4AnGvJhw/FAlVfJCrCq8sLXv1l6bDtJmCpkeDjmWLFW1j0V9Ur0kffusBUQ==
X-Received: by 2002:a9d:19ca:: with SMTP id k68mr6856344otk.232.1587316099983; 
 Sun, 19 Apr 2020 10:08:19 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:19 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 05/17] clk: versatile: Kill CONFIG_COMMON_CLK_VERSATILE
Date: Sun, 19 Apr 2020 12:07:58 -0500
Message-Id: <20200419170810.5738-6-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100822_249376_F80F9981 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

CONFIG_COMMON_CLK_VERSATILE doesn't really do anything other than hiding
Arm Ltd reference platform clock drivers. It is both selected by the
platforms that need it and has a 'depends on' for those platforms. It
selects REGMAP_MMIO, but really CONFIG_ICST should do that. Also,
CONFIG_ICST can't be enabled for COMPILE_TEST unless something else
selected it.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-integrator/Kconfig |  1 -
 arch/arm/mach-realview/Kconfig   |  1 -
 arch/arm/mach-versatile/Kconfig  |  1 -
 arch/arm/mach-vexpress/Kconfig   |  1 -
 arch/arm64/Kconfig.platforms     |  1 -
 drivers/clk/Makefile             |  2 +-
 drivers/clk/versatile/Kconfig    | 13 ++-----------
 7 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/arch/arm/mach-integrator/Kconfig b/arch/arm/mach-integrator/Kconfig
index 982eabc36163..d59ba15a6b69 100644
--- a/arch/arm/mach-integrator/Kconfig
+++ b/arch/arm/mach-integrator/Kconfig
@@ -3,7 +3,6 @@ menuconfig ARCH_INTEGRATOR
 	bool "ARM Ltd. Integrator family"
 	depends on ARCH_MULTI_V4T || ARCH_MULTI_V5 || ARCH_MULTI_V6
 	select ARM_AMBA
-	select COMMON_CLK_VERSATILE
 	select HAVE_TCM
 	select ICST
 	select MFD_SYSCON
diff --git a/arch/arm/mach-realview/Kconfig b/arch/arm/mach-realview/Kconfig
index e7633c0aaae7..83ec9eeb3e5f 100644
--- a/arch/arm/mach-realview/Kconfig
+++ b/arch/arm/mach-realview/Kconfig
@@ -6,7 +6,6 @@ menuconfig ARCH_REALVIEW
 	select ARM_GIC
 	select ARM_TIMER_SP804
 	select CLK_SP810
-	select COMMON_CLK_VERSATILE
 	select GPIO_PL061 if GPIOLIB
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
index f5c275434d6c..d88e7725bf99 100644
--- a/arch/arm/mach-versatile/Kconfig
+++ b/arch/arm/mach-versatile/Kconfig
@@ -6,7 +6,6 @@ config ARCH_VERSATILE
 	select ARM_TIMER_SP804
 	select ARM_VIC
 	select CLKSRC_VERSATILE
-	select COMMON_CLK_VERSATILE
 	select CPU_ARM926T
 	select ICST
 	select MFD_SYSCON
diff --git a/arch/arm/mach-vexpress/Kconfig b/arch/arm/mach-vexpress/Kconfig
index 18951cd20d9d..2d1fdec4c230 100644
--- a/arch/arm/mach-vexpress/Kconfig
+++ b/arch/arm/mach-vexpress/Kconfig
@@ -7,7 +7,6 @@ menuconfig ARCH_VEXPRESS
 	select ARM_GIC
 	select ARM_GLOBAL_TIMER
 	select ARM_TIMER_SP804
-	select COMMON_CLK_VERSATILE
 	select GPIOLIB
 	select HAVE_ARM_SCU if SMP
 	select HAVE_ARM_TWD if SMP
diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index 5c38dc56b808..25cbb556d863 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -274,7 +274,6 @@ config ARCH_UNIPHIER
 
 config ARCH_VEXPRESS
 	bool "ARMv8 software model (Versatile Express)"
-	select COMMON_CLK_VERSATILE
 	select GPIOLIB
 	select PM
 	select PM_GENERIC_DOMAINS
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index f4169cc2fd31..fb30c16e1596 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -114,7 +114,7 @@ obj-$(CONFIG_ARCH_TEGRA)		+= tegra/
 obj-y					+= ti/
 obj-$(CONFIG_CLK_UNIPHIER)		+= uniphier/
 obj-$(CONFIG_ARCH_U8500)		+= ux500/
-obj-$(CONFIG_COMMON_CLK_VERSATILE)	+= versatile/
+obj-y					+= versatile/
 ifeq ($(CONFIG_COMMON_CLK), y)
 obj-$(CONFIG_X86)			+= x86/
 endif
diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index c2618f1477a2..3465fb291998 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -1,22 +1,14 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config ICST
-	bool
-
-config COMMON_CLK_VERSATILE
-	bool "Clock driver for ARM Reference designs"
-	depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
-		ARCH_VERSATILE || ARCH_VEXPRESS || ARM64 || \
-		COMPILE_TEST
+	bool "Clock driver for ARM Reference designs ICST" if COMPILE_TEST
 	select REGMAP_MMIO
 	---help---
 	  Supports clocking on ARM Reference designs:
 	  - Integrator/AP and Integrator/CP
 	  - RealView PB1176, EB, PB11MP and PBX
-	  - Versatile Express
 
 config CLK_SP810
 	bool "Clock driver for ARM SP810 System Controller"
-	depends on COMMON_CLK_VERSATILE
 	default y if ARCH_VEXPRESS
 	---help---
 	  Supports clock muxing (REFCLK/TIMCLK to TIMERCLKEN0-3) capabilities
@@ -24,8 +16,7 @@ config CLK_SP810
 
 config CLK_VEXPRESS_OSC
 	bool "Clock driver for Versatile Express OSC clock generators"
-	depends on COMMON_CLK_VERSATILE
-	depends on VEXPRESS_CONFIG
+	depends on VEXPRESS_CONFIG || COMPILE_TEST
 	default y if ARCH_VEXPRESS
 	---help---
 	  Simple regmap-based driver driving clock generators on Versatile
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
