Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911C6870B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 06:37:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2FF0+73NSDLNqiV07pYKdJ9qgYfe0PZUw4JjPnXqGZo=; b=ZC6FQad5uFOmnN
	Rf52Lgj6KP+JiiV2EW2qxGyP5mL3xmeDsE7UYDEi7Iwz5izxIfpOoFzXXnyzxsCXXQ5UUhWd1dyqW
	DyP6xMy1a9movGYaEAWVPFF2LkbOjxMoI9/VN4mJMo+d/t+or5K+ejn8vTunoQ2UWU58Ch0Drrowa
	2pysihjgPeuuyimtGCr7fPf6VM7SlVXNigDy8baEGJ1uduA8mwBcSSEQiFPACmWVwFBDgq0SJGe4q
	DnbIFsNpT1oNgDXbeHpX9XrRS017G9G6OA//ug/5aHiSOElREJeS30UnYQreMd5F4yh8IUNNcbYsR
	OIUb3p0prhpZWCQEKexg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvwes-0006Mb-HG; Fri, 09 Aug 2019 04:37:42 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvweh-0006Lr-E4
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 04:37:33 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id 3917E21BA9;
 Fri,  9 Aug 2019 00:37:25 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Fri, 09 Aug 2019 00:37:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=4FHimcbCMY+I1omIJBES7VgYGl
 5XckWciRYWJ2MmcAw=; b=fON8ouhh32YfvctwQ7EYsmF3/de9yGe4ATZOIb25CI
 7roQEEXRAN3EirUs2SpHNT6vQF8kY+sNA9tP5g1BDuuQA61nGLdnI5U3knxydU5r
 MbQi7m07YUK2w32d9WcyPvDX951poVxixgQVv8LlmDrV0ip6ZXBsmy753s3jdXVZ
 7w1u9QfEeYPnUZuBd4NOxJdsF/Ncx8ZgZHNtthCGNt5nNJYKQOjJdDW+sXpnRjJO
 KZoVzTBJ+VA+CwONbAAgBeIN1kcRHbBxv2EtIH+cAT7auhjBa6GhfJXKCWt82dkD
 mbv4ocC74L/boGfSRqI2LlAZQt+0Z/zQJo0o7mL2BsEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4FHimcbCMY+I1omIJ
 BES7VgYGl5XckWciRYWJ2MmcAw=; b=A6tjv9izKyBCaGWFB0zFHjATk9PY8nCLp
 3YDDrKsHkA8ey7bWbeN0a3B5hYxCGK7D/z1IuPx5C9LzB60v3G8jprdCyvwo7NZ6
 ewOAC2KjuE9ag8qua1wEIQ5n1HIchiTUMSqgMHoz6PtIeguH+TOR3XsV1gBlRwGR
 tkN6N4jLrkWCXeshHWflmYfmVBJSC9f1NCbmb2oIXVP/Ltgx9NgjUcoDT9KWLfff
 fwew5SqhK7yJgAvbsHbCX/V+ZhTSodue9+CZ3Vpr3ZMS8IMvIqK/ObCHn9WeeuaF
 9UIICAjdzGdjScHt1YUxXIkzW/VfkuaAjHuJVdTsjD9q1qULbvtmg==
X-ME-Sender: <xms:hPhMXYwtpj1cqZkaiehzLUpg6rAeA4v2gw8WxmIq1xWb89Cu4-0V9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudduiedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomheptehlihhsthgrihhrucfhrhgrnhgtihhsuceorghlihhsthgrihhr
 segrlhhishhtrghirhdvfedrmhgvqeenucfkphepjeefrdelfedrkeegrddvtdeknecurf
 grrhgrmhepmhgrihhlfhhrohhmpegrlhhishhtrghirhesrghlihhsthgrihhrvdefrdhm
 vgenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:hPhMXWRKpmbCqrKSU00f5l9oODJck_Fj3RwAQkF4IGSLndIctrcHiA>
 <xmx:hPhMXQ8TEpDh7BunhOoaZekUvQFVYS0Ct_-ByVUMPo9mUHaqis14EA>
 <xmx:hPhMXUuVXQlP3sc5y0WCTFUW9x5rR9JwUNkLHibjRo15uztaA7m0qg>
 <xmx:hfhMXTzY40mTLryCTlPQIj9mtagsYbYqiXA-vXfAgF89gO7rDMpXng>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9F950380075;
 Fri,  9 Aug 2019 00:37:23 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64: defconfig: Cleanup the defconfig
Date: Thu,  8 Aug 2019 14:37:17 -0700
Message-Id: <20190808213718.12270-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_213731_674775_60E0225A 
X-CRM114-Status: UNSURE (   6.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alistair23@gmail.com, Alistair Francis <alistair@alistair23.me>,
 will@kernel.org, catalin.marinas@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Re-run savedefconfig to cleanup the defconfig.

Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 arch/arm64/configs/defconfig | 24 ++++++------------------
 1 file changed, 6 insertions(+), 18 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 0e58ef02880c..b17ed20e1754 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -88,7 +88,6 @@ CONFIG_ARM_TEGRA186_CPUFREQ=y
 CONFIG_ARM_SCPI_PROTOCOL=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_INTEL_STRATIX10_SERVICE=y
-CONFIG_TI_SCI_PROTOCOL=y
 CONFIG_EFI_CAPSULE_LOADER=y
 CONFIG_IMX_SCU=y
 CONFIG_IMX_SCU_PD=y
@@ -193,7 +192,6 @@ CONFIG_PCIE_QCOM=y
 CONFIG_PCIE_ARMADA_8K=y
 CONFIG_PCIE_KIRIN=y
 CONFIG_PCIE_HISI_STB=y
-CONFIG_PCIE_TEGRA194=m
 CONFIG_DEVTMPFS=y
 CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_HISILICON_LPC=y
@@ -260,18 +258,12 @@ CONFIG_HNS3_ENET=y
 CONFIG_E1000E=y
 CONFIG_IGB=y
 CONFIG_IGBVF=y
-CONFIG_MLX4_EN=m
-CONFIG_MLX4_CORE=m
-CONFIG_MLX4_DEBUG=y
-CONFIG_MLX4_CORE_GEN2=y
-CONFIG_MLX5_CORE=m
-CONFIG_MLX5_CORE_EN=y
-CONFIG_MLX5_EN_ARFS=y
-CONFIG_MLX5_EN_RXNFC=y
-CONFIG_MLX5_MPFS=y
 CONFIG_MVNETA=y
 CONFIG_MVPP2=y
 CONFIG_SKY2=y
+CONFIG_MLX4_EN=m
+CONFIG_MLX5_CORE=m
+CONFIG_MLX5_CORE_EN=y
 CONFIG_QCOM_EMAC=m
 CONFIG_RAVB=y
 CONFIG_SMC91X=y
@@ -386,8 +378,8 @@ CONFIG_SPI_PL022=y
 CONFIG_SPI_ROCKCHIP=y
 CONFIG_SPI_QUP=y
 CONFIG_SPI_S3C64XX=y
-CONFIG_SPI_SPIDEV=m
 CONFIG_SPI_SUN6I=y
+CONFIG_SPI_SPIDEV=m
 CONFIG_SPMI=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_PINCTRL_MAX77620=y
@@ -593,7 +585,6 @@ CONFIG_USB_GADGET=y
 CONFIG_USB_RENESAS_USBHS_UDC=m
 CONFIG_USB_RENESAS_USB3=m
 CONFIG_TYPEC=m
-CONFIG_TYPEC_HD3SS3220=m
 CONFIG_MMC=y
 CONFIG_MMC_BLOCK_MINORS=32
 CONFIG_MMC_ARMMMCI=y
@@ -648,9 +639,9 @@ CONFIG_RTC_DRV_SNVS=m
 CONFIG_RTC_DRV_IMX_SC=m
 CONFIG_RTC_DRV_XGENE=y
 CONFIG_DMADEVICES=y
-CONFIG_FSL_EDMA=y
 CONFIG_DMA_BCM2835=m
 CONFIG_DMA_SUN6I=m
+CONFIG_FSL_EDMA=y
 CONFIG_K3_DMA=y
 CONFIG_MV_XOR=y
 CONFIG_MV_XOR_V2=y
@@ -696,7 +687,6 @@ CONFIG_ARM_MHU=y
 CONFIG_IMX_MBOX=y
 CONFIG_PLATFORM_MHU=y
 CONFIG_BCM2835_MBOX=y
-CONFIG_TI_MESSAGE_MANAGER=y
 CONFIG_QCOM_APCS_IPC=y
 CONFIG_ROCKCHIP_IOMMU=y
 CONFIG_TEGRA_IOMMU_SMMU=y
@@ -736,9 +726,7 @@ CONFIG_ARCH_TEGRA_186_SOC=y
 CONFIG_ARCH_TEGRA_194_SOC=y
 CONFIG_ARCH_K3_AM6_SOC=y
 CONFIG_ARCH_K3_J721E_SOC=y
-CONFIG_SOC_TI=y
 CONFIG_TI_SCI_PM_DOMAINS=y
-CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
 CONFIG_EXTCON_USB_GPIO=y
 CONFIG_EXTCON_USBC_CROS_EC=y
 CONFIG_MEMORY=y
@@ -783,11 +771,11 @@ CONFIG_PHY_TEGRA_XUSB=y
 CONFIG_HISI_PMU=y
 CONFIG_QCOM_L2_PMU=y
 CONFIG_QCOM_L3_PMU=y
-CONFIG_NVMEM_SUNXI_SID=y
 CONFIG_NVMEM_IMX_OCOTP=y
 CONFIG_NVMEM_IMX_OCOTP_SCU=y
 CONFIG_QCOM_QFPROM=y
 CONFIG_ROCKCHIP_EFUSE=y
+CONFIG_NVMEM_SUNXI_SID=y
 CONFIG_UNIPHIER_EFUSE=y
 CONFIG_MESON_EFUSE=m
 CONFIG_FPGA=y
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
