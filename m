Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D84D011488B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 22:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYNyj5rSQFNXnZYaQZ9fhByoMdws2ceBizmO5jQzNYM=; b=cUhLLfnX+YLYsu
	FxmpGX0h7R4Jc+6b4gUIW9jB3ysENwpN+nlJO0PRQL7N0pOQ8jNQAa2u3SSsgJILU97L8+CGXcAZv
	dwcA8P/mlbAlHBBBw9uzvBh0BoUk+B7yPQWKZdJNJ0bUhJ/YDZxxSTdd4RT4VhsL1pyTiTsaOyjwL
	tSb4pS3uC/t+/+gGBoP8tmQ+mi50pM8cj9aPWW+pHOPVaT/cbKWC3/5J1BQ8HBLdKuPzYm28w5EXF
	ISMLOY/1soPzq5kKYSGt15KqirX82HHrrs1b754CIHQyc29v2ap4b8w0XgxVHZe+E6Oc7Io6ojiEu
	2+Vyc1azJvaKZsfLN2Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icyTC-0005mh-SH; Thu, 05 Dec 2019 21:15:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icySZ-00047p-Hj
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 21:14:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id bb5so1758020plb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 13:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uTYH7Cua69eU7fRwawuYEnsRsmkyXTTib1LRt4MzJLA=;
 b=1PFOrOtxwWj/Gn663ih0XWANJ5FmvgwpkeY3dkHL4FCdhePH5qDPEeILWayMUrkZy1
 FXIIE7igMJdZA9T7fcY2LN95/XqVAn2TuQAd+BFl49Lx3QPvG4pAjWbwrs9xyZfnLUe9
 /0AofQTLweC2ZhbsvyK+p8tDc3hEG5bYTF39Qn55n1UZDH1zQmcBTRNdK160k7S3YaCo
 klLBOabwE8iOzEZgYrgnxNqvuhRemJ/uoh8FbY74l5fR8xjWRRb/S0BEMHqhzF+DSsvo
 4vd8yDy7GI72zjNmu5ZGFYt3CEimngutlddwvgCktWOttclVPECX5k5lnVoEF9pX6Nu2
 6KUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uTYH7Cua69eU7fRwawuYEnsRsmkyXTTib1LRt4MzJLA=;
 b=fjqaPcUamHqQtthxLhLFIKUp6lBtsGr66d4z9aRJsa6qMq/LD0eZyqdKc/uQQMs3G3
 KMuh7Rwn5mFHKjlrZj3bAUVjkfgwTDnfHYnowzGl1vOrtaJcZaV+eh0iKMEZsSLP7RVv
 n4drA/0WTIqqW3skxR2RO7M+9X1TBhuDhlEalyskrZYJIMIdOzH+wmLMW4jk9apNjGEh
 TEvxFusT/jXIP57aote1bFee/pW00JmfVfrMSJ/Yl3RySqsaOmw0lIHDSV+uIYhf1+K8
 QQFPD48+6zdzcWnNGkZLtzlu9wEGFeVOo4qRe9+5unNvNkddgPp7NNAJ7CRIXS3ix+4P
 4XzA==
X-Gm-Message-State: APjAAAXTWovwKGbsth1iwIY3FwI88kZ27BqNC+bm0Kt/eyXePojzZ+PU
 2rq8W074fQnFXY7B3njwH5tYe/lX8vqkBA==
X-Google-Smtp-Source: APXvYqzkxNYPSQz3U2EmBKqhp91kikd7rv8jVunJoy51zGdDkUH3occBu3cCTH6RTER+xu/ADAkV+g==
X-Received: by 2002:a17:902:8646:: with SMTP id
 y6mr3460515plt.191.1575580490442; 
 Thu, 05 Dec 2019 13:14:50 -0800 (PST)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id x33sm358483pga.86.2019.12.05.13.14.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Dec 2019 13:14:49 -0800 (PST)
From: Olof Johansson <olof@lixom.net>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] arm64: defconfig: re-run savedefconfig
Date: Thu,  5 Dec 2019 13:14:38 -0800
Message-Id: <20191205211438.27552-3-olof@lixom.net>
X-Mailer: git-send-email 2.22.GIT
In-Reply-To: <20191205211438.27552-1-olof@lixom.net>
References: <20191205211438.27552-1-olof@lixom.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_131451_590033_05449700 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
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
 arch/arm64/configs/defconfig | 36 +++++++++---------------------------
 1 file changed, 9 insertions(+), 27 deletions(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 47d1b8fb1969..6a83ba2aea3e 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -7,8 +7,6 @@ CONFIG_PREEMPT=y
 CONFIG_IRQ_TIME_ACCOUNTING=y
 CONFIG_BSD_PROCESS_ACCT=y
 CONFIG_BSD_PROCESS_ACCT_V3=y
-CONFIG_TASKSTATS=y
-CONFIG_TASK_DELAY_ACCT=y
 CONFIG_TASK_XACCT=y
 CONFIG_TASK_IO_ACCOUNTING=y
 CONFIG_IKCONFIG=y
@@ -94,7 +92,6 @@ CONFIG_ARM_SCPI_PROTOCOL=y
 CONFIG_RASPBERRYPI_FIRMWARE=y
 CONFIG_INTEL_STRATIX10_SERVICE=y
 CONFIG_INTEL_STRATIX10_RSU=m
-CONFIG_TI_SCI_PROTOCOL=y
 CONFIG_EFI_CAPSULE_LOADER=y
 CONFIG_IMX_SCU=y
 CONFIG_IMX_SCU_PD=y
@@ -118,8 +115,6 @@ CONFIG_CRYPTO_AES_ARM64_CE_CCM=y
 CONFIG_CRYPTO_AES_ARM64_CE_BLK=y
 CONFIG_CRYPTO_CHACHA20_NEON=m
 CONFIG_CRYPTO_AES_ARM64_BS=m
-CONFIG_CRYPTO_DEV_ALLWINNER=y
-CONFIG_CRYPTO_DEV_SUN8I_CE=m
 CONFIG_JUMP_LABEL=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
@@ -127,7 +122,6 @@ CONFIG_MODULE_UNLOAD=y
 CONFIG_KSM=y
 CONFIG_MEMORY_FAILURE=y
 CONFIG_TRANSPARENT_HUGEPAGE=y
-CONFIG_CMA=y
 CONFIG_NET=y
 CONFIG_PACKET=y
 CONFIG_UNIX=y
@@ -211,7 +205,6 @@ CONFIG_HISILICON_LPC=y
 CONFIG_SIMPLE_PM_BUS=y
 CONFIG_MTD=y
 CONFIG_MTD_BLOCK=y
-CONFIG_MTD_M25P80=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_DENALI_DT=y
 CONFIG_MTD_NAND_MARVELL=y
@@ -272,18 +265,12 @@ CONFIG_HNS3_ENET=y
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
@@ -292,11 +279,11 @@ CONFIG_SNI_AVE=y
 CONFIG_SNI_NETSEC=y
 CONFIG_STMMAC_ETH=m
 CONFIG_MDIO_BUS_MUX_MMIOREG=y
-CONFIG_AT803X_PHY=y
 CONFIG_MARVELL_PHY=m
 CONFIG_MARVELL_10G_PHY=m
 CONFIG_MESON_GXL_PHY=m
 CONFIG_MICREL_PHY=y
+CONFIG_AT803X_PHY=y
 CONFIG_REALTEK_PHY=m
 CONFIG_ROCKCHIP_PHY=y
 CONFIG_USB_PEGASUS=m
@@ -402,8 +389,8 @@ CONFIG_SPI_PL022=y
 CONFIG_SPI_ROCKCHIP=y
 CONFIG_SPI_QUP=y
 CONFIG_SPI_S3C64XX=y
-CONFIG_SPI_SPIDEV=m
 CONFIG_SPI_SUN6I=y
+CONFIG_SPI_SPIDEV=m
 CONFIG_SPMI=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_PINCTRL_MAX77620=y
@@ -477,8 +464,6 @@ CONFIG_MFD_ALTERA_SYSMGR=y
 CONFIG_MFD_BD9571MWV=y
 CONFIG_MFD_AXP20X_I2C=y
 CONFIG_MFD_AXP20X_RSB=y
-CONFIG_MFD_CROS_EC=y
-CONFIG_MFD_CROS_EC_CHARDEV=m
 CONFIG_MFD_EXYNOS_LPASS=m
 CONFIG_MFD_HI6421_PMIC=y
 CONFIG_MFD_HI655X_PMIC=y
@@ -673,9 +658,9 @@ CONFIG_RTC_DRV_SNVS=m
 CONFIG_RTC_DRV_IMX_SC=m
 CONFIG_RTC_DRV_XGENE=y
 CONFIG_DMADEVICES=y
-CONFIG_FSL_EDMA=y
 CONFIG_DMA_BCM2835=m
 CONFIG_DMA_SUN6I=m
+CONFIG_FSL_EDMA=y
 CONFIG_IMX_SDMA=y
 CONFIG_K3_DMA=y
 CONFIG_MV_XOR=y
@@ -694,6 +679,7 @@ CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_XEN_GNTDEV=y
 CONFIG_XEN_GRANT_DEV_ALLOC=y
+CONFIG_MFD_CROS_EC=y
 CONFIG_CROS_EC_I2C=y
 CONFIG_CROS_EC_SPI=y
 CONFIG_COMMON_CLK_RK808=y
@@ -727,7 +713,6 @@ CONFIG_ARM_MHU=y
 CONFIG_IMX_MBOX=y
 CONFIG_PLATFORM_MHU=y
 CONFIG_BCM2835_MBOX=y
-CONFIG_TI_MESSAGE_MANAGER=y
 CONFIG_QCOM_APCS_IPC=y
 CONFIG_ROCKCHIP_IOMMU=y
 CONFIG_TEGRA_IOMMU_SMMU=y
@@ -743,7 +728,6 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
 CONFIG_RPMSG_QCOM_SMD=y
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_IMX_SCU_SOC=y
-CONFIG_QCOM_COMMAND_DB=y
 CONFIG_QCOM_GENI_SE=y
 CONFIG_QCOM_GLINK_SSR=m
 CONFIG_QCOM_RPMH=y
@@ -769,9 +753,7 @@ CONFIG_ARCH_TEGRA_186_SOC=y
 CONFIG_ARCH_TEGRA_194_SOC=y
 CONFIG_ARCH_K3_AM6_SOC=y
 CONFIG_ARCH_K3_J721E_SOC=y
-CONFIG_SOC_TI=y
 CONFIG_TI_SCI_PM_DOMAINS=y
-CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
 CONFIG_EXTCON_USB_GPIO=y
 CONFIG_EXTCON_USBC_CROS_EC=y
 CONFIG_MEMORY=y
@@ -819,11 +801,11 @@ CONFIG_FSL_IMX8_DDR_PMU=m
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
@@ -862,8 +844,8 @@ CONFIG_NLS_ISO8859_1=y
 CONFIG_SECURITY=y
 CONFIG_CRYPTO_ECHAINIV=y
 CONFIG_CRYPTO_ANSI_CPRNG=y
+CONFIG_CRYPTO_DEV_SUN8I_CE=m
 CONFIG_CRYPTO_DEV_HISI_ZIP=m
-CONFIG_DMA_CMA=y
 CONFIG_CMA_SIZE_MBYTES=32
 CONFIG_PRINTK_TIME=y
 CONFIG_DEBUG_INFO=y
-- 
2.22.GIT


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
