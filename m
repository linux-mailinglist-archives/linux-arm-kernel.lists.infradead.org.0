Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5C574EE6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wuD/tEfz2aBNRuI64SPz12AvidjpiIz6v9HnXeM0PDI=; b=sATfS5Ah5q4M1y
	sTpyT9RnNB7Ah3FuQZaDvyJoMenvMjIrISggACJifdzz1LbQlItSvrgUV2GK2LKSDayn2jCVEZnIR
	ePsaPWJhYTekE/MRY324pQ0NOMcL5Tumg+8WOxjEiTi9Zfe9zcOQpZ6uT5PX2VcpO8e4C19FYSPI0
	8MBEKyXznkiARE3HSBH/uh1rCzZD+ht9wPLAlRX3QVrAX8mGdQ2+y5GNjWAhUTawcxNZXeC5uHAn5
	7sxEfZv2PnJk2lclJiod7AdRLfmsGE4EBGNKX2GlRsnlA1cTdE5+P4KIYK+ZF/lzhtzL3Tz5k2D1R
	m36GuUBf4XJVFpBRr8wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdZi-0003P6-2t; Thu, 25 Jul 2019 13:14:26 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdYS-0002ja-A1
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:13:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id p74so44928622wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o4s5mYhFtZl29VTDqSwCHcLENJRWZGEcESnpKK9TpyE=;
 b=vWHBawv33ZZ6U2Kf/1WV8az60+8PapAIgbjF4cRKP1SqiON9Sc9cUXurj2fsDId5eO
 +LBQZfXQcEmtfEeC1R5pEISJ4vJ4+PfM0J13CxHOuUjvfvV3uMDIJeMLQ+fR7x2z2TEd
 sGl/CfMK2zfHVvRcmyhNAYeumt99lUvwQ6J0bi8iJtBTYXgFUzgiZNsDq74HeUPC8uIe
 hDHd+6H9+6gnZhpu5Ha8Ysr09ciwPcFf6EJjrYEEQoS11HpZ2kqEPYsMCpHTiXItjqCa
 2B0weoEZ5Utu/OPtO280+QxfpG1Q3QK/dutrzbUNE35n+P5bK4xTZ2KtqpzI0oZUuThW
 2BgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o4s5mYhFtZl29VTDqSwCHcLENJRWZGEcESnpKK9TpyE=;
 b=ek14B/hjOxYA51Y30/mcLN6yzyhmrXL/C77moL88GCSamr2ywUdds1rDQJ8+JnAo0J
 qRvr+MZ7VddNMEj3Pg9KDu7rh7GhdOMRwtkRkXCyyT98c6pIZW2pzq1xT7xctCgPZ7Ag
 CvKyGojZfXCPEM0l/JAP6h4R1qy+IzyN3JIePH5i/VE5USGN4WjGVHbfn+FG1kZVwCkr
 wBjmj9Ja/8sIzn7bvbpP4xYLYL873t8Tc/NDM9VHqBZ+o3JWX0Ft+Dqm63TrxkIcavNq
 8ihObhFjnf55na9XGq+PB1T49K3CpD/QSdHrlZXZ0nJpgAqk253njFk8c2c7U8bANs1C
 G70Q==
X-Gm-Message-State: APjAAAVzrSmWjpH0UnKqbIp0tAp21gy7xF1dmUttDg6htFlZLQ83mS4D
 W6S1GTYYbQVUZGHa9lH/1Vg=
X-Google-Smtp-Source: APXvYqzAlpy7gYe9nIkhMAWD7UaqXx5H1UnY+8UcvvqFWqvBgfMOU5mP1w9Z79vNCNMuGs37+drGXg==
X-Received: by 2002:a1c:411:: with SMTP id 17mr74091953wme.74.1564060387102;
 Thu, 25 Jul 2019 06:13:07 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id
 z7sm47119735wrh.67.2019.07.25.06.13.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 06:13:06 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v2 4/5] ARM: davinci: support multiplatform build for ARM v5
Date: Thu, 25 Jul 2019 15:12:56 +0200
Message-Id: <20190725131257.6142-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725131257.6142-1-brgl@bgdev.pl>
References: <20190725131257.6142-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061308_553021_84F1063A 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Add modifications necessary to make davinci part of the ARM v5
multiplatform build.

Move the arch-specific configuration out of arch/arm/Kconfig and
into mach-davinci/Kconfig. Remove the sub-menu for DaVinci
implementations (they'll be visible directly under the system type.
Select all necessary options not already selected by ARCH_MULTI_V5.
Update davinci_all_defconfig. Explicitly include the mach-specific
headers in mach-davinci/Makefile.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/Kconfig                       | 21 ---------------------
 arch/arm/configs/davinci_all_defconfig |  5 +++++
 arch/arm/mach-davinci/Kconfig          | 17 +++++++++++++----
 arch/arm/mach-davinci/Makefile         |  2 ++
 4 files changed, 20 insertions(+), 25 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 33b00579beff..013d4eefdf32 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -578,27 +578,6 @@ config ARCH_S3C24XX
 	  (<http://www.simtec.co.uk/products/EB110ITX/>), the IPAQ 1940 or the
 	  Samsung SMDK2410 development board (and derivatives).
 
-config ARCH_DAVINCI
-	bool "TI DaVinci"
-	select ARCH_HAS_HOLES_MEMORYMODEL
-	select COMMON_CLK
-	select CPU_ARM926T
-	select GENERIC_ALLOCATOR
-	select GENERIC_CLOCKEVENTS
-	select GENERIC_IRQ_CHIP
-	select GENERIC_IRQ_MULTI_HANDLER
-	select GPIOLIB
-	select HAVE_IDE
-	select PM_GENERIC_DOMAINS if PM
-	select PM_GENERIC_DOMAINS_OF if PM && OF
-	select REGMAP_MMIO
-	select RESET_CONTROLLER
-	select SPARSE_IRQ
-	select USE_OF
-	select ZONE_DMA
-	help
-	  Support for TI's DaVinci platform.
-
 config ARCH_OMAP1
 	bool "TI OMAP1"
 	depends on MMU
diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index 9a32a8c0f873..b34970ce6b31 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -17,6 +17,9 @@ CONFIG_MODVERSIONS=y
 CONFIG_PARTITION_ADVANCED=y
 # CONFIG_IOSCHED_DEADLINE is not set
 # CONFIG_IOSCHED_CFQ is not set
+CONFIG_ARCH_MULTIPLATFORM=y
+CONFIG_ARCH_MULTI_V7=n
+CONFIG_ARCH_MULTI_V5=y
 CONFIG_ARCH_DAVINCI=y
 CONFIG_ARCH_DAVINCI_DM644x=y
 CONFIG_ARCH_DAVINCI_DM355=y
@@ -129,9 +132,11 @@ CONFIG_SPI=y
 CONFIG_SPI_DAVINCI=m
 CONFIG_PINCTRL_DA850_PUPD=m
 CONFIG_PINCTRL_SINGLE=y
+CONFIG_GPIOLIB=y
 CONFIG_GPIO_SYSFS=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_PCA953X_IRQ=y
+CONFIG_RESET_CONTROLLER=y
 CONFIG_POWER_RESET=y
 CONFIG_POWER_RESET_GPIO=y
 CONFIG_SYSCON_REBOOT_MODE=m
diff --git a/arch/arm/mach-davinci/Kconfig b/arch/arm/mach-davinci/Kconfig
index 5a59cebc7d0a..dd427bd2768c 100644
--- a/arch/arm/mach-davinci/Kconfig
+++ b/arch/arm/mach-davinci/Kconfig
@@ -1,11 +1,22 @@
 # SPDX-License-Identifier: GPL-2.0
+
+menuconfig ARCH_DAVINCI
+	bool "TI DaVinci"
+	depends on ARCH_MULTI_V5
+	select DAVINCI_TIMER
+	select ZONE_DMA
+	select ARCH_HAS_HOLES_MEMORYMODEL
+	select PM_GENERIC_DOMAINS if PM
+	select PM_GENERIC_DOMAINS_OF if PM && OF
+	select REGMAP_MMIO
+	select HAVE_IDE
+	select PINCTRL_SINGLE
+
 if ARCH_DAVINCI
 
 config ARCH_DAVINCI_DMx
 	bool
 
-menu "TI DaVinci Implementations"
-
 comment "DaVinci Core Type"
 
 config ARCH_DAVINCI_DM644x
@@ -225,6 +236,4 @@ config DAVINCI_MUX_WARNINGS
 	  to change the pin multiplexing setup. When there are no warnings
 	  printed, it's safe to deselect DAVINCI_MUX for your product.
 
-endmenu
-
 endif
diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
index f76a8482784f..a03d8443ef08 100644
--- a/arch/arm/mach-davinci/Makefile
+++ b/arch/arm/mach-davinci/Makefile
@@ -4,6 +4,8 @@
 #
 #
 
+ccflags-$(CONFIG_ARCH_MULTIPLATFORM) := -I$(srctree)/$(src)/include
+
 # Common objects
 obj-y 					:= time.o serial.o usb.o \
 					   common.o sram.o
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
