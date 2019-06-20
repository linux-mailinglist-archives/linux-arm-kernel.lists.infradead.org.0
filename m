Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041764CD18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O7ii6U/WbxfrK0ncU9Lu/WO1NOLViWJjl0zERaO+8KA=; b=J2G83SxKNzt6nn
	W023cSeO87NvzV4rC1Kh4bYYt/R2Nxn0R1K3zlbvReyFreWPC/z9/96CD9aZh6QV4ydVXtSAFRrjH
	jgD4wQrkyKJgtHGPPSB+Z69iChN27t+DKte6pZtmIGtkHBINU/X9Be4oQr6dl1N5Psn0/0PRThVWA
	JMj9PAOlNKC++pBlkC0Txxff8PmSzOlM4t58IHM15mWmkW4n5ju9auBKAPTHF0C9HyF2IRr2Pa3WQ
	GPdBckiR2RaclFSsskfPu8Yrb6MuEM96wO4vzzTuHPVT6XfpRv5k1IUz3YPXhKTDxmr/yTWKDL6iE
	hUwQCZtVgoUyPuAsaxUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdvYX-0003WX-DI; Thu, 20 Jun 2019 11:48:41 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdvYK-0003VU-Bw
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:48:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E3BB0CC114;
 Thu, 20 Jun 2019 13:48:21 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id mjjGVXUkeHZO; Thu, 20 Jun 2019 13:48:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id A4BABCC073;
 Thu, 20 Jun 2019 13:48:19 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yRqnqWP2PzPw; Thu, 20 Jun 2019 13:48:18 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 973DACC12B;
 Thu, 20 Jun 2019 13:48:18 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH] ARM: multi_v7_defconfig: enable MMP2 platform
Date: Thu, 20 Jun 2019 13:48:16 +0200
Message-Id: <20190620114816.1387881-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_044828_568476_73C32733 
X-CRM114-Status: UNSURE (   5.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lubomir Rintel <lkundrak@v3.sk>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marvell MMP/PXA/MMP2 platforms seem to be excluded from the defconfig
for no good reasons. Enable the DT-based boards and the modules for
their peripherals.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/configs/multi_v7_defconfig | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 6b748f214eae..ef91f41bd48a 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -51,6 +51,8 @@ CONFIG_ARCH_MEDIATEK=y
 CONFIG_ARCH_MESON=y
 CONFIG_ARCH_MILBEAUT=y
 CONFIG_ARCH_MILBEAUT_M10V=y
+CONFIG_ARCH_MMP=y
+CONFIG_MACH_MMP2_DT=y
 CONFIG_ARCH_MVEBU=y
 CONFIG_MACH_ARMADA_370=y
 CONFIG_MACH_ARMADA_375=y
@@ -278,6 +280,7 @@ CONFIG_INPUT_EVDEV=y
 CONFIG_KEYBOARD_QT1070=m
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_TEGRA=y
+CONFIG_KEYBOARD_PXA27x=m
 CONFIG_KEYBOARD_SAMSUNG=m
 CONFIG_KEYBOARD_ST_KEYSCAN=y
 CONFIG_KEYBOARD_SPEAR=y
@@ -312,6 +315,7 @@ CONFIG_SERIAL_8250_EM=y
 CONFIG_SERIAL_8250_OMAP=y
 CONFIG_SERIAL_8250_MT6577=y
 CONFIG_SERIAL_8250_UNIPHIER=y
+CONFIG_SERIAL_8250_PXA=m
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
@@ -589,6 +593,7 @@ CONFIG_VIDEO_V4L2_SUBDEV_API=y
 CONFIG_MEDIA_USB_SUPPORT=y
 CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
+CONFIG_VIDEO_MMP_CAMERA=m
 CONFIG_VIDEO_STM32_DCMI=m
 CONFIG_VIDEO_SAMSUNG_EXYNOS4_IS=m
 CONFIG_VIDEO_S5P_FIMC=m
@@ -681,6 +686,9 @@ CONFIG_SND_ATMEL_SOC_PDMIC=m
 CONFIG_SND_ATMEL_SOC_I2S=m
 CONFIG_SND_BCM2835_SOC_I2S=m
 CONFIG_SND_SOC_FSL_SAI=m
+CONFIG_SND_MMP_SOC=y
+CONFIG_SND_PXA_SOC_SSP=m
+CONFIG_SND_PXA910_SOC=m
 CONFIG_SND_SOC_ROCKCHIP=m
 CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
 CONFIG_SND_SOC_ROCKCHIP_MAX98090=m
@@ -719,6 +727,7 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_HCD_STI=y
 CONFIG_USB_EHCI_TEGRA=y
 CONFIG_USB_EHCI_EXYNOS=y
+CONFIG_USB_EHCI_MV=m
 CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_STI=y
 CONFIG_USB_OHCI_EXYNOS=m
@@ -788,6 +797,7 @@ CONFIG_MMC_SDHCI_DOVE=y
 CONFIG_MMC_SDHCI_TEGRA=y
 CONFIG_MMC_SDHCI_S3C=y
 CONFIG_MMC_SDHCI_PXAV3=y
+CONFIG_MMC_SDHCI_PXAV2=m
 CONFIG_MMC_SDHCI_SPEAR=y
 CONFIG_MMC_SDHCI_S3C_DMA=y
 CONFIG_MMC_SDHCI_BCM_KONA=y
@@ -853,6 +863,7 @@ CONFIG_RTC_DRV_DA9063=m
 CONFIG_RTC_DRV_EFI=m
 CONFIG_RTC_DRV_DIGICOLOR=m
 CONFIG_RTC_DRV_S3C=m
+CONFIG_RTC_DRV_SA1100=m
 CONFIG_RTC_DRV_PL031=y
 CONFIG_RTC_DRV_AT91RM9200=m
 CONFIG_RTC_DRV_AT91SAM9=m
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
