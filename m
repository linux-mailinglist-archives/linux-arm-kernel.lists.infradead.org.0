Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD63114889
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 22:15:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sydqbBbHQckI8x+X7QM4S/k0MMC9LTxVe6n0HJFGipg=; b=NCd+1awYSRntFw
	FTmYHVjNOWmZAPX5Eln/kRLXwpO83QCHg/6AVhdmIZ5ATDzyvtDbYJ4mI/oeE2zjPnbXRotmz/iVX
	X6n0/QuVfyrxH+vLT7IRkYQKi2Oi5x6a3jpRrgN2neqIf//UO2/3P1FWdInYEG2idk7MTlahcrA82
	ArZP88qG0Na1+OKsksx57KRJyrtcLee7AlHc8gM6iLtmaTd+HwRKK0PacRcbNcOevT3PDs4QMxpZj
	tP+6DGqyOTLcCWaZbD4t1QmDqdwI1CEgXWVTtPCK23ATeFw7J3eI/Cb5ucxd28Y6177InJ4yxRItH
	1+XNOhysTBggg7D01CFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icySx-0004FV-1S; Thu, 05 Dec 2019 21:15:15 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icySY-00047M-2Z
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 21:14:51 +0000
Received: by mail-pj1-x1043.google.com with SMTP id w23so1795191pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 13:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=COd/jHkGDPyZF9eZ8Qs8H7TQVa4EowjnDpmG+yiYqQ4=;
 b=0VXp8NuLGWsfx6kflzbvCaRW5+nwsqwvIzjksb0AuMQsUtcvS6PElrYd5QYWMMt4N5
 WacwX95BiITAF3ZJJ5nWfDqM3gXsmeoKvSuNGgCjvDpVy3JU1rNoZ7sww5PWc+hAicrp
 lHzMJ9kwe3ma2RlsN8vzJK81ESuVh16l9SY/tCjZT5i2dMeLVGOPwnW214rSaQlvkRfC
 NOX47eLjNjTC+ZPriBBiqUxCc5GBkE9CQ6LsmYCU1O2oA2oDvCsav8EBvroxP6e3ANzH
 alNkWF3mmW3/ChQ+ls8ZBLpPkbB0RvUI6dx0vErpr8ESp5Wgnqd9jq9/BQHRj05xBdLR
 YRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=COd/jHkGDPyZF9eZ8Qs8H7TQVa4EowjnDpmG+yiYqQ4=;
 b=JmAknajoORLP2vgWejP66aMHDadiL+OUZmMMLKQadF5FQDEEJk8xx2wI3Km8IpHvuP
 nWLNcx21JoitaiK23J/UnaBLYAsytAl5uNPzqwyX4jiJuFEMUZHlnAGxBTxrGp1ER7mF
 fGnndqRPA7BVZ6EN+Gggci96ryUlwDtt2veI6zOIebfzQRWSCxFRJ7WGVpN5tnOgwUkw
 HDS7WmXC9OTqZ85qL2EOZdw5jyotAORn9lcGlu7tzB8trAXFk4C5LhtaZp0E3KKzUPYh
 8LyOh9mw9QxjEM4FrlkdWX+w9YHlnaTdI7dKD31Z8o2QaZQdbMY2jPI+D7Ij1G9yWPVx
 MPHg==
X-Gm-Message-State: APjAAAWm+XlMlqTcY6wg3BkGn6+DyEusmVOSDeaf2ScoeTEn9V6B3aQ3
 LlEy0HozgC6Q4UFgAIMK4Pk+OveiuHpvmw==
X-Google-Smtp-Source: APXvYqweGicr20HyQJzv//7U7MX6fs+II5HfuSDchY/K130D4OAFu2+oZrFfpEwfLgZctSUS7tVQFA==
X-Received: by 2002:a17:90a:f0c5:: with SMTP id
 fa5mr11050245pjb.141.1575580488987; 
 Thu, 05 Dec 2019 13:14:48 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id x33sm358483pga.86.2019.12.05.13.14.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 13:14:47 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] ARM: defconfig: re-run savedefconfig on multi_v* configs
Date: Thu,  5 Dec 2019 13:14:37 -0800
Message-Id: <20191205211438.27552-2-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20191205211438.27552-1-olof@lixom.net>
References: <20191205211438.27552-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_131450_117343_06FEA313 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Olof Johansson <olof@lixom.net>, soc@kernel.org, arm@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is mostly to reorder the entries as they've moved in the Kconfig
hierarchies. Doing this periodically (but not very often) simplifies
conflict resolution for new options, etc.

Signed-off-by: Olof Johansson <olof@lixom.net>
---
 arch/arm/configs/multi_v4t_defconfig | 13 +++++-------
 arch/arm/configs/multi_v5_defconfig  | 24 ++++++++++-----------
 arch/arm/configs/multi_v7_defconfig  | 31 ++++++++++------------------
 3 files changed, 27 insertions(+), 41 deletions(-)

diff --git a/arch/arm/configs/multi_v4t_defconfig b/arch/arm/configs/multi_v4t_defconfig
index 0b42bddfbc82..e530107be412 100644
--- a/arch/arm/configs/multi_v4t_defconfig
+++ b/arch/arm/configs/multi_v4t_defconfig
@@ -4,22 +4,19 @@ CONFIG_LOG_BUF_SHIFT=14
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_EMBEDDED=y
 CONFIG_SLOB=y
-CONFIG_JUMP_LABEL=y
-CONFIG_PARTITION_ADVANCED=y
-# CONFIG_IOSCHED_CFQ is not set
 CONFIG_ARCH_MULTI_V4T=y
 # CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_AT91=y
 CONFIG_SOC_AT91RM9200=y
 CONFIG_ARCH_CLPS711X=y
+CONFIG_ARCH_MXC=y
+CONFIG_SOC_IMX1=y
 CONFIG_ARCH_INTEGRATOR=y
 CONFIG_ARCH_INTEGRATOR_AP=y
 CONFIG_INTEGRATOR_IMPD1=y
 CONFIG_INTEGRATOR_CM720T=y
 CONFIG_INTEGRATOR_CM920T=y
 CONFIG_INTEGRATOR_CM922T_XA10=y
-CONFIG_ARCH_MXC=y
-CONFIG_SOC_IMX1=y
 CONFIG_ARCH_NSPIRE=y
 CONFIG_AEABI=y
 # CONFIG_ATAGS is not set
@@ -28,6 +25,8 @@ CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_CPUIDLE=y
 CONFIG_ARM_CLPS711X_CPUIDLE=y
+CONFIG_JUMP_LABEL=y
+CONFIG_PARTITION_ADVANCED=y
 # CONFIG_COREDUMP is not set
 CONFIG_MTD=y
 CONFIG_MTD_CMDLINE_PARTS=y
@@ -81,7 +80,6 @@ CONFIG_FB=y
 CONFIG_FB_CLPS711X=y
 CONFIG_FB_IMX=y
 CONFIG_LCD_PLATFORM=y
-CONFIG_BACKLIGHT_PWM=y
 # CONFIG_USB_SUPPORT is not set
 CONFIG_NEW_LEDS=y
 CONFIG_LEDS_CLASS=y
@@ -92,12 +90,11 @@ CONFIG_LEDS_TRIGGER_HEARTBEAT=y
 CONFIG_PWM=y
 CONFIG_PWM_ATMEL=y
 CONFIG_PWM_CLPS711X=y
-CONFIG_PWM_IMX=y
 CONFIG_EXT2_FS=y
 CONFIG_MSDOS_FS=y
 CONFIG_VFAT_FS=y
 CONFIG_CRAMFS=y
 CONFIG_MINIX_FS=y
+CONFIG_CRC_CCITT=y
 # CONFIG_FTRACE is not set
 CONFIG_DEBUG_USER=y
-CONFIG_CRC_CCITT=y
diff --git a/arch/arm/configs/multi_v5_defconfig b/arch/arm/configs/multi_v5_defconfig
index 56315e1f81ff..2724fb3155cd 100644
--- a/arch/arm/configs/multi_v5_defconfig
+++ b/arch/arm/configs/multi_v5_defconfig
@@ -1,14 +1,11 @@
 CONFIG_SYSVIPC=y
 CONFIG_NO_HZ=y
 CONFIG_HIGH_RES_TIMERS=y
+CONFIG_PREEMPT=y
 CONFIG_LOG_BUF_SHIFT=19
 CONFIG_CGROUPS=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_PROFILING=y
-CONFIG_OPROFILE=y
-CONFIG_KPROBES=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
 # CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_ASPEED=y
 CONFIG_MACH_ASPEED_G4=y
@@ -59,8 +56,6 @@ CONFIG_MACH_RD88F5181L_GE=y
 CONFIG_MACH_RD88F5181L_FXO=y
 CONFIG_MACH_RD88F6183AP_GE=y
 CONFIG_ARCH_U300=y
-CONFIG_PCI_MVEBU=y
-CONFIG_PREEMPT=y
 CONFIG_AEABI=y
 CONFIG_HIGHMEM=y
 CONFIG_ZBOOT_ROM_TEXT=0x0
@@ -72,6 +67,10 @@ CONFIG_CPU_FREQ_STAT=y
 CONFIG_CPU_FREQ_DEFAULT_GOV_ONDEMAND=y
 CONFIG_CPU_IDLE=y
 CONFIG_ARM_KIRKWOOD_CPUIDLE=y
+CONFIG_OPROFILE=y
+CONFIG_KPROBES=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -84,6 +83,7 @@ CONFIG_NET_DSA=y
 CONFIG_NET_PKTGEN=m
 CONFIG_CFG80211=y
 CONFIG_MAC80211=y
+CONFIG_PCI_MVEBU=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_IMX_WEIM=y
@@ -187,7 +187,6 @@ CONFIG_REGULATOR_FIXED_VOLTAGE=y
 CONFIG_MEDIA_SUPPORT=y
 CONFIG_MEDIA_CAMERA_SUPPORT=y
 CONFIG_V4L_PLATFORM_DRIVERS=y
-CONFIG_SOC_CAMERA=y
 CONFIG_VIDEO_ASPEED=m
 CONFIG_VIDEO_ATMEL_ISI=m
 CONFIG_DRM=y
@@ -267,7 +266,6 @@ CONFIG_DMADEVICES=y
 CONFIG_AT_HDMAC=y
 CONFIG_MV_XOR=y
 CONFIG_STAGING=y
-CONFIG_FB_XGI=y
 CONFIG_ASPEED_LPC_CTRL=m
 CONFIG_ASPEED_LPC_SNOOP=m
 CONFIG_ASPEED_P2A_CTRL=m
@@ -296,6 +294,11 @@ CONFIG_NLS_CODEPAGE_850=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_NLS_ISO8859_2=y
 CONFIG_NLS_UTF8=y
+CONFIG_CRYPTO_CBC=m
+CONFIG_CRYPTO_PCBC=m
+CONFIG_CRYPTO_DEV_MARVELL_CESA=y
+CONFIG_CRC_CCITT=y
+CONFIG_LIBCRC32C=y
 CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_FS=y
 CONFIG_MAGIC_SYSRQ=y
@@ -304,8 +307,3 @@ CONFIG_DEBUG_KERNEL=y
 # CONFIG_DEBUG_PREEMPT is not set
 # CONFIG_FTRACE is not set
 CONFIG_DEBUG_USER=y
-CONFIG_CRYPTO_CBC=m
-CONFIG_CRYPTO_PCBC=m
-CONFIG_CRYPTO_DEV_MARVELL_CESA=y
-CONFIG_CRC_CCITT=y
-CONFIG_LIBCRC32C=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 24962d0e71c7..df04d8528711 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -131,8 +131,6 @@ CONFIG_CRYPTO_AES_ARM_CE=m
 CONFIG_CRYPTO_GHASH_ARM_CE=m
 CONFIG_CRYPTO_CRC32_ARM_CE=m
 CONFIG_CRYPTO_CHACHA20_NEON=m
-CONFIG_GCC_PLUGINS=y
-CONFIG_GCC_PLUGIN_STRUCTLEAK=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
 CONFIG_PARTITION_ADVANCED=y
@@ -185,7 +183,6 @@ CONFIG_PCI_TEGRA=y
 CONFIG_PCI_RCAR_GEN2=y
 CONFIG_PCIE_RCAR=y
 CONFIG_PCI_DRA7XX_EP=y
-CONFIG_PCI_KEYSTONE=y
 CONFIG_PCI_ENDPOINT=y
 CONFIG_PCI_ENDPOINT_CONFIGFS=y
 CONFIG_PCI_EPF_TEST=m
@@ -200,15 +197,14 @@ CONFIG_MTD_CFI=y
 CONFIG_MTD_CFI_INTELEXT=y
 CONFIG_MTD_PHYSMAP=y
 CONFIG_MTD_PHYSMAP_OF=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
 CONFIG_MTD_NAND_OMAP2=y
 CONFIG_MTD_NAND_OMAP_BCH=y
 CONFIG_MTD_NAND_ATMEL=y
 CONFIG_MTD_NAND_MARVELL=y
-CONFIG_MTD_NAND_GPMI_NAND=y
 CONFIG_MTD_NAND_BRCMNAND=y
+CONFIG_MTD_NAND_GPMI_NAND=y
 CONFIG_MTD_NAND_VF610_NFC=y
 CONFIG_MTD_NAND_DAVINCI=y
 CONFIG_MTD_NAND_STM32_FMC2=y
@@ -272,11 +268,11 @@ CONFIG_STMMAC_ETH=y
 CONFIG_DWMAC_DWC_QOS_ETH=y
 CONFIG_TI_CPSW=y
 CONFIG_XILINX_EMACLITE=y
-CONFIG_AT803X_PHY=y
 CONFIG_BROADCOM_PHY=y
 CONFIG_ICPLUS_PHY=y
 CONFIG_MARVELL_PHY=y
 CONFIG_MICREL_PHY=y
+CONFIG_AT803X_PHY=y
 CONFIG_ROCKCHIP_PHY=y
 CONFIG_SMSC_PHY=y
 CONFIG_USB_PEGASUS=y
@@ -390,7 +386,6 @@ CONFIG_I2C_DAVINCI=y
 CONFIG_I2C_DESIGNWARE_PLATFORM=y
 CONFIG_I2C_DIGICOLOR=m
 CONFIG_I2C_EMEV2=m
-CONFIG_I2C_GPIO=m
 CONFIG_I2C_IMX=y
 CONFIG_I2C_MESON=y
 CONFIG_I2C_MV64XXX=y
@@ -481,8 +476,8 @@ CONFIG_BATTERY_BQ27XXX=m
 CONFIG_AXP20X_POWER=m
 CONFIG_BATTERY_MAX17040=m
 CONFIG_BATTERY_MAX17042=m
-CONFIG_CHARGER_GPIO=m
 CONFIG_CHARGER_CPCAP=m
+CONFIG_CHARGER_GPIO=m
 CONFIG_CHARGER_MAX14577=m
 CONFIG_CHARGER_MAX77693=m
 CONFIG_CHARGER_MAX8997=m
@@ -539,10 +534,6 @@ CONFIG_MFD_BCM590XX=y
 CONFIG_MFD_AC100=y
 CONFIG_MFD_AXP20X_I2C=y
 CONFIG_MFD_AXP20X_RSB=y
-CONFIG_MFD_CROS_EC=m
-CONFIG_CROS_EC_I2C=m
-CONFIG_CROS_EC_SPI=m
-CONFIG_MFD_CROS_EC_CHARDEV=m
 CONFIG_MFD_DA9063=m
 CONFIG_MFD_MAX14577=y
 CONFIG_MFD_MAX77686=y
@@ -644,7 +635,6 @@ CONFIG_V4L_TEST_DRIVERS=y
 CONFIG_VIDEO_VIVID=m
 CONFIG_CEC_PLATFORM_DRIVERS=y
 CONFIG_VIDEO_SAMSUNG_S5P_CEC=m
-# CONFIG_MEDIA_SUBDRV_AUTOSELECT is not set
 CONFIG_VIDEO_ADV7180=m
 CONFIG_VIDEO_ML86V7667=m
 CONFIG_DRM=y
@@ -697,7 +687,6 @@ CONFIG_FB_EFI=y
 CONFIG_FB_WM8505=y
 CONFIG_FB_SH_MOBILE_LCDC=y
 CONFIG_FB_SIMPLE=y
-CONFIG_LCD_PLATFORM=m
 CONFIG_BACKLIGHT_PWM=y
 CONFIG_BACKLIGHT_AS3711=y
 CONFIG_BACKLIGHT_GPIO=y
@@ -946,6 +935,9 @@ CONFIG_SERIO_NVEC_PS2=y
 CONFIG_NVEC_POWER=y
 CONFIG_NVEC_PAZ00=y
 CONFIG_STAGING_BOARD=y
+CONFIG_MFD_CROS_EC=m
+CONFIG_CROS_EC_I2C=m
+CONFIG_CROS_EC_SPI=m
 CONFIG_COMMON_CLK_MAX77686=y
 CONFIG_COMMON_CLK_RK808=m
 CONFIG_COMMON_CLK_S2MPS11=m
@@ -1012,16 +1004,15 @@ CONFIG_BERLIN2_ADC=m
 CONFIG_CPCAP_ADC=m
 CONFIG_EXYNOS_ADC=m
 CONFIG_MESON_SARADC=m
+CONFIG_ROCKCHIP_SARADC=m
 CONFIG_STM32_ADC_CORE=m
 CONFIG_STM32_ADC=m
 CONFIG_STM32_DFSDM_ADC=m
 CONFIG_VF610_ADC=m
 CONFIG_XILINX_XADC=y
-CONFIG_STM32_LPTIMER_CNT=m
-CONFIG_STM32_DAC=m
-CONFIG_ROCKCHIP_SARADC=m
 CONFIG_IIO_CROS_EC_SENSORS_CORE=m
 CONFIG_IIO_CROS_EC_SENSORS=m
+CONFIG_STM32_DAC=m
 CONFIG_MPU3050_I2C=y
 CONFIG_CM36651=m
 CONFIG_IIO_CROS_EC_LIGHT_PROX=m
@@ -1072,11 +1063,11 @@ CONFIG_PHY_DM816X_USB=m
 CONFIG_OMAP_USB2=y
 CONFIG_TI_PIPE3=y
 CONFIG_TWL4030_USB=m
-CONFIG_MESON_MX_EFUSE=m
-CONFIG_ROCKCHIP_EFUSE=m
 CONFIG_NVMEM_IMX_OCOTP=y
+CONFIG_ROCKCHIP_EFUSE=m
 CONFIG_NVMEM_SUNXI_SID=y
 CONFIG_NVMEM_VF610_OCOTP=y
+CONFIG_MESON_MX_EFUSE=m
 CONFIG_FSI=m
 CONFIG_FSI_MASTER_GPIO=m
 CONFIG_FSI_MASTER_HUB=m
@@ -1110,13 +1101,13 @@ CONFIG_CRYPTO_USER_API_HASH=m
 CONFIG_CRYPTO_USER_API_SKCIPHER=m
 CONFIG_CRYPTO_USER_API_RNG=m
 CONFIG_CRYPTO_USER_API_AEAD=m
+CONFIG_CRYPTO_DEV_SUN4I_SS=m
 CONFIG_CRYPTO_DEV_MARVELL_CESA=m
 CONFIG_CRYPTO_DEV_EXYNOS_RNG=m
 CONFIG_CRYPTO_DEV_S5P=m
 CONFIG_CRYPTO_DEV_ATMEL_AES=m
 CONFIG_CRYPTO_DEV_ATMEL_TDES=m
 CONFIG_CRYPTO_DEV_ATMEL_SHA=m
-CONFIG_CRYPTO_DEV_SUN4I_SS=m
 CONFIG_CRYPTO_DEV_ROCKCHIP=m
 CONFIG_CMA_SIZE_MBYTES=64
 CONFIG_PRINTK_TIME=y
-- 
2.22.GIT


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
