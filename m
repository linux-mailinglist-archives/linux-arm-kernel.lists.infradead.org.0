Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD79EDB08F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nxNe5yOJV8fUkRmylv2VgylcgE0bN4FwoDZny+IPkng=; b=km6BSD3Vlsla1j
	f8ir/ec4KHC/aTmIca9S1KQv2vBjEUO4VdXTeUNMuL5wgGbAIrEOcyaKn9SFKsjNbTLKbjDd/tag7
	rc2YWoEGH+txtxtOvbbBSmFuP1tCxuXogTMMottmgpOc5OxyAq1rBg6hmI583lseYVBteS380mA2u
	zlQJDXLiFcZg3bYQCOB2dN4PvvhdKz/+ESOiLJEZPvUFA+no9aiHQyMSQjom+VmQU7OgL96ZzC1/c
	gbIuQAm3dY2R/2o5+R4aQAynKamF9xXRXl1t8qmiQZO6x04t4l7CKUdr+PvtUmDjVEljfUN4a2u2+
	3K98HIzevxRqKwfXVbTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7DR-0004Lf-5y; Thu, 17 Oct 2019 14:57:25 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7DH-0004L0-48
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:57:16 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 7E5E349DE8;
 Thu, 17 Oct 2019 16:57:13 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id ONIddpEspqmG; Thu, 17 Oct 2019 16:57:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 6B50449E32;
 Thu, 17 Oct 2019 16:57:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5nqgZKYYdxPT; Thu, 17 Oct 2019 16:57:09 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 6DB4449DE8;
 Thu, 17 Oct 2019 16:57:09 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Subject: [PATCH] ARM: multi_v7_defconfig: enable MMP platforms
Date: Thu, 17 Oct 2019 16:57:05 +0200
Message-Id: <20191017145705.2867950-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_075715_470801_58582435 
X-CRM114-Status: UNSURE (   5.38  )
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
Cc: Olof Johansson <olof@lixom.net>, Lubomir Rintel <lkundrak@v3.sk>,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marvell MMP/PXA/MMP2 platforms seem to be excluded from the defconfig
for no good reasons. Enable the DT-based boards along with modules for
their peripherals.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
Compared to earlier version of this patch [1] this
- Removes unnecessary CONFIG_SERIAL_8250_PXA
- Enables MMP3 SoC (see [2])

[1] [RESEND PATCH] ARM: multi_v7_defconfig: enable MMP2 platform
    https://lore.kernel.org/lkml/20190828074204.287415-1-lkundrak@v3.sk/
[2] [GIT PULL] soc/arm/soc: Marvell MMP SoC changes for v5.5
    https://lore.kernel.org/linux-arm-kernel/3a035bed90f9d8acc49b2d11d20089b546062aea.camel@v3.sk/

 arch/arm/configs/multi_v7_defconfig | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index e4c8def9a0a57..40910918b8efe 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -53,6 +53,9 @@ CONFIG_ARCH_MEDIATEK=y
 CONFIG_ARCH_MESON=y
 CONFIG_ARCH_MILBEAUT=y
 CONFIG_ARCH_MILBEAUT_M10V=y
+CONFIG_ARCH_MMP=y
+CONFIG_MACH_MMP2_DT=y
+CONFIG_MACH_MMP3_DT=y
 CONFIG_ARCH_MVEBU=y
 CONFIG_MACH_ARMADA_370=y
 CONFIG_MACH_ARMADA_375=y
@@ -283,6 +286,7 @@ CONFIG_INPUT_EVDEV=y
 CONFIG_KEYBOARD_QT1070=m
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_TEGRA=y
+CONFIG_KEYBOARD_PXA27x=m
 CONFIG_KEYBOARD_SAMSUNG=m
 CONFIG_KEYBOARD_ST_KEYSCAN=y
 CONFIG_KEYBOARD_SPEAR=y
@@ -605,6 +609,7 @@ CONFIG_VIDEO_V4L2_SUBDEV_API=y
 CONFIG_MEDIA_USB_SUPPORT=y
 CONFIG_USB_VIDEO_CLASS=m
 CONFIG_V4L_PLATFORM_DRIVERS=y
+CONFIG_VIDEO_MMP_CAMERA=m
 CONFIG_VIDEO_ASPEED=m
 CONFIG_VIDEO_STM32_DCMI=m
 CONFIG_VIDEO_SAMSUNG_EXYNOS4_IS=m
@@ -702,6 +707,9 @@ CONFIG_SND_ATMEL_SOC_PDMIC=m
 CONFIG_SND_ATMEL_SOC_I2S=m
 CONFIG_SND_BCM2835_SOC_I2S=m
 CONFIG_SND_SOC_FSL_SAI=m
+CONFIG_SND_MMP_SOC=y
+CONFIG_SND_PXA_SOC_SSP=m
+CONFIG_SND_PXA910_SOC=m
 CONFIG_SND_SOC_ROCKCHIP=m
 CONFIG_SND_SOC_ROCKCHIP_SPDIF=m
 CONFIG_SND_SOC_ROCKCHIP_MAX98090=m
@@ -740,6 +748,7 @@ CONFIG_USB_EHCI_HCD=y
 CONFIG_USB_EHCI_HCD_STI=y
 CONFIG_USB_EHCI_TEGRA=y
 CONFIG_USB_EHCI_EXYNOS=y
+CONFIG_USB_EHCI_MV=m
 CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_STI=y
 CONFIG_USB_OHCI_EXYNOS=m
@@ -810,6 +819,7 @@ CONFIG_MMC_SDHCI_DOVE=y
 CONFIG_MMC_SDHCI_TEGRA=y
 CONFIG_MMC_SDHCI_S3C=y
 CONFIG_MMC_SDHCI_PXAV3=y
+CONFIG_MMC_SDHCI_PXAV2=m
 CONFIG_MMC_SDHCI_SPEAR=y
 CONFIG_MMC_SDHCI_S3C_DMA=y
 CONFIG_MMC_SDHCI_BCM_KONA=y
@@ -875,6 +885,7 @@ CONFIG_RTC_DRV_DA9063=m
 CONFIG_RTC_DRV_EFI=m
 CONFIG_RTC_DRV_DIGICOLOR=m
 CONFIG_RTC_DRV_S3C=m
+CONFIG_RTC_DRV_SA1100=m
 CONFIG_RTC_DRV_PL031=y
 CONFIG_RTC_DRV_AT91RM9200=m
 CONFIG_RTC_DRV_AT91SAM9=m
@@ -1020,6 +1031,7 @@ CONFIG_PHY_SUN9I_USB=y
 CONFIG_PHY_HIX5HD2_SATA=y
 CONFIG_PHY_BERLIN_SATA=y
 CONFIG_PHY_BERLIN_USB=y
+CONFIG_PHY_MMP3_USB=m
 CONFIG_PHY_CPCAP_USB=m
 CONFIG_PHY_QCOM_APQ8064_SATA=m
 CONFIG_PHY_RCAR_GEN2=m
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
