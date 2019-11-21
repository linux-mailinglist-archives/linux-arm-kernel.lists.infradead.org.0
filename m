Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B27710492D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 04:21:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LIbYfaM3YQ0qCVxK9VGQebCap2kIKAq9a4M7zLFdKNU=; b=UBa
	sI69MPNylrYIxAeSC78dKeerLtsmR6wDrYraVU6E9K3szjWSHGmvHR1ciwR5+x0b/tT2kiq+4xp4g
	9LOCy0mu74bMVIGSIFlIR3wCHyUsrXd1Qmbmc+EVFiwr/HibPDD7whNDOZBDQ34wJn2hGrycHJfCa
	jDTFSL5XvPDwF255hNL6waNo9Obiopd6x1wlW1CiIO5p6h+8B/+/W3BIrFK7ymJUkiZEvSiivxlvS
	TeIi5FBclJrGMY0uGqZvH2C7vWskZKWGx9tSq6ooT3jzAbnAihEhBCQxwv/IdPz4PfGuGVdts1ZyC
	Ki9eYT8teivai1Ba53uiAQ2EUt4j9uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXd1s-00051p-J8; Thu, 21 Nov 2019 03:21:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXd1E-0004hk-HR
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 03:20:34 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02BFE208CE;
 Thu, 21 Nov 2019 03:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574306431;
 bh=ftRET4RNb6kAqNE39N3HuUbJnQ5P1/hxqDOIlBh9dmI=;
 h=From:To:Cc:Subject:Date:From;
 b=SlLX/4ELrvuP5iZEtDHk8IunpjiQ7KaWkPHIAiGlmcgRm3XzTIeLmBT3AteDQc1rH
 g1IBW2vDXTp7qot0Z3gTBdgYx+8f4/3TO88w5cNUQ6XjAG1ioTDBoeoAXCOw6RjY/F
 DjMxLO1RAzu2M5LRxUAUKZ7iSQpDMJrq+1n9+tSk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] ARM: Fix Kconfig indentation
Date: Thu, 21 Nov 2019 04:20:25 +0100
Message-Id: <1574306426-25221-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_192032_714001_00198ED4 
X-CRM114-Status: GOOD (  21.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Barry Song <baohua@kernel.org>, linux-omap@vger.kernel.org,
 Lubomir Rintel <lkundrak@v3.sk>, Tony Lindgren <tony@atomide.com>,
 Linus Walleij <linusw@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Hartley Sweeten <hsweeten@visionengravers.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Halasa <khalasa@piap.pl>, linux-samsung-soc@vger.kernel.org,
 Imre Kaloz <kaloz@openwrt.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Alexander Sverdlin <alexander.sverdlin@gmail.com> # for EP93xx

---

Changes since v1:
1. Fix also 7-space and tab+1 space indentation issues.
---
 arch/arm/Kconfig              | 14 +++++++-------
 arch/arm/Kconfig-nommu        | 18 +++++++++---------
 arch/arm/Kconfig.debug        |  4 ++--
 arch/arm/mach-ep93xx/Kconfig  |  8 ++++----
 arch/arm/mach-ixp4xx/Kconfig  | 16 ++++++++--------
 arch/arm/mach-mmp/Kconfig     |  2 +-
 arch/arm/mach-omap1/Kconfig   | 14 +++++++-------
 arch/arm/mach-omap2/Kconfig   | 12 ++++++------
 arch/arm/mach-prima2/Kconfig  |  6 +++---
 arch/arm/mach-s3c24xx/Kconfig | 10 +++++-----
 arch/arm/mach-s3c64xx/Kconfig |  8 ++++----
 arch/arm/plat-samsung/Kconfig |  8 ++++----
 12 files changed, 60 insertions(+), 60 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9771b56e79f1..4b3f8bca96cf 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -1015,9 +1015,9 @@ config ARM_ERRATA_764369
 	  in the diagnostic control register of the SCU.
 
 config ARM_ERRATA_775420
-       bool "ARM errata: A data cache maintenance operation which aborts, might lead to deadlock"
-       depends on CPU_V7
-       help
+	bool "ARM errata: A data cache maintenance operation which aborts, might lead to deadlock"
+	depends on CPU_V7
+	help
 	 This option enables the workaround for the 775420 Cortex-A9 (r2p2,
 	 r2p6,r2p8,r2p10,r3p0) erratum. In case a data cache maintenance
 	 operation aborts with MMU exception, it might cause the processor
@@ -1573,12 +1573,12 @@ config HW_PERF_EVENTS
 	depends on ARM_PMU
 
 config SYS_SUPPORTS_HUGETLBFS
-       def_bool y
-       depends on ARM_LPAE
+	def_bool y
+	depends on ARM_LPAE
 
 config HAVE_ARCH_TRANSPARENT_HUGEPAGE
-       def_bool y
-       depends on ARM_LPAE
+	def_bool y
+	depends on ARM_LPAE
 
 config ARCH_WANT_GENERAL_HUGETLB
 	def_bool y
diff --git a/arch/arm/Kconfig-nommu b/arch/arm/Kconfig-nommu
index 36c80d3dd93f..3eae40d7b51b 100644
--- a/arch/arm/Kconfig-nommu
+++ b/arch/arm/Kconfig-nommu
@@ -54,13 +54,13 @@ config REMAP_VECTORS_TO_RAM
 	  the writable versions located at DRAM_BASE.
 
 config ARM_MPU
-       bool 'Use the ARM v7 PMSA Compliant MPU'
-       depends on CPU_V7 || CPU_V7M
-       default y if CPU_V7
-       help
-         Some ARM systems without an MMU have instead a Memory Protection
-         Unit (MPU) that defines the type and permissions for regions of
-         memory.
+	bool 'Use the ARM v7 PMSA Compliant MPU'
+	depends on CPU_V7 || CPU_V7M
+	default y if CPU_V7
+	help
+	 Some ARM systems without an MMU have instead a Memory Protection
+	 Unit (MPU) that defines the type and permissions for regions of
+	 memory.
 
-         If your CPU has an MPU then you should choose 'y' here unless you
-         know that you do not want to use the MPU.
+	 If your CPU has an MPU then you should choose 'y' here unless you
+	 know that you do not want to use the MPU.
diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index 8bcbd0cd739b..0e5d52fbddbd 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -274,7 +274,7 @@ choice
 		select DEBUG_UART_8250
 		help
 		  Say Y here if you want the debug print routines to direct
-                  their output to the CNS3xxx UART0.
+	          their output to the CNS3xxx UART0.
 
 	config DEBUG_DAVINCI_DA8XX_UART1
 		bool "Kernel low-level debugging on DaVinci DA8XX using UART1"
@@ -828,7 +828,7 @@ choice
 		select DEBUG_UART_8250
 		help
 		  Say Y here if you want kernel low-level debugging support
-                  on Rockchip RV1108 based platforms.
+	          on Rockchip RV1108 based platforms.
 
 	config DEBUG_RV1108_UART1
 		bool "Kernel low-level debugging messages via Rockchip RV1108 UART1"
diff --git a/arch/arm/mach-ep93xx/Kconfig b/arch/arm/mach-ep93xx/Kconfig
index f2db5fd38145..bf81dfab7f1b 100644
--- a/arch/arm/mach-ep93xx/Kconfig
+++ b/arch/arm/mach-ep93xx/Kconfig
@@ -126,10 +126,10 @@ config MACH_MICRO9S
 	  Contec Micro9-Slim board.
 
 config MACH_SIM_ONE
-        bool "Support Simplemachines Sim.One board"
-        help
-          Say 'Y' here if you want your kernel to support the
-          Simplemachines Sim.One board.
+	bool "Support Simplemachines Sim.One board"
+	help
+	  Say 'Y' here if you want your kernel to support the
+	  Simplemachines Sim.One board.
 
 config MACH_SNAPPER_CL15
 	bool "Support Bluewater Systems Snapper CL15 Module"
diff --git a/arch/arm/mach-ixp4xx/Kconfig b/arch/arm/mach-ixp4xx/Kconfig
index f7211b57b1e7..484e8eb16baa 100644
--- a/arch/arm/mach-ixp4xx/Kconfig
+++ b/arch/arm/mach-ixp4xx/Kconfig
@@ -214,14 +214,14 @@ config IXP4XX_INDIRECT_PCI
 	bool "Use indirect PCI memory access"
 	depends on PCI
 	help
-          IXP4xx provides two methods of accessing PCI memory space:
-
-          1) A direct mapped window from 0x48000000 to 0x4BFFFFFF (64MB).
-             To access PCI via this space, we simply ioremap() the BAR
-             into the kernel and we can use the standard read[bwl]/write[bwl]
-             macros. This is the preferred method due to speed but it
-             limits the system to just 64MB of PCI memory. This can be
-             problematic if using video cards and other memory-heavy devices.
+	  IXP4xx provides two methods of accessing PCI memory space:
+
+	  1) A direct mapped window from 0x48000000 to 0x4BFFFFFF (64MB).
+	     To access PCI via this space, we simply ioremap() the BAR
+	     into the kernel and we can use the standard read[bwl]/write[bwl]
+	     macros. This is the preferred method due to speed but it
+	     limits the system to just 64MB of PCI memory. This can be
+	     problematic if using video cards and other memory-heavy devices.
 
 	  2) If > 64MB of memory space is required, the IXP4xx can be
 	     configured to use indirect registers to access the whole PCI
diff --git a/arch/arm/mach-mmp/Kconfig b/arch/arm/mach-mmp/Kconfig
index b58a03b18bde..1192aaaf5e90 100644
--- a/arch/arm/mach-mmp/Kconfig
+++ b/arch/arm/mach-mmp/Kconfig
@@ -168,7 +168,7 @@ config CPU_MMP2
 	  Select code specific to MMP2. MMP2 is ARMv7 compatible.
 
 config USB_EHCI_MV_U2O
-        bool "EHCI support for PXA USB OTG controller"
+	bool "EHCI support for PXA USB OTG controller"
 	depends on USB_EHCI_MV
 	help
 	  Enables support for OTG controller which can be switched to host mode.
diff --git a/arch/arm/mach-omap1/Kconfig b/arch/arm/mach-omap1/Kconfig
index 948da556162e..d169efee7402 100644
--- a/arch/arm/mach-omap1/Kconfig
+++ b/arch/arm/mach-omap1/Kconfig
@@ -59,8 +59,8 @@ config MACH_OMAP_INNOVATOR
 	bool "TI Innovator"
 	depends on ARCH_OMAP15XX || ARCH_OMAP16XX
 	help
-          TI OMAP 1510 or 1610 Innovator board support. Say Y here if you
-          have such a board.
+	  TI OMAP 1510 or 1610 Innovator board support. Say Y here if you
+	  have such a board.
 
 config MACH_OMAP_H2
 	bool "TI H2 Support"
@@ -87,7 +87,7 @@ config MACH_OMAP_OSK
 	depends on ARCH_OMAP16XX
     	help
 	  TI OMAP 5912 OSK (OMAP Starter Kit) board support. Say Y here
-          if you have such a board.
+	  if you have such a board.
 
 config OMAP_OSK_MISTRAL
 	bool "Mistral QVGA board Support"
@@ -173,10 +173,10 @@ config MACH_OMAP_GENERIC
 	bool "Generic OMAP board"
 	depends on ARCH_OMAP15XX || ARCH_OMAP16XX
 	help
-          Support for generic OMAP-1510, 1610 or 1710 board with
-          no FPGA. Can be used as template for porting Linux to
-          custom OMAP boards. Say Y here if you have a custom
-          board.
+	  Support for generic OMAP-1510, 1610 or 1710 board with
+	  no FPGA. Can be used as template for porting Linux to
+	  custom OMAP boards. Say Y here if you have a custom
+	  board.
 
 endmenu
 
diff --git a/arch/arm/mach-omap2/Kconfig b/arch/arm/mach-omap2/Kconfig
index ad08d470a2ca..8a218c2b71e1 100644
--- a/arch/arm/mach-omap2/Kconfig
+++ b/arch/arm/mach-omap2/Kconfig
@@ -176,16 +176,16 @@ config SOC_TI81XX
 	default y
 
 config OMAP_PACKAGE_CBC
-       bool
+	bool
 
 config OMAP_PACKAGE_CBB
-       bool
+	bool
 
 config OMAP_PACKAGE_CUS
-       bool
+	bool
 
 config OMAP_PACKAGE_CBP
-       bool
+	bool
 
 comment "OMAP Legacy Platform Data Board Type"
 	depends on ARCH_OMAP2PLUS
@@ -210,10 +210,10 @@ config MACH_OMAP3_PANDORA
 	select OMAP_PACKAGE_CBB
 
 config MACH_NOKIA_N810
-       bool
+	bool
 
 config MACH_NOKIA_N810_WIMAX
-       bool
+	bool
 
 config MACH_NOKIA_N8X0
 	bool "Nokia N800/N810"
diff --git a/arch/arm/mach-prima2/Kconfig b/arch/arm/mach-prima2/Kconfig
index 6f66785fab01..88a76d265fd9 100644
--- a/arch/arm/mach-prima2/Kconfig
+++ b/arch/arm/mach-prima2/Kconfig
@@ -22,7 +22,7 @@ config ARCH_ATLAS6
 	default y
 	select SIRF_IRQ
 	help
-          Support for CSR SiRFSoC ARM Cortex A9 Platform
+	  Support for CSR SiRFSoC ARM Cortex A9 Platform
 
 config ARCH_ATLAS7
 	bool "CSR SiRFSoC ATLAS7 ARM Cortex A7 Platform"
@@ -32,7 +32,7 @@ config ARCH_ATLAS7
 	select HAVE_ARM_SCU if SMP
 	select HAVE_SMP
 	help
-          Support for CSR SiRFSoC ARM Cortex A7 Platform
+	  Support for CSR SiRFSoC ARM Cortex A7 Platform
 
 config ARCH_PRIMA2
 	bool "CSR SiRFSoC PRIMA2 ARM Cortex A9 Platform"
@@ -41,7 +41,7 @@ config ARCH_PRIMA2
 	select ZONE_DMA
 	select PRIMA2_TIMER
 	help
-          Support for CSR SiRFSoC ARM Cortex A9 Platform
+	  Support for CSR SiRFSoC ARM Cortex A9 Platform
 
 config SIRF_IRQ
 	bool
diff --git a/arch/arm/mach-s3c24xx/Kconfig b/arch/arm/mach-s3c24xx/Kconfig
index 686f0bbde998..0e25471ca47c 100644
--- a/arch/arm/mach-s3c24xx/Kconfig
+++ b/arch/arm/mach-s3c24xx/Kconfig
@@ -138,11 +138,11 @@ config S3C2410_IOTIMING
 	  and s3c2440/s3c2442 cpu frequency support.
 
 config S3C2410_CPUFREQ_UTILS
-       bool
-       depends on ARM_S3C24XX_CPUFREQ
-       help
-         Internal node to select timing code that is common to the s3c2410
-         and s3c2440/s3c244 cpu frequency support.
+	bool
+	depends on ARM_S3C24XX_CPUFREQ
+	help
+	 Internal node to select timing code that is common to the s3c2410
+	 and s3c2440/s3c244 cpu frequency support.
 
 # cpu frequency support common to s3c2412, s3c2413 and s3c2442
 
diff --git a/arch/arm/mach-s3c64xx/Kconfig b/arch/arm/mach-s3c64xx/Kconfig
index 5700822e3c74..385c5cbe74d2 100644
--- a/arch/arm/mach-s3c64xx/Kconfig
+++ b/arch/arm/mach-s3c64xx/Kconfig
@@ -110,7 +110,7 @@ config S3C64XX_SETUP_USB_PHY
 # S36400 Macchine support
 
 config MACH_SMDK6400
-       bool "SMDK6400"
+	bool "SMDK6400"
 	depends on ATAGS
 	select CPU_S3C6400
 	select S3C64XX_SETUP_SDHCI
@@ -202,7 +202,7 @@ config SMDK6410_SD_CH0
 	bool "Use channel 0 only"
 	depends on MACH_SMDK6410
 	help
-          Select CON7 (channel 0) as the MMC/SD slot, as
+	  Select CON7 (channel 0) as the MMC/SD slot, as
 	  at least some SMDK6410 boards come with the
 	  resistors fitted so that the card detects for
 	  channels 0 and 1 are the same.
@@ -211,7 +211,7 @@ config SMDK6410_SD_CH1
 	bool "Use channel 1 only"
 	depends on MACH_SMDK6410
 	help
-          Select CON6 (channel 1) as the MMC/SD slot, as
+	  Select CON6 (channel 1) as the MMC/SD slot, as
 	  at least some SMDK6410 boards come with the
 	  resistors fitted so that the card detects for
 	  channels 0 and 1 are the same.
@@ -257,7 +257,7 @@ config MACH_NCP
 	select S3C_DEV_HSMMC1
 	select S3C_DEV_I2C1
 	help
-          Machine support for the Samsung NCP
+	  Machine support for the Samsung NCP
 
 config MACH_HMT
 	bool "Airgoo HMT"
diff --git a/arch/arm/plat-samsung/Kconfig b/arch/arm/plat-samsung/Kconfig
index 301e572651c0..76bbe0273242 100644
--- a/arch/arm/plat-samsung/Kconfig
+++ b/arch/arm/plat-samsung/Kconfig
@@ -247,10 +247,10 @@ config SAMSUNG_PM_DEBUG
 	  for more information.
 
 config S3C_PM_DEBUG_LED_SMDK
-       bool "SMDK LED suspend/resume debugging"
-       depends on PM && (MACH_SMDK6410)
-       help
-         Say Y here to enable the use of the SMDK LEDs on the baseboard
+	bool "SMDK LED suspend/resume debugging"
+	depends on PM && (MACH_SMDK6410)
+	help
+	 Say Y here to enable the use of the SMDK LEDs on the baseboard
 	 for debugging of the state of the suspend and resume process.
 
 	 Note, this currently only works for S3C64XX based SMDK boards.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
