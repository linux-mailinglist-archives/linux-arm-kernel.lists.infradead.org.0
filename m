Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A17DBE948
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 19:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kn4cLyrMDACcv9LeCrP9NGQFvmGP0ALkCVnY1un/vZ0=; b=o4L/pK26iIILSs
	Kef4sbqrfJHTlTVBR7upnA7AMjibup460aZYM6NQyHoso/oh8EsUiRv4B/Ywe2SsIgAkgbldNHmL1
	5UF7EvaCYwQVE/8mHLPaPjV9jya3Y5Ez3uMLDK/8p5Q35B4/ehD3Prgt7GGYajDkbdvD4CKO52he2
	GwBXyHnzy7oAR4OfbPnZ09Dghudl38dmfByJ1MKeP47/zVSZ0NMCNP6iS1DdluA6PyX8d8y/6RCm8
	zcEgwPRCT8DE4BJcQRMtqMrvm8tAUeIr8AqPpLbfpRHP3iYcYbC2z9Jhq92dm4DHDWoi3oIF3F4I1
	0FVa1klP1u9tw8204VAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLAD5-0004fD-0Y; Mon, 29 Apr 2019 17:36:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLACf-0004U7-9z
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 17:36:34 +0000
Received: from localhost.localdomain (unknown [194.230.155.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F9982147A;
 Mon, 29 Apr 2019 17:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556559393;
 bh=yE24FEyTF2C8cN5/dSKPH6GLAs85kDRq9wj5o8UEXBI=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=j4i0gt9jn8tJ3JWTAicxu5Qx6vmTQgpn3WwObdKy5zZTLBF03TbJsL65Kh0Ve9gbG
 hSyzUvvnQiECaIjvcnWljXcT7jhUBamIw3trkLL9zVTL6iAkizi2wgyU91dyAQC8mN
 0tLsf7+hxgpWcTcc2+G3BlMdDgw0cz33AEYLUW6c=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: exynos_defconfig: Trim and reorganize with
 savedefconfig
Date: Mon, 29 Apr 2019 19:36:20 +0200
Message-Id: <20190429173620.5078-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190429173620.5078-1-krzk@kernel.org>
References: <20190429173620.5078-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_103633_380567_20969A8A 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -4.1 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Trim and reorganize the defconfig with savedefconfig on latest
linux-next.  The ARCH_EXYNOS3 is removed because it become the default.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/configs/exynos_defconfig | 62 ++++++++++++++-----------------
 1 file changed, 27 insertions(+), 35 deletions(-)

diff --git a/arch/arm/configs/exynos_defconfig b/arch/arm/configs/exynos_defconfig
index c95c54284da2..8d08eed99aa1 100644
--- a/arch/arm/configs/exynos_defconfig
+++ b/arch/arm/configs/exynos_defconfig
@@ -1,21 +1,15 @@
 CONFIG_SYSVIPC=y
 CONFIG_NO_HZ=y
 CONFIG_HIGH_RES_TIMERS=y
+CONFIG_PREEMPT=y
 CONFIG_CGROUPS=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_PERF_EVENTS=y
-CONFIG_MODULES=y
-CONFIG_MODULE_UNLOAD=y
-CONFIG_PARTITION_ADVANCED=y
 CONFIG_ARCH_EXYNOS=y
-CONFIG_ARCH_EXYNOS3=y
 CONFIG_SMP=y
 CONFIG_BIG_LITTLE=y
 CONFIG_NR_CPUS=8
-CONFIG_PREEMPT=y
-CONFIG_AEABI=y
 CONFIG_HIGHMEM=y
-CONFIG_CMA=y
 CONFIG_SECCOMP=y
 CONFIG_ZBOOT_ROM_TEXT=0x0
 CONFIG_ZBOOT_ROM_BSS=0x0
@@ -37,6 +31,16 @@ CONFIG_NEON=y
 CONFIG_KERNEL_MODE_NEON=y
 CONFIG_PM_DEBUG=y
 CONFIG_PM_ADVANCED_DEBUG=y
+CONFIG_ARM_CRYPTO=y
+CONFIG_CRYPTO_SHA1_ARM_NEON=m
+CONFIG_CRYPTO_SHA256_ARM=m
+CONFIG_CRYPTO_SHA512_ARM=m
+CONFIG_CRYPTO_AES_ARM_BS=m
+CONFIG_CRYPTO_CHACHA20_NEON=m
+CONFIG_MODULES=y
+CONFIG_MODULE_UNLOAD=y
+CONFIG_PARTITION_ADVANCED=y
+CONFIG_CMA=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -60,10 +64,7 @@ CONFIG_BT_HCIBTSDIO=m
 CONFIG_BT_HCIUART=m
 CONFIG_BT_HCIUART_BCSP=y
 CONFIG_BT_HCIUART_ATH3K=y
-CONFIG_BT_HCIUART_3WIRE=y
 CONFIG_BT_HCIUART_INTEL=y
-CONFIG_BT_HCIUART_BCM=y
-CONFIG_BT_HCIUART_QCA=y
 CONFIG_BT_HCIUART_AG6XX=y
 CONFIG_BT_HCIUART_MRVL=y
 CONFIG_BT_HCIBCM203X=m
@@ -86,8 +87,6 @@ CONFIG_NFC_SHDLC=y
 CONFIG_NFC_S3FWRN5_I2C=y
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
-CONFIG_DMA_CMA=y
-CONFIG_CMA_SIZE_MBYTES=96
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_CRYPTOLOOP=y
 CONFIG_BLK_DEV_RAM=y
@@ -155,8 +154,6 @@ CONFIG_THERMAL_EMULATION=y
 CONFIG_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
 CONFIG_MFD_CROS_EC=y
-CONFIG_CROS_EC_I2C=y
-CONFIG_CROS_EC_SPI=y
 CONFIG_MFD_MAX14577=y
 CONFIG_MFD_MAX77686=y
 CONFIG_MFD_MAX77693=y
@@ -282,16 +279,17 @@ CONFIG_RTC_DRV_S5M=y
 CONFIG_RTC_DRV_S3C=y
 CONFIG_DMADEVICES=y
 CONFIG_PL330_DMA=y
-CONFIG_CROS_EC_CHARDEV=y
+CONFIG_CROS_EC_I2C=y
+CONFIG_CROS_EC_SPI=y
 CONFIG_COMMON_CLK_MAX77686=y
 CONFIG_COMMON_CLK_S2MPS11=y
+CONFIG_EXYNOS_IOMMU=y
 CONFIG_PM_DEVFREQ=y
 CONFIG_DEVFREQ_GOV_PERFORMANCE=y
 CONFIG_DEVFREQ_GOV_POWERSAVE=y
 CONFIG_DEVFREQ_GOV_USERSPACE=y
 CONFIG_ARM_EXYNOS_BUS_DEVFREQ=y
 CONFIG_DEVFREQ_EVENT_EXYNOS_NOCP=y
-CONFIG_EXYNOS_IOMMU=y
 CONFIG_EXTCON=y
 CONFIG_EXTCON_MAX14577=y
 CONFIG_EXTCON_MAX77693=y
@@ -319,21 +317,9 @@ CONFIG_NLS_CODEPAGE_437=y
 CONFIG_NLS_ASCII=y
 CONFIG_NLS_ISO8859_1=y
 CONFIG_NLS_UTF8=y
-CONFIG_PRINTK_TIME=y
-CONFIG_DYNAMIC_DEBUG=y
-CONFIG_DEBUG_INFO=y
-CONFIG_DEBUG_FS=y
-CONFIG_MAGIC_SYSRQ=y
-CONFIG_DEBUG_KERNEL=y
-CONFIG_SOFTLOCKUP_DETECTOR=y
-# CONFIG_DETECT_HUNG_TASK is not set
-CONFIG_PROVE_LOCKING=y
-CONFIG_DEBUG_ATOMIC_SLEEP=y
-CONFIG_DEBUG_USER=y
-CONFIG_CRYPTO_RSA=m
-CONFIG_CRYPTO_DH=m
 CONFIG_CRYPTO_USER=m
 CONFIG_CRYPTO_TEST=m
+CONFIG_CRYPTO_DH=m
 CONFIG_CRYPTO_LRW=m
 CONFIG_CRYPTO_XTS=m
 CONFIG_CRYPTO_MD5=m
@@ -348,12 +334,18 @@ CONFIG_CRYPTO_USER_API_RNG=m
 CONFIG_CRYPTO_USER_API_AEAD=m
 CONFIG_CRYPTO_DEV_EXYNOS_RNG=y
 CONFIG_CRYPTO_DEV_S5P=y
-CONFIG_ARM_CRYPTO=y
-CONFIG_CRYPTO_SHA1_ARM_NEON=m
-CONFIG_CRYPTO_SHA256_ARM=m
-CONFIG_CRYPTO_SHA512_ARM=m
-CONFIG_CRYPTO_AES_ARM_BS=m
-CONFIG_CRYPTO_CHACHA20_NEON=m
 CONFIG_CRC_CCITT=y
+CONFIG_DMA_CMA=y
+CONFIG_CMA_SIZE_MBYTES=96
 CONFIG_FONTS=y
 CONFIG_FONT_7x14=y
+CONFIG_PRINTK_TIME=y
+CONFIG_DYNAMIC_DEBUG=y
+CONFIG_DEBUG_INFO=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_DEBUG_KERNEL=y
+CONFIG_SOFTLOCKUP_DETECTOR=y
+# CONFIG_DETECT_HUNG_TASK is not set
+CONFIG_PROVE_LOCKING=y
+CONFIG_DEBUG_ATOMIC_SLEEP=y
+CONFIG_DEBUG_USER=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
