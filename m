Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC7019BF25
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 12:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwVLgBkwAXfq7dOEvv9aI1Dfjx3+H8uKBkaO2Qus0RE=; b=DCJ6uBQTTeNAhS
	odKcjpWU7UouuBd2HEWPPRBiK5x8gxbVZlw0nn4JLb17LGw9rV9pP7QF2kmIkt5K92clIon3Tuwuv
	Nd1IETy+LvlN3U6b/XVMYniwBZbUpa2V0K0FbT4cToW0jksbFoSZ4993SgGGJDBo4N3tCX2sFWhNn
	UNjmAprUR1Vq8bBlp0HWduwFJrPcScDGwMH9eBJLQb/6nvXnoBLnofnH4HSGhQnYD3dZiKuCZWm1f
	z3ZjDePKKu+z/IGlBxbhwa1jO4M3JpzPa5oouyFXoSxD3s0IZQpNTgdytcPJw+DNmk18+aVdY9hg6
	Bv6at3Qf9mgfptGRdfoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwpM-0004Bj-MJ; Thu, 02 Apr 2020 10:12:00 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwpE-0004BK-1H
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 10:11:53 +0000
IronPort-SDR: RA1NyTF4uVItJrT5tMzI1np2NJINNXbL1jOMuVj2JH7bl0zSYEVqusxxdaMvnBoo8W4y97+iCH
 DVGrVVXwLvUQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 03:11:51 -0700
IronPort-SDR: 5Ol59ojbG8TQbWA9M2qTweVS+xpHJzdJxRr+kr9yxFpwijRH7C1igmvBhTWfPkDar3rMJhY5qs
 6Kv6KwOM52vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,335,1580803200"; d="scan'208";a="240782641"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.87])
 ([10.237.72.87])
 by fmsmga007.fm.intel.com with ESMTP; 02 Apr 2020 03:11:48 -0700
Subject: Re: [PATCH v2 2/4] sdhci: arasan: Add support for Versal Tap Delays
To: Manish Narani <manish.narani@xilinx.com>, ulf.hansson@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com
References: <1585546879-91037-1-git-send-email-manish.narani@xilinx.com>
 <1585546879-91037-3-git-send-email-manish.narani@xilinx.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <4268fa5d-f32d-6231-287c-7ffb159c1b34@intel.com>
Date: Thu, 2 Apr 2020 13:11:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1585546879-91037-3-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_031152_090639_F18EAB3F 
X-CRM114-Status: GOOD (  23.53  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/03/20 8:41 am, Manish Narani wrote:
> Add support to set tap delays for Xilinx Versal SD controller. The tap
> delay registers have moved to SD controller space in Versal. Make the
> changes accordingly.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 175 +++++++++++++++++++++++++++++
>  1 file changed, 175 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 0146d7dd315b..34403b2cac97 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -28,15 +28,26 @@
>  #include "sdhci-pltfm.h"
>  
>  #define SDHCI_ARASAN_VENDOR_REGISTER	0x78
> +
> +#define SDHCI_ARASAN_ITAPDLY_REGISTER	0xF0F8
> +#define SDHCI_ARASAN_OTAPDLY_REGISTER	0xF0FC
> +
>  #define SDHCI_ARASAN_CQE_BASE_ADDR	0x200
>  #define VENDOR_ENHANCED_STROBE		BIT(0)
>  
>  #define PHY_CLK_TOO_SLOW_HZ		400000
>  
> +#define SDHCI_ITAPDLY_CHGWIN		0x200
> +#define SDHCI_ITAPDLY_ENABLE		0x100
> +#define SDHCI_OTAPDLY_ENABLE		0x40
> +
>  /* Default settings for ZynqMP Clock Phases */
>  #define ZYNQMP_ICLK_PHASE {0, 63, 63, 0, 63,  0,   0, 183, 54,  0, 0}
>  #define ZYNQMP_OCLK_PHASE {0, 72, 60, 0, 60, 72, 135, 48, 72, 135, 0}
>  
> +#define VERSAL_ICLK_PHASE {0, 132, 132, 0, 132, 0, 0, 162, 90, 0, 0}
> +#define VERSAL_OCLK_PHASE {0,  60, 48, 0, 48, 72, 90, 36, 60, 90, 0}
> +
>  /*
>   * On some SoCs the syscon area has a feature where the upper 16-bits of
>   * each 32-bit register act as a write mask for the lower 16-bits.  This allows
> @@ -566,6 +577,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>  		.compatible = "xlnx,zynqmp-8.9a",
>  		.data = &sdhci_arasan_zynqmp_data,
>  	},
> +	{
> +		.compatible = "xlnx,versal-8.9a",
> +		.data = &sdhci_arasan_zynqmp_data,
> +	},
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
> @@ -768,6 +783,152 @@ static const struct clk_ops zynqmp_sampleclk_ops = {
>  	.set_phase = sdhci_zynqmp_sampleclk_set_phase,
>  };
>  
> +/**
> + * sdhci_versal_sdcardclk_set_phase - Set the SD Output Clock Tap Delays
> + *
> + * Set the SD Output Clock Tap Delays for Output path
> + *
> + * @hw:			Pointer to the hardware clock structure.
> + * @degrees		The clock phase shift between 0 - 359.
> + * Return: 0 on success and error value on error
> + */
> +static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
> +{
> +	struct sdhci_arasan_clk_data *clk_data =
> +		container_of(hw, struct sdhci_arasan_clk_data, sdcardclk_hw);
> +	struct sdhci_arasan_data *sdhci_arasan =
> +		container_of(clk_data, struct sdhci_arasan_data, clk_data);
> +	struct sdhci_host *host = sdhci_arasan->host;
> +	u8 tap_delay, tap_max = 0;
> +	int ret;
> +
> +	/*
> +	 * This is applicable for SDHCI_SPEC_300 and above
> +	 * Versal does not set phase for <=25MHz clock.
> +	 * If degrees is zero, no need to do anything.
> +	 */
> +	if (host->version < SDHCI_SPEC_300 ||
> +	    host->timing == MMC_TIMING_LEGACY ||
> +	    host->timing == MMC_TIMING_UHS_SDR12 || !degrees)
> +		return 0;
> +
> +	switch (host->timing) {
> +	case MMC_TIMING_MMC_HS:
> +	case MMC_TIMING_SD_HS:
> +	case MMC_TIMING_UHS_SDR25:
> +	case MMC_TIMING_UHS_DDR50:
> +	case MMC_TIMING_MMC_DDR52:
> +		/* For 50MHz clock, 30 Taps are available */
> +		tap_max = 30;
> +		break;
> +	case MMC_TIMING_UHS_SDR50:
> +		/* For 100MHz clock, 15 Taps are available */
> +		tap_max = 15;
> +		break;
> +	case MMC_TIMING_UHS_SDR104:
> +	case MMC_TIMING_MMC_HS200:
> +		/* For 200MHz clock, 8 Taps are available */
> +		tap_max = 8;
> +	default:
> +		break;
> +	}
> +
> +	tap_delay = (degrees * tap_max) / 360;
> +
> +	/* Set the Clock Phase */
> +	if (tap_delay) {
> +		u32 regval;
> +
> +		regval = sdhci_readl(host, SDHCI_ARASAN_OTAPDLY_REGISTER);
> +		regval |= SDHCI_OTAPDLY_ENABLE;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
> +		regval |= tap_delay;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
> +	}
> +
> +	return ret;
> +}
> +
> +static const struct clk_ops versal_sdcardclk_ops = {
> +	.recalc_rate = sdhci_arasan_sdcardclk_recalc_rate,
> +	.set_phase = sdhci_versal_sdcardclk_set_phase,
> +};
> +
> +/**
> + * sdhci_versal_sampleclk_set_phase - Set the SD Input Clock Tap Delays
> + *
> + * Set the SD Input Clock Tap Delays for Input path
> + *
> + * @hw:			Pointer to the hardware clock structure.
> + * @degrees		The clock phase shift between 0 - 359.
> + * Return: 0 on success and error value on error
> + */
> +static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
> +{
> +	struct sdhci_arasan_clk_data *clk_data =
> +		container_of(hw, struct sdhci_arasan_clk_data, sampleclk_hw);
> +	struct sdhci_arasan_data *sdhci_arasan =
> +		container_of(clk_data, struct sdhci_arasan_data, clk_data);
> +	struct sdhci_host *host = sdhci_arasan->host;
> +	u8 tap_delay, tap_max = 0;
> +	int ret;
> +
> +	/*
> +	 * This is applicable for SDHCI_SPEC_300 and above
> +	 * Versal does not set phase for <=25MHz clock.
> +	 * If degrees is zero, no need to do anything.
> +	 */
> +	if (host->version < SDHCI_SPEC_300 ||
> +	    host->timing == MMC_TIMING_LEGACY ||
> +	    host->timing == MMC_TIMING_UHS_SDR12 || !degrees)
> +		return 0;
> +
> +	switch (host->timing) {
> +	case MMC_TIMING_MMC_HS:
> +	case MMC_TIMING_SD_HS:
> +	case MMC_TIMING_UHS_SDR25:
> +	case MMC_TIMING_UHS_DDR50:
> +	case MMC_TIMING_MMC_DDR52:
> +		/* For 50MHz clock, 120 Taps are available */
> +		tap_max = 120;
> +		break;
> +	case MMC_TIMING_UHS_SDR50:
> +		/* For 100MHz clock, 60 Taps are available */
> +		tap_max = 60;
> +		break;
> +	case MMC_TIMING_UHS_SDR104:
> +	case MMC_TIMING_MMC_HS200:
> +		/* For 200MHz clock, 30 Taps are available */
> +		tap_max = 30;
> +	default:
> +		break;
> +	}
> +
> +	tap_delay = (degrees * tap_max) / 360;
> +
> +	/* Set the Clock Phase */
> +	if (tap_delay) {
> +		u32 regval;
> +
> +		regval = sdhci_readl(host, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval |= SDHCI_ITAPDLY_CHGWIN;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval |= SDHCI_ITAPDLY_ENABLE;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval |= tap_delay;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +		regval &= ~SDHCI_ITAPDLY_CHGWIN;
> +		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
> +	}
> +
> +	return ret;
> +}
> +
> +static const struct clk_ops versal_sampleclk_ops = {
> +	.recalc_rate = sdhci_arasan_sampleclk_recalc_rate,
> +	.set_phase = sdhci_versal_sampleclk_set_phase,
> +};
> +
>  static void arasan_zynqmp_dll_reset(struct sdhci_host *host, u32 deviceid)
>  {
>  	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -965,6 +1126,16 @@ static void arasan_dt_parse_clk_phases(struct device *dev,
>  		}
>  	}
>  
> +	if (of_device_is_compatible(dev->of_node, "xlnx,versal-8.9a")) {
> +		iclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) VERSAL_ICLK_PHASE;
> +		oclk_phase = (int [MMC_TIMING_MMC_HS400 + 1]) VERSAL_OCLK_PHASE;
> +
> +		for (i = 0; i <= MMC_TIMING_MMC_HS400; i++) {
> +			clk_data->clk_phase_in[i] = iclk_phase[i];
> +			clk_data->clk_phase_out[i] = oclk_phase[i];
> +		}
> +	}
> +
>  	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_LEGACY,
>  				 "clk-phase-legacy");
>  	arasan_dt_read_clk_phase(dev, clk_data, MMC_TIMING_MMC_HS,
> @@ -1025,6 +1196,8 @@ sdhci_arasan_register_sdcardclk(struct sdhci_arasan_data *sdhci_arasan,
>  	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
>  	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
>  		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
> +	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
> +		sdcardclk_init.ops = &versal_sdcardclk_ops;
>  	else
>  		sdcardclk_init.ops = &arasan_sdcardclk_ops;
>  
> @@ -1077,6 +1250,8 @@ sdhci_arasan_register_sampleclk(struct sdhci_arasan_data *sdhci_arasan,
>  	sampleclk_init.flags = CLK_GET_RATE_NOCACHE;
>  	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
>  		sampleclk_init.ops = &zynqmp_sampleclk_ops;
> +	else if (of_device_is_compatible(np, "xlnx,versal-8.9a"))
> +		sampleclk_init.ops = &versal_sampleclk_ops;
>  	else
>  		sampleclk_init.ops = &arasan_sampleclk_ops;
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
