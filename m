Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2145097F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X8H+1ilXFfUj/a0YELKFOXT4YnUlbp7lMeBj+z1iAxo=; b=G5VCpXFhp/a+6F
	Y34Mjg0tx5KXu/DzI1vOOCeZbekYkjfIk4Ee3EEvNbEd4qnS46ut5tyfBHaLZ+swx9+E1oMbjJsOH
	A4bkJrgF7IjcbWj7H8XHjTTJstt8jJbyI4VymSmQCbA1DY60QBCbqcfgpOexb5AAz1xTdmMlT6vbN
	/na86de1YsHcW8WUI4BrB2ygdCUDsiDO4YJ42AHVrVqR0xC+eQudrwpXxR0Whw+gWWRvXeGQrJdco
	Rj39A6M6oSPG7eWQJqc0muRHczlVL24Vg3IZzlPIIjvoK72BOnl5tyjT7f3Zn64dxKbFLukHqyExG
	URmJO3sFYMiFQpOI4qRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMt0-0006hE-I8; Mon, 24 Jun 2019 11:11:46 +0000
Received: from smtp-sh.infomaniak.ch ([128.65.195.4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMss-0006gX-RE
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:11:41 +0000
Received: from smtp7.infomaniak.ch (smtp7.infomaniak.ch [83.166.132.30])
 by smtp-sh.infomaniak.ch (8.14.5/8.14.5) with ESMTP id x5OBBOG3020659
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 13:11:24 +0200
Received: from DESKTOP6U5EHUC (pub212004083018.dh-hfc.datazug.ch [212.4.83.18])
 (authenticated bits=0)
 by smtp7.infomaniak.ch (8.14.5/8.14.5) with ESMTP id x5OBBLX5075830
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 24 Jun 2019 13:11:21 +0200
From: <claudio@databyte.ch>
To: <linux-arm-kernel@lists.infradead.org>, <shawnguo@kernel.org>,
 <s.hauer@pengutronix.de>
Subject: [Patch] support for new board
Date: Mon, 24 Jun 2019 13:11:20 +0200
Message-ID: <004601d52a7d$8ee52c40$acaf84c0$@databyte.ch>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdUqfT7/jORqaw9LTXyMPuZgTF2Bng==
Content-Language: de-ch
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_041139_188490_9D05C1B3 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [128.65.195.4 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: festevam@gmail.com, linux-imx@nxp.com, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi there

I would like to add support for a new board. 
Below is the Patch. 

Thanks.

---------------------------------------

From 84ee8bc7b927ca9f88870a6a2f73906bb9492698 Mon Sep 17 00:00:00 2001
From: Claudio Hediger <claudio@databyte.ch>
Date: Mon, 24 Jun 2019 12:39:51 +0200
Subject: [PATCH] added eval1a board

---
 arch/arm/boot/dts/Makefile               |   4 +-
 arch/arm/boot/dts/imx6ull-dtb-eval1a.dts | 168 +++++++++++++++
 arch/arm/configs/eval1a_defconfig        | 259 +++++++++++++++++++++++
 3 files changed, 430 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
 create mode 100644 arch/arm/configs/eval1a_defconfig

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index dab2914fa293..5561881358ba 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -580,7 +580,9 @@ dtb-$(CONFIG_SOC_IMX6UL) += \
 	imx6ull-14x14-evk.dtb \
 	imx6ull-colibri-eval-v3.dtb \
 	imx6ull-colibri-wifi-eval-v3.dtb \
-	imx6ulz-14x14-evk.dtb
+	imx6ulz-14x14-evk.dtb \
+        imx6ull-dtb-eval1a.dtb
+	
 dtb-$(CONFIG_SOC_IMX7D) += \
 	imx7d-cl-som-imx7.dtb \
 	imx7d-colibri-emmc-eval-v3.dtb \
diff --git a/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
b/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
new file mode 100644
index 000000000000..e549ef90816f
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-dtb-eval1a.dts
@@ -0,0 +1,168 @@
+/*
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ */
+
+/dts-v1/;
+
+#include "imx6ull.dtsi"
+
+/ {
+	model = "Databyte imx6 Evalboard 1A";
+	compatible = "databyte,eval1a", "fsl,imx6ull";
+
+	chosen {
+		stdout-path = &uart1;
+	};
+
+	memory {
+		reg = <0x80000000 0x20000000>;
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_can_3v3: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <0>;
+			regulator-name = "can-3v3";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+		};
+
+
+	};
+
+};
+
+&cpu0 {
+	arm-supply = <&reg_arm>;
+	soc-supply = <&reg_soc>;
+	/*dc-supply = <&reg_gpio_dvfs>;*/
+};
+
+&clks {
+	assigned-clocks = <&clks IMX6UL_CLK_PLL4_AUDIO_DIV>;
+	assigned-clock-rates = <786432000>;
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_enet1>;
+	phy-mode = "rmii";
+	phy-handle = <&ethphy0>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@2 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <2>;
+		};
+	};
+};
+
+
+
+&iomuxc {
+	pinctrl-names = "default";
+	//pinctrl-0 = <&pinctrl_hog_1>;
+	eval1a {
+
+		pinctrl_enet1: enet1grp {
+			fsl,pins = <
+				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN
0x1b0b0
+				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER
0x1b0b0
+				MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00
0x1b0b0
+				MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01
0x1b0b0
+				MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN
0x1b0b0
+				MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00
0x1b0b0
+				MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01
0x1b0b0
+				MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1
0x4001b031
+				MX6UL_PAD_GPIO1_IO07__ENET1_MDC
0x1b0b0
+				MX6UL_PAD_GPIO1_IO06__ENET1_MDIO
0x1b0b0
+			>;
+		};
+		
+		pinctrl_uart1: uart1grp {
+			fsl,pins = <
+				MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX
0x1b0b1
+				MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX
0x1b0b1
+			>;
+		};
+
+		pinctrl_uart2: uart2grp {
+			fsl,pins = <
+				MX6UL_PAD_UART2_TX_DATA__UART2_DCE_TX
0x1b0b1
+				MX6UL_PAD_UART2_RX_DATA__UART2_DCE_RX
0x1b0b1
+				MX6UL_PAD_UART3_RX_DATA__UART2_DCE_RTS
0x1b0b1
+				MX6UL_PAD_UART3_TX_DATA__UART2_DCE_CTS
0x1b0b1
+			>;
+		};
+
+		pinctrl_uart2dte: uart2dtegrp {
+			fsl,pins = <
+				MX6UL_PAD_UART2_TX_DATA__UART2_DTE_RX
0x1b0b1
+				MX6UL_PAD_UART2_RX_DATA__UART2_DTE_TX
0x1b0b1
+				MX6UL_PAD_UART3_RX_DATA__UART2_DTE_CTS
0x1b0b1
+				MX6UL_PAD_UART3_TX_DATA__UART2_DTE_RTS
0x1b0b1
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				MX6UL_PAD_SD1_CMD__USDHC1_CMD     0x17059
+				MX6UL_PAD_SD1_CLK__USDHC1_CLK     0x10071
+				MX6UL_PAD_SD1_DATA0__USDHC1_DATA0 0x17059
+				MX6UL_PAD_SD1_DATA1__USDHC1_DATA1 0x17059
+				MX6UL_PAD_SD1_DATA2__USDHC1_DATA2 0x17059
+				MX6UL_PAD_SD1_DATA3__USDHC1_DATA3 0x17059
+			>;
+		};
+
+		pinctrl_wdog: wdoggrp {
+			fsl,pins = <
+				MX6UL_PAD_LCD_RESET__WDOG1_WDOG_ANY
0x30b0
+			>;
+		};
+	};
+};
+
+
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart1>;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart2>;
+	fsl,uart-has-rtscts;
+	/* for DTE mode, add below change */
+	/* fsl,dte-mode; */
+	/* pinctrl-0 = <&pinctrl_uart2dte>; */
+	status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	//cd-gpios = <&gpio1 19 GPIO_ACTIVE_LOW>;
+	keep-power-in-suspend;
+	enable-sdio-wakeup;
+	status = "okay";
+};
+
+&wdog1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_wdog>;
+	fsl,wdog_b;
+};
diff --git a/arch/arm/configs/eval1a_defconfig
b/arch/arm/configs/eval1a_defconfig
new file mode 100644
index 000000000000..2ce2aa870515
--- /dev/null
+++ b/arch/arm/configs/eval1a_defconfig
@@ -0,0 +1,259 @@
+CONFIG_KERNEL_LZO=y
+CONFIG_SYSVIPC=y
+CONFIG_NO_HZ=y
+CONFIG_HIGH_RES_TIMERS=y
+CONFIG_PREEMPT_VOLUNTARY=y
+CONFIG_IKCONFIG=y
+CONFIG_IKCONFIG_PROC=y
+CONFIG_LOG_BUF_SHIFT=18
+CONFIG_CGROUPS=y
+CONFIG_RELAY=y
+CONFIG_BLK_DEV_INITRD=y
+CONFIG_EXPERT=y
+CONFIG_PERF_EVENTS=y
+# CONFIG_SLUB_DEBUG is not set
+# CONFIG_COMPAT_BRK is not set
+CONFIG_ARCH_MULTI_V6=y
+CONFIG_ARCH_MXC=y
+
+
+CONFIG_SOC_IMX6UL=y
+CONFIG_DEBUG_LL=y
+CONFIG_DEBUG_LL_INCLUDE="mach/imx.S"
+CONFIG_DEBUG_IMX6UL_UART=y
+CONFIG_DEBUG_IMX_UART_PORT=1
+CONFIG_DEBUG_UNCOMPRESS=y
+CONFIG_EARLY_PRINTK=y
+
+CONFIG_HIGHMEM=y
+CONFIG_FORCE_MAX_ZONEORDER=14
+CONFIG_CMDLINE="noinitrd console=ttymxc0,115200"
+CONFIG_KEXEC=y
+CONFIG_CPU_FREQ=y
+CONFIG_CPU_FREQ_STAT=y
+CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
+CONFIG_CPU_FREQ_GOV_POWERSAVE=y
+CONFIG_CPU_FREQ_GOV_USERSPACE=y
+CONFIG_CPU_FREQ_GOV_CONSERVATIVE=y
+CONFIG_CPUFREQ_DT=y
+
+CONFIG_CPU_IDLE=y
+CONFIG_ARM_CPUIDLE=y
+CONFIG_VFP=y
+CONFIG_NEON=y
+CONFIG_PM_DEBUG=y
+CONFIG_PM_TEST_SUSPEND=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_MODVERSIONS=y
+CONFIG_MODULE_SRCVERSION_ALL=y
+# CONFIG_BLK_DEV_BSG is not set
+CONFIG_BINFMT_MISC=m
+CONFIG_NET=y
+CONFIG_PACKET=y
+CONFIG_UNIX=y
+CONFIG_INET=y
+CONFIG_IP_PNP=y
+CONFIG_IP_PNP_DHCP=y
+
+CONFIG_NETFILTER=y
+
+CONFIG_CFG80211=y
+CONFIG_CFG80211_WEXT=y
+CONFIG_MAC80211=y
+CONFIG_RFKILL=y
+CONFIG_RFKILL_INPUT=y
+CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
+# CONFIG_STANDALONE is not set
+CONFIG_FW_LOADER_USER_HELPER=y
+CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
+CONFIG_CMA_SIZE_MBYTES=64
+CONFIG_IMX_WEIM=y
+CONFIG_CONNECTOR=y
+CONFIG_MTD=y
+CONFIG_MTD_CMDLINE_PARTS=y
+CONFIG_MTD_BLOCK=y
+CONFIG_MTD_CFI=y
+CONFIG_MTD_JEDECPROBE=y
+CONFIG_MTD_CFI_INTELEXT=y
+CONFIG_MTD_CFI_AMDSTD=y
+CONFIG_MTD_CFI_STAA=y
+CONFIG_MTD_PHYSMAP_OF=y
+CONFIG_MTD_DATAFLASH=y
+CONFIG_MTD_M25P80=y
+CONFIG_MTD_SST25L=y
+CONFIG_MTD_RAW_NAND=y
+CONFIG_MTD_NAND_GPMI_NAND=y
+CONFIG_MTD_NAND_VF610_NFC=y
+CONFIG_MTD_NAND_MXC=y
+CONFIG_MTD_SPI_NOR=y
+CONFIG_SPI_FSL_QUADSPI=y
+CONFIG_MTD_UBI=y
+CONFIG_MTD_UBI_FASTMAP=y
+CONFIG_MTD_UBI_BLOCK=y
+CONFIG_BLK_DEV_LOOP=y
+CONFIG_BLK_DEV_RAM=y
+CONFIG_BLK_DEV_RAM_SIZE=65536
+CONFIG_EEPROM_AT24=y
+CONFIG_EEPROM_AT25=y
+# CONFIG_SCSI_PROC_FS is not set
+CONFIG_BLK_DEV_SD=y
+CONFIG_SCSI_CONSTANTS=y
+CONFIG_SCSI_LOGGING=y
+CONFIG_SCSI_SCAN_ASYNC=y
+# CONFIG_SCSI_LOWLEVEL is not set
+
+CONFIG_NETDEVICES=y
+# CONFIG_NET_VENDOR_BROADCOM is not set
+
+# CONFIG_NET_VENDOR_FARADAY is not set
+# CONFIG_NET_VENDOR_INTEL is not set
+# CONFIG_NET_VENDOR_MARVELL is not set
+# CONFIG_NET_VENDOR_MICREL is not set
+# CONFIG_NET_VENDOR_MICROCHIP is not set
+# CONFIG_NET_VENDOR_NATSEMI is not set
+# CONFIG_NET_VENDOR_SEEQ is not set
+
+# CONFIG_NET_VENDOR_STMICRO is not set
+
+CONFIG_MICREL_PHY=y
+
+# CONFIG_WILINK_PLATFORM_DATA is not set
+CONFIG_INPUT_EVDEV=y
+CONFIG_INPUT_EVBUG=m
+CONFIG_KEYBOARD_GPIO=y
+CONFIG_KEYBOARD_SNVS_PWRKEY=y
+CONFIG_KEYBOARD_IMX=y
+
+CONFIG_INPUT_MISC=y
+
+CONFIG_SERIO_SERPORT=m
+# CONFIG_LEGACY_PTYS is not set
+CONFIG_SERIAL_IMX=y
+CONFIG_SERIAL_IMX_CONSOLE=y
+CONFIG_SERIAL_FSL_LPUART=y
+CONFIG_SERIAL_FSL_LPUART_CONSOLE=y
+CONFIG_SERIAL_DEV_BUS=y
+# CONFIG_I2C_COMPAT is not set
+
+# CONFIG_I2C_HELPER_AUTO is not set
+
+CONFIG_SPI=y
+CONFIG_SPI_GPIO=y
+CONFIG_SPI_IMX=y
+CONFIG_SPI_FSL_DSPI=y
+CONFIG_GPIO_SYSFS=y
+
+CONFIG_GPIO_STMPE=y
+
+CONFIG_POWER_RESET=y
+CONFIG_POWER_RESET_SYSCON=y
+CONFIG_POWER_RESET_SYSCON_POWEROFF=y
+CONFIG_POWER_SUPPLY=y
+
+CONFIG_CPU_THERMAL=y
+CONFIG_IMX_THERMAL=y
+CONFIG_WATCHDOG=y
+
+CONFIG_IMX2_WDT=y
+
+CONFIG_REGULATOR=y
+CONFIG_REGULATOR_FIXED_VOLTAGE=y
+CONFIG_REGULATOR_ANATOP=y
+
+CONFIG_REGULATOR_GPIO=y
+
+CONFIG_RC_CORE=y
+CONFIG_RC_DEVICES=y
+
+CONFIG_MEDIA_SUPPORT=y
+
+CONFIG_MEDIA_CONTROLLER=y
+
+# CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set
+
+CONFIG_LOGO=y
+
+CONFIG_MMC=y
+CONFIG_MMC_SDHCI=y
+CONFIG_MMC_SDHCI_PLTFM=y
+CONFIG_MMC_SDHCI_ESDHC_IMX=y
+CONFIG_NEW_LEDS=y
+CONFIG_LEDS_CLASS=y
+CONFIG_LEDS_GPIO=y
+CONFIG_LEDS_PWM=y
+CONFIG_LEDS_TRIGGERS=y
+CONFIG_LEDS_TRIGGER_TIMER=y
+CONFIG_LEDS_TRIGGER_ONESHOT=y
+CONFIG_LEDS_TRIGGER_HEARTBEAT=y
+CONFIG_LEDS_TRIGGER_BACKLIGHT=y
+CONFIG_LEDS_TRIGGER_GPIO=y
+CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
+CONFIG_RTC_CLASS=y
+CONFIG_RTC_INTF_DEV_UIE_EMUL=y
+
+CONFIG_DMADEVICES=y
+CONFIG_FSL_EDMA=y
+CONFIG_IMX_SDMA=y
+CONFIG_MXS_DMA=y
+CONFIG_DMATEST=m
+CONFIG_STAGING=y
+CONFIG_STAGING_MEDIA=y
+
+CONFIG_COMMON_CLK_PWM=y
+CONFIG_IIO=y
+
+CONFIG_PWM=y
+CONFIG_PWM_FSL_FTM=y
+CONFIG_PWM_IMX27=y
+
+CONFIG_MUX_MMIO=y
+CONFIG_EXT2_FS=y
+CONFIG_EXT2_FS_XATTR=y
+CONFIG_EXT2_FS_POSIX_ACL=y
+CONFIG_EXT2_FS_SECURITY=y
+CONFIG_EXT3_FS=y
+CONFIG_EXT3_FS_POSIX_ACL=y
+CONFIG_EXT3_FS_SECURITY=y
+CONFIG_QUOTA=y
+CONFIG_QUOTA_NETLINK_INTERFACE=y
+# CONFIG_PRINT_QUOTA_WARNING is not set
+CONFIG_AUTOFS4_FS=y
+CONFIG_FUSE_FS=y
+CONFIG_ISO9660_FS=m
+CONFIG_JOLIET=y
+CONFIG_ZISOFS=y
+CONFIG_UDF_FS=m
+CONFIG_MSDOS_FS=m
+CONFIG_VFAT_FS=y
+CONFIG_TMPFS_POSIX_ACL=y
+CONFIG_JFFS2_FS=y
+CONFIG_UBIFS_FS=y
+CONFIG_NFS_FS=y
+CONFIG_NFS_V3_ACL=y
+CONFIG_NFS_V4=y
+CONFIG_ROOT_NFS=y
+CONFIG_NLS_DEFAULT="cp437"
+CONFIG_NLS_CODEPAGE_437=y
+CONFIG_NLS_ASCII=y
+CONFIG_NLS_ISO8859_1=y
+CONFIG_NLS_ISO8859_15=m
+CONFIG_NLS_UTF8=y
+CONFIG_SECURITYFS=y
+CONFIG_CRYPTO_DEV_FSL_CAAM=y
+CONFIG_CRYPTO_DEV_SAHARA=y
+CONFIG_CRYPTO_DEV_MXS_DCP=y
+CONFIG_CRC_CCITT=m
+CONFIG_CRC_T10DIF=y
+CONFIG_CRC7=m
+CONFIG_LIBCRC32C=m
+CONFIG_FONTS=y
+CONFIG_FONT_8x8=y
+CONFIG_FONT_8x16=y
+CONFIG_PRINTK_TIME=y
+CONFIG_MAGIC_SYSRQ=y
+# CONFIG_SCHED_DEBUG is not set
+CONFIG_PROVE_LOCKING=y
+# CONFIG_DEBUG_BUGVERBOSE is not set
+# CONFIG_FTRACE is not set
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
