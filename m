Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8E734FFB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 20:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DoWnKwKYGhxohJ0eitZj24sqowCoSzNV18eJD76kmdo=; b=NwkhNtER6gWJ0k
	965p+rTxMPE/mt4sbHugIHD+cHmCFZ5zYjkApfOHaRepi6Pa7Jgdm0Q5z3OIfVCmojyHrp8JVaHF9
	QXQtasNPVZEy/XP5N71beKk5xIcdhD03LpGYZOaTRVztCeyAtyixKFzmaG7YR4RondCv+YfRDLv5m
	B3hQXmzpUlex4M4pjo2ZST6mb39RoeMQ5yFbeiFJhDKexIHbDKLYOv3eLFARXOYph2WgIQDmSK4EV
	QYCsJEzcidRprik2cswUX5hsxI5xnONQ0Ua8bZpwV039ESKM/jak74on94IZEH14YOCEBftiXL0Ws
	GHdTRDjRGMLtKo9QQUBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYETs-0004YF-8q; Tue, 04 Jun 2019 18:48:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYETl-0004Xk-Mf
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 18:48:15 +0000
Received: from localhost.localdomain (unknown [194.230.155.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 753BD2075C;
 Tue,  4 Jun 2019 18:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559674092;
 bh=6IRa4f6L/ww3YDEhCVQKAlSOqA3jvL6WffX8jjrcPpM=;
 h=From:To:Subject:Date:From;
 b=XKPpVW1KYWRevU2tCldqHd9ugkgrdRpUF7LNxRud0cjSle6UkK2UskadTeul6Zgg7
 euvK5PMIYjL09zttgp+zoQOduiZWhPz5EMh7i8uL28VDBZA65b78YxoaYoMtYs3IDm
 ESTlcDbas/8bQick32POPsF6VX56fSBGMRBCUpXk=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: defconfig: samsung: Cleanup with savedefconfig
Date: Tue,  4 Jun 2019 20:47:59 +0200
Message-Id: <20190604184759.4453-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_114813_769538_26038C2E 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Run savedefconfig to cleanup and reorganize the configs.  Most entries
are only moved around and few options disappear because of defaults.

However this removes the already disabled OSS Emulation and OSS
Sequencer API (SND_MIXER_OSS, SND_PCM_OSS, SND_SEQUENCER_OSS).  These
were already disabled (hidden by missing SND_OSSEMUL and SND_SEQUENCER)
and are not strictly hardware related, therefore they are not necessary
for providing reference hardware config.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/configs/mini2440_defconfig | 43 ++++++++++++-----------------
 arch/arm/configs/s3c2410_defconfig  | 24 ++++++----------
 arch/arm/configs/s3c6400_defconfig  | 11 +++-----
 3 files changed, 31 insertions(+), 47 deletions(-)

diff --git a/arch/arm/configs/mini2440_defconfig b/arch/arm/configs/mini2440_defconfig
index 4bd1b320067a..301f29a1fcc3 100644
--- a/arch/arm/configs/mini2440_defconfig
+++ b/arch/arm/configs/mini2440_defconfig
@@ -4,6 +4,16 @@ CONFIG_POSIX_MQUEUE=y
 CONFIG_RELAY=y
 CONFIG_BLK_DEV_INITRD=y
 # CONFIG_COMPAT_BRK is not set
+CONFIG_ARCH_S3C24XX=y
+CONFIG_S3C_ADC=y
+CONFIG_S3C24XX_PWM=y
+# CONFIG_CPU_S3C2410 is not set
+CONFIG_CPU_S3C2440=y
+CONFIG_MACH_MINI2440=y
+CONFIG_AEABI=y
+CONFIG_KEXEC=y
+CONFIG_CPU_IDLE=y
+CONFIG_APM_EMULATION=y
 CONFIG_MODULES=y
 CONFIG_MODULE_FORCE_LOAD=y
 CONFIG_MODULE_UNLOAD=y
@@ -16,17 +26,7 @@ CONFIG_MINIX_SUBPARTITION=y
 CONFIG_SOLARIS_X86_PARTITION=y
 CONFIG_UNIXWARE_DISKLABEL=y
 CONFIG_LDM_PARTITION=y
-CONFIG_ARCH_S3C24XX=y
-# CONFIG_CPU_S3C2410 is not set
-CONFIG_CPU_S3C2440=y
-CONFIG_MACH_MINI2440=y
-CONFIG_S3C_ADC=y
-CONFIG_S3C24XX_PWM=y
-CONFIG_AEABI=y
-CONFIG_KEXEC=y
-CONFIG_CPU_IDLE=y
 CONFIG_BINFMT_MISC=m
-CONFIG_APM_EMULATION=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -46,9 +46,6 @@ CONFIG_IP_MROUTE=y
 CONFIG_IP_PIMSM_V1=y
 CONFIG_IP_PIMSM_V2=y
 CONFIG_SYN_COOKIES=y
-# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
-# CONFIG_INET_XFRM_MODE_TUNNEL is not set
-# CONFIG_INET_XFRM_MODE_BEET is not set
 CONFIG_INET_DIAG=m
 # CONFIG_IPV6 is not set
 CONFIG_NETFILTER=y
@@ -125,7 +122,6 @@ CONFIG_LIBERTAS=m
 CONFIG_LIBERTAS_SDIO=m
 CONFIG_ZD1211RW=m
 CONFIG_ZD1211RW_DEBUG=y
-CONFIG_INPUT_FF_MEMLESS=y
 CONFIG_INPUT_EVDEV=y
 CONFIG_INPUT_EVBUG=m
 # CONFIG_KEYBOARD_ATKBD is not set
@@ -172,12 +168,9 @@ CONFIG_LOGO=y
 # CONFIG_LOGO_LINUX_VGA16 is not set
 CONFIG_SOUND=y
 CONFIG_SND=y
+CONFIG_SND_DYNAMIC_MINORS=y
 CONFIG_SND_SEQUENCER=m
 CONFIG_SND_SEQ_DUMMY=m
-CONFIG_SND_MIXER_OSS=m
-CONFIG_SND_PCM_OSS=m
-CONFIG_SND_SEQUENCER_OSS=y
-CONFIG_SND_DYNAMIC_MINORS=y
 # CONFIG_SND_DRIVERS is not set
 # CONFIG_SND_ARM is not set
 # CONFIG_SND_SPI is not set
@@ -295,13 +288,6 @@ CONFIG_NLS_ISO8859_15=m
 CONFIG_NLS_KOI8_R=m
 CONFIG_NLS_KOI8_U=m
 CONFIG_NLS_UTF8=m
-CONFIG_DEBUG_INFO=y
-# CONFIG_ENABLE_MUST_CHECK is not set
-CONFIG_STRIP_ASM_SYMS=y
-CONFIG_DEBUG_FS=y
-CONFIG_DEBUG_KERNEL=y
-# CONFIG_SCHED_DEBUG is not set
-CONFIG_DEBUG_USER=y
 CONFIG_CRYPTO_CRYPTD=m
 CONFIG_CRYPTO_AUTHENC=m
 CONFIG_CRYPTO_TEST=m
@@ -340,3 +326,10 @@ CONFIG_LIBCRC32C=m
 CONFIG_FONTS=y
 CONFIG_FONT_8x8=y
 CONFIG_FONT_MINI_4x6=y
+CONFIG_DEBUG_INFO=y
+# CONFIG_ENABLE_MUST_CHECK is not set
+CONFIG_STRIP_ASM_SYMS=y
+CONFIG_DEBUG_FS=y
+CONFIG_DEBUG_KERNEL=y
+# CONFIG_SCHED_DEBUG is not set
+CONFIG_DEBUG_USER=y
diff --git a/arch/arm/configs/s3c2410_defconfig b/arch/arm/configs/s3c2410_defconfig
index addc209ebd3d..95b5a4ffddea 100644
--- a/arch/arm/configs/s3c2410_defconfig
+++ b/arch/arm/configs/s3c2410_defconfig
@@ -4,13 +4,8 @@ CONFIG_IKCONFIG_PROC=y
 CONFIG_LOG_BUF_SHIFT=16
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_SLAB=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-# CONFIG_BLK_DEV_BSG is not set
-CONFIG_PARTITION_ADVANCED=y
-CONFIG_BSD_DISKLABEL=y
-CONFIG_SOLARIS_X86_PARTITION=y
 CONFIG_ARCH_S3C24XX=y
+CONFIG_S3C_ADC=y
 CONFIG_CPU_S3C2412=y
 CONFIG_CPU_S3C2416=y
 CONFIG_CPU_S3C2440=y
@@ -40,13 +35,18 @@ CONFIG_ARCH_S3C2440=y
 CONFIG_MACH_NEO1973_GTA02=y
 CONFIG_MACH_RX1950=y
 CONFIG_MACH_SMDK2443=y
-CONFIG_S3C_ADC=y
 CONFIG_ZBOOT_ROM_TEXT=0x0
 CONFIG_ZBOOT_ROM_BSS=0x0
 CONFIG_CMDLINE="root=/dev/hda1 ro init=/bin/bash console=ttySAC0"
 CONFIG_FPE_NWFPE=y
 CONFIG_FPE_NWFPE_XP=y
 CONFIG_APM_EMULATION=m
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+# CONFIG_BLK_DEV_BSG is not set
+CONFIG_PARTITION_ADVANCED=y
+CONFIG_BSD_DISKLABEL=y
+CONFIG_SOLARIS_X86_PARTITION=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -74,7 +74,6 @@ CONFIG_INET6_AH=m
 CONFIG_INET6_ESP=m
 CONFIG_INET6_IPCOMP=m
 CONFIG_IPV6_MIP6=m
-CONFIG_INET6_XFRM_MODE_ROUTEOPTIMIZATION=m
 CONFIG_IPV6_TUNNEL=m
 CONFIG_NETFILTER=y
 CONFIG_NF_CONNTRACK=m
@@ -129,7 +128,6 @@ CONFIG_NETFILTER_XT_MATCH_TCPMSS=m
 CONFIG_NETFILTER_XT_MATCH_TIME=m
 CONFIG_NETFILTER_XT_MATCH_U32=m
 CONFIG_IP_VS=m
-CONFIG_NF_CONNTRACK_IPV4=m
 CONFIG_IP_NF_IPTABLES=m
 CONFIG_IP_NF_MATCH_AH=m
 CONFIG_IP_NF_MATCH_ECN=m
@@ -148,7 +146,6 @@ CONFIG_IP_NF_RAW=m
 CONFIG_IP_NF_ARPTABLES=m
 CONFIG_IP_NF_ARPFILTER=m
 CONFIG_IP_NF_ARP_MANGLE=m
-CONFIG_NF_CONNTRACK_IPV6=m
 CONFIG_IP6_NF_IPTABLES=m
 CONFIG_IP6_NF_MATCH_AH=m
 CONFIG_IP6_NF_MATCH_EUI64=m
@@ -182,9 +179,9 @@ CONFIG_MAC80211=m
 CONFIG_MAC80211_MESH=y
 CONFIG_MAC80211_LEDS=y
 CONFIG_MTD=y
+CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_REDBOOT_PARTS=y
 CONFIG_MTD_REDBOOT_PARTS_UNALLOCATED=y
-CONFIG_MTD_CMDLINE_PARTS=y
 CONFIG_MTD_BLOCK=y
 CONFIG_MTD_CFI=y
 CONFIG_MTD_JEDECPROBE=y
@@ -290,11 +287,8 @@ CONFIG_BACKLIGHT_PWM=m
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_SOUND=y
 CONFIG_SND=y
-CONFIG_SND_SEQUENCER=m
-CONFIG_SND_MIXER_OSS=m
-CONFIG_SND_PCM_OSS=m
-CONFIG_SND_SEQUENCER_OSS=y
 CONFIG_SND_VERBOSE_PRINTK=y
+CONFIG_SND_SEQUENCER=m
 # CONFIG_SND_DRIVERS is not set
 # CONFIG_SND_ARM is not set
 # CONFIG_SND_SPI is not set
diff --git a/arch/arm/configs/s3c6400_defconfig b/arch/arm/configs/s3c6400_defconfig
index 6eea99300f7f..59a258d504aa 100644
--- a/arch/arm/configs/s3c6400_defconfig
+++ b/arch/arm/configs/s3c6400_defconfig
@@ -2,9 +2,6 @@ CONFIG_SYSFS_DEPRECATED=y
 CONFIG_SYSFS_DEPRECATED_V2=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_KALLSYMS_ALL=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-# CONFIG_BLK_DEV_BSG is not set
 CONFIG_ARCH_MULTI_V6=y
 # CONFIG_ARCH_MULTI_V7 is not set
 CONFIG_ARCH_S3C64XX=y
@@ -18,9 +15,11 @@ CONFIG_MACH_HMT=y
 CONFIG_MACH_SMARTQ5=y
 CONFIG_MACH_SMARTQ7=y
 CONFIG_MACH_WLF_CRAGG_6410=y
-CONFIG_AEABI=y
 CONFIG_CMDLINE="console=ttySAC0,115200 root=/dev/ram init=/linuxrc initrd=0x51000000,6M ramdisk_size=6144"
 CONFIG_VFP=y
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+# CONFIG_BLK_DEV_BSG is not set
 CONFIG_MTD=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_S3C2410=y
@@ -45,8 +44,6 @@ CONFIG_BACKLIGHT_CLASS_DEVICE=y
 CONFIG_BACKLIGHT_PWM=y
 CONFIG_SOUND=y
 CONFIG_SND=m
-CONFIG_SND_MIXER_OSS=m
-CONFIG_SND_PCM_OSS=m
 CONFIG_SND_SOC=m
 CONFIG_USB=y
 CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
@@ -59,8 +56,8 @@ CONFIG_USB_SERIAL_EMPEG=m
 CONFIG_USB_SERIAL_FTDI_SIO=m
 CONFIG_USB_SERIAL_PL2303=m
 CONFIG_MMC=y
-CONFIG_MMC_DEBUG=y
 CONFIG_SDIO_UART=y
+CONFIG_MMC_DEBUG=y
 CONFIG_MMC_SDHCI=y
 CONFIG_MMC_SDHCI_S3C=y
 CONFIG_RTC_CLASS=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
