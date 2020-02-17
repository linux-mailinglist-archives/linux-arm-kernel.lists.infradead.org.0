Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B1C160A1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 06:37:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lbw+LW85n1kzVBthzN7/4FYFfzWkzgY/j90pDYBNIgI=; b=Vb/sVYt9nsHVRc
	WVRPr022l6OyH26jb15CxBmL8OSvcagt4bmS/2+bkf8SKUvQTtsrcM+XuV47SF6H/P4SEMeOsMs3N
	RMFPwCVz6NWhj/dEA31QUQMEBOkRA0NRftQgY4pGFTGufIDKWO77F/ec0JjkJkvJck37OGgQcAzWf
	GBrseKFF6YQoBGGik47Du1UmpVGke0BYyxrb4X50ENbQuPsO5DmJNBEiBFTPd3gUY9K6dS/1bw/4w
	LpA8K2/EXesMFBPNTn1n5fdITQA8chfWEZvBOEwbGk8vSVTNeaSCnnnwllEUbUl7LGo/F0tvdD1CB
	g2viW28u5vMRG1ZfmYSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Z6I-0003I6-C2; Mon, 17 Feb 2020 05:37:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Z68-0003Hm-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 05:37:37 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF3C62070B;
 Mon, 17 Feb 2020 05:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581917856;
 bh=unfmFnitAn3ULD2EiZ9N5afDChhssTAoUZn608gzigw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J5EONw1cBr5rl5H1taTsc5vQitbgVa2Gywgq7gT/8dbdJ25u4IWX/PxtAptcByMXH
 vYa931VwzU/rjiZoY5KGad+IfMtWeZbPIlrE6A/riidRx0upJpnx/NAg+fB7DDCl4u
 z3xu46ORR+Ra2yP4cLWrQewxMmB06IWLC6NKR3aU=
Date: Mon, 17 Feb 2020 13:37:30 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH 2/2] arm64: defconfig: enable additional drivers needed
 by NXP QorIQ boards
Message-ID: <20200217053730.GB6042@dragon>
References: <1581382559-18520-1-git-send-email-leoyang.li@nxp.com>
 <1581382559-18520-2-git-send-email-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581382559-18520-2-git-send-email-leoyang.li@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_213736_368867_80254949 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.2 UPPERCASE_75_100       message body is 75-100% uppercase
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 06:55:59PM -0600, Li Yang wrote:
> This enables the following SoC device drivers for NXP/FSL QorIQ SoCs:
> CONFIG_QORIQ_CPUFREQ=y
> CONFIG_NET_SWITCHDEV=y
> CONFIG_MSCC_OCELOT_SWITCH=y
> CONFIG_CAN=m
> CONFIG_CAN_FLEXCAN=m
> CONFIG_FSL_MC_BUS=y
> CONFIG_MTD_NAND_FSL_IFC=y
> CONFIG_FSL_ENETC=y
> CONFIG_FSL_ENETC_VF=y
> CONFIG_SPI_FSL_LPSPI=y
> CONFIG_SPI_FSL_QUADSPI=y
> CONFIG_SPI_FSL_DSPI=y
> CONFIG_GPIO_MPC8XXX=y
> CONFIG_ARM_SBSA_WATCHDOG=y
> CONFIG_DRM_MALI_DISPLAY=m
> CONFIG_FSL_MC_DPIO=y
> CONFIG_CRYPTO_DEV_FSL_DPAA2_CAAM=m
> CONFIG_FSL_DPAA=y
> CONFIG_FSL_FMAN=y
> CONFIG_FSL_DPAA_ETH=y
> CONFIG_FSL_DPAA2_ETH=y
> 
> And the drivers for on-board devices for the upstreamed QorIQ reference
> boards:
> CONFIG_MTD_CFI=y
> CONFIG_MTD_CFI_ADV_OPTIONS=y
> CONFIG_MTD_CFI_INTELEXT=y
> CONFIG_MTD_CFI_AMDSTD=y
> CONFIG_MTD_CFI_STAA=y
> CONFIG_MTD_PHYSMAP=y
> CONFIG_MTD_PHYSMAP_OF=y
> CONFIG_MTD_DATAFLASH=y
> CONFIG_MTD_SST25L=y
> CONFIG_EEPROM_AT24=m
> CONFIG_RTC_DRV_DS1307=y
> CONFIG_RTC_DRV_PCF85363=y
> CONFIG_RTC_DRV_PCF2127=y
> CONFIG_E1000=y
> CONFIG_AQUANTIA_PHY=y
> CONFIG_MICROSEMI_PHY=y
> CONFIG_VITESSE_PHY=y
> CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
> CONFIG_MUX_MMIO=y
> 
> The following two options are implied by new options and removed from
> defconfig:
> CONFIG_CLK_QORIQ=y
> CONFIG_MEMORY=y
> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>

This is too much change in a single patch. It should be split properly
to make review and merge easier, considering arm-soc folks are cautious
to those 'y' options.

Shawn

> ---
>  arch/arm64/configs/defconfig | 42 ++++++++++++++++++++++++++++++++++--
>  1 file changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 618001ef5c81..0732d5aaf2cb 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -90,6 +90,7 @@ CONFIG_ARM_QCOM_CPUFREQ_NVMEM=y
>  CONFIG_ARM_QCOM_CPUFREQ_HW=y
>  CONFIG_ARM_RASPBERRYPI_CPUFREQ=m
>  CONFIG_ARM_TEGRA186_CPUFREQ=y
> +CONFIG_QORIQ_CPUFREQ=y
>  CONFIG_ARM_SCPI_PROTOCOL=y
>  CONFIG_RASPBERRYPI_FIRMWARE=y
>  CONFIG_INTEL_STRATIX10_SERVICE=y
> @@ -157,10 +158,13 @@ CONFIG_BRIDGE_VLAN_FILTERING=y
>  CONFIG_VLAN_8021Q=m
>  CONFIG_VLAN_8021Q_GVRP=y
>  CONFIG_VLAN_8021Q_MVRP=y
> +CONFIG_NET_SWITCHDEV=y
>  CONFIG_QRTR=m
>  CONFIG_QRTR_SMD=m
>  CONFIG_QRTR_TUN=m
>  CONFIG_BPF_JIT=y
> +CONFIG_CAN=m
> +CONFIG_CAN_FLEXCAN=m
>  CONFIG_BT=m
>  CONFIG_BT_HIDP=m
>  # CONFIG_BT_HS is not set
> @@ -207,11 +211,22 @@ CONFIG_FW_LOADER_USER_HELPER=y
>  CONFIG_FW_LOADER_USER_HELPER_FALLBACK=y
>  CONFIG_HISILICON_LPC=y
>  CONFIG_SIMPLE_PM_BUS=y
> +CONFIG_FSL_MC_BUS=y
>  CONFIG_MTD=y
>  CONFIG_MTD_BLOCK=y
> +CONFIG_MTD_CFI=y
> +CONFIG_MTD_CFI_ADV_OPTIONS=y
> +CONFIG_MTD_CFI_INTELEXT=y
> +CONFIG_MTD_CFI_AMDSTD=y
> +CONFIG_MTD_CFI_STAA=y
> +CONFIG_MTD_PHYSMAP=y
> +CONFIG_MTD_PHYSMAP_OF=y
> +CONFIG_MTD_DATAFLASH=y
> +CONFIG_MTD_SST25L=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_DENALI_DT=y
>  CONFIG_MTD_NAND_MARVELL=y
> +CONFIG_MTD_NAND_FSL_IFC=y
>  CONFIG_MTD_NAND_QCOM=y
>  CONFIG_MTD_SPI_NOR=y
>  CONFIG_SPI_CADENCE_QUADSPI=y
> @@ -220,6 +235,7 @@ CONFIG_BLK_DEV_NBD=m
>  CONFIG_VIRTIO_BLK=y
>  CONFIG_BLK_DEV_NVME=m
>  CONFIG_SRAM=y
> +CONFIG_EEPROM_AT24=m
>  CONFIG_EEPROM_AT25=m
>  # CONFIG_SCSI_PROC_FS is not set
>  CONFIG_BLK_DEV_SD=y
> @@ -261,12 +277,18 @@ CONFIG_BNX2X=m
>  CONFIG_MACB=y
>  CONFIG_THUNDER_NIC_PF=y
>  CONFIG_FEC=y
> +CONFIG_FSL_FMAN=y
> +CONFIG_FSL_DPAA_ETH=y
> +CONFIG_FSL_DPAA2_ETH=y
> +CONFIG_FSL_ENETC=y
> +CONFIG_FSL_ENETC_VF=y
>  CONFIG_HIX5HD2_GMAC=y
>  CONFIG_HNS_DSAF=y
>  CONFIG_HNS_ENET=y
>  CONFIG_HNS3=y
>  CONFIG_HNS3_HCLGE=y
>  CONFIG_HNS3_ENET=y
> +CONFIG_E1000=y
>  CONFIG_E1000E=y
>  CONFIG_IGB=y
>  CONFIG_IGBVF=y
> @@ -276,6 +298,7 @@ CONFIG_SKY2=y
>  CONFIG_MLX4_EN=m
>  CONFIG_MLX5_CORE=m
>  CONFIG_MLX5_CORE_EN=y
> +CONFIG_MSCC_OCELOT_SWITCH=y
>  CONFIG_QCOM_EMAC=m
>  CONFIG_RAVB=y
>  CONFIG_SMC91X=y
> @@ -284,13 +307,17 @@ CONFIG_SNI_AVE=y
>  CONFIG_SNI_NETSEC=y
>  CONFIG_STMMAC_ETH=m
>  CONFIG_MDIO_BUS_MUX_MMIOREG=y
> +CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
> +CONFIG_AQUANTIA_PHY=y
>  CONFIG_MARVELL_PHY=m
>  CONFIG_MARVELL_10G_PHY=m
>  CONFIG_MESON_GXL_PHY=m
>  CONFIG_MICREL_PHY=y
> +CONFIG_MICROSEMI_PHY=y
>  CONFIG_AT803X_PHY=y
>  CONFIG_REALTEK_PHY=m
>  CONFIG_ROCKCHIP_PHY=y
> +CONFIG_VITESSE_PHY=y
>  CONFIG_USB_PEGASUS=m
>  CONFIG_USB_RTL8150=m
>  CONFIG_USB_RTL8152=m
> @@ -388,8 +415,11 @@ CONFIG_SPI=y
>  CONFIG_SPI_ARMADA_3700=y
>  CONFIG_SPI_BCM2835=m
>  CONFIG_SPI_BCM2835AUX=m
> +CONFIG_SPI_FSL_LPSPI=y
> +CONFIG_SPI_FSL_QUADSPI=y
>  CONFIG_SPI_NXP_FLEXSPI=y
>  CONFIG_SPI_IMX=m
> +CONFIG_SPI_FSL_DSPI=y
>  CONFIG_SPI_MESON_SPICC=m
>  CONFIG_SPI_MESON_SPIFC=m
>  CONFIG_SPI_ORION=y
> @@ -424,6 +454,7 @@ CONFIG_PINCTRL_SM8150=y
>  CONFIG_GPIO_ALTERA=m
>  CONFIG_GPIO_DWAPB=y
>  CONFIG_GPIO_MB86S7X=y
> +CONFIG_GPIO_MPC8XXX=y
>  CONFIG_GPIO_PL061=y
>  CONFIG_GPIO_RCAR=y
>  CONFIG_GPIO_UNIPHIER=y
> @@ -466,6 +497,7 @@ CONFIG_QCOM_SPMI_TEMP_ALARM=m
>  CONFIG_UNIPHIER_THERMAL=y
>  CONFIG_WATCHDOG=y
>  CONFIG_ARM_SP805_WATCHDOG=y
> +CONFIG_ARM_SBSA_WATCHDOG=y
>  CONFIG_S3C2410_WATCHDOG=y
>  CONFIG_DW_WATCHDOG=y
>  CONFIG_SUNXI_WATCHDOG=m
> @@ -531,6 +563,7 @@ CONFIG_VIDEO_RENESAS_FCP=m
>  CONFIG_VIDEO_RENESAS_VSP1=m
>  CONFIG_DRM=m
>  CONFIG_DRM_I2C_NXP_TDA998X=m
> +CONFIG_DRM_MALI_DISPLAY=m
>  CONFIG_DRM_NOUVEAU=m
>  CONFIG_DRM_EXYNOS=m
>  CONFIG_DRM_EXYNOS5433_DECON=y
> @@ -664,11 +697,14 @@ CONFIG_LEDS_TRIGGER_PANIC=y
>  CONFIG_EDAC=y
>  CONFIG_EDAC_GHES=y
>  CONFIG_RTC_CLASS=y
> +CONFIG_RTC_DRV_DS1307=y
>  CONFIG_RTC_DRV_MAX77686=y
>  CONFIG_RTC_DRV_RK808=m
> +CONFIG_RTC_DRV_PCF85363=y
>  CONFIG_RTC_DRV_RX8581=m
>  CONFIG_RTC_DRV_S5M=y
>  CONFIG_RTC_DRV_DS3232=y
> +CONFIG_RTC_DRV_PCF2127=y
>  CONFIG_RTC_DRV_EFI=y
>  CONFIG_RTC_DRV_CROS_EC=y
>  CONFIG_RTC_DRV_S3C=y
> @@ -709,7 +745,6 @@ CONFIG_COMMON_CLK_RK808=y
>  CONFIG_COMMON_CLK_SCPI=y
>  CONFIG_COMMON_CLK_CS2000_CP=y
>  CONFIG_COMMON_CLK_S2MPS11=y
> -CONFIG_CLK_QORIQ=y
>  CONFIG_COMMON_CLK_PWM=y
>  CONFIG_CLK_RASPBERRYPI=m
>  CONFIG_CLK_IMX8MM=y
> @@ -753,6 +788,8 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
>  CONFIG_RPMSG_QCOM_SMD=y
>  CONFIG_OWL_PM_DOMAINS=y
>  CONFIG_RASPBERRYPI_POWER=y
> +CONFIG_FSL_DPAA=y
> +CONFIG_FSL_MC_DPIO=y
>  CONFIG_IMX_SCU_SOC=y
>  CONFIG_QCOM_AOSS_QMP=y
>  CONFIG_QCOM_GENI_SE=y
> @@ -785,7 +822,6 @@ CONFIG_ARCH_K3_J721E_SOC=y
>  CONFIG_TI_SCI_PM_DOMAINS=y
>  CONFIG_EXTCON_USB_GPIO=y
>  CONFIG_EXTCON_USBC_CROS_EC=y
> -CONFIG_MEMORY=y
>  CONFIG_IIO=y
>  CONFIG_EXYNOS_ADC=y
>  CONFIG_QCOM_SPMI_ADC5=m
> @@ -849,6 +885,7 @@ CONFIG_FPGA_REGION=m
>  CONFIG_OF_FPGA_REGION=m
>  CONFIG_TEE=y
>  CONFIG_OPTEE=y
> +CONFIG_MUX_MMIO=y
>  CONFIG_EXT2_FS=y
>  CONFIG_EXT3_FS=y
>  CONFIG_EXT4_FS_POSIX_ACL=y
> @@ -880,6 +917,7 @@ CONFIG_CRYPTO_ANSI_CPRNG=y
>  CONFIG_CRYPTO_USER_API_RNG=m
>  CONFIG_CRYPTO_DEV_SUN8I_CE=m
>  CONFIG_CRYPTO_DEV_FSL_CAAM=m
> +CONFIG_CRYPTO_DEV_FSL_DPAA2_CAAM=m
>  CONFIG_CRYPTO_DEV_QCOM_RNG=m
>  CONFIG_CRYPTO_DEV_HISI_ZIP=m
>  CONFIG_CMA_SIZE_MBYTES=32
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
