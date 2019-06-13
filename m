Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1BB43547
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjX92a1zex3TahT5Ze7dpoDLOLAfv9mdDflz8n/WYLU=; b=fnpf1VwV32Dapv
	IOWKzN0FaLbtAJ3aclmQ7Il06l+eiFOAr6lKrlPcZpa4PjmTE/gruUbqYWluwT3XPKpxZ55/JTFIm
	90AOVitUoGX3pM+XDzREUXhllQsPVjcfchCQyLEmwjIKCcGvSDh7N6Ppjh1w0nqLImObT+5o2wosr
	jCjHa6e9pfQgs/xcXUgBXTode5OVArcEevjSr8JAC84khIyF1grT/4OQB0IaEd0Jp+0AaxjYZjKdC
	mdWOu977xUYXV7y+7aom3yTzUByqEykUWqIWZ09xsvAcvgTb4opPInayCKSjcRFt8LMJq2sjREMDl
	9Q/aHb3RWhOTXOpMdbPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbN7E-0002ra-32; Thu, 13 Jun 2019 10:37:56 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbN73-0002r9-Js
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:37:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 03:37:44 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jun 2019 03:37:41 -0700
Subject: Re: [PATCH 3/3] mmc: sdhci-of-arasan: Add support for ZynqMP Platform
 Tap Delays Setup
To: Manish Narani <manish.narani@xilinx.com>, ulf.hansson@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 rajan.vaja@xilinx.com, jolly.shah@xilinx.com, nava.manne@xilinx.com,
 olof@lixom.net
References: <1560247011-26369-1-git-send-email-manish.narani@xilinx.com>
 <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <45b805fa-ce1d-98af-a53e-ebbb028bbe02@intel.com>
Date: Thu, 13 Jun 2019 13:36:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560247011-26369-4-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_033745_665666_C962858A 
X-CRM114-Status: GOOD (  30.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/06/19 12:56 PM, Manish Narani wrote:
> Apart from taps set by auto tuning, ZynqMP platform has feature to set
> the tap values manually. Add support to read tap delay values from
> DT and set the same in HW via ZynqMP SoC framework. Reading Tap
> Delays from DT is optional, if the property is not available in DT the
> driver will use the pre-defined Tap Delay Values.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>

OK for SDHCI:

Acked-by: Adrian Hunter <adrian.hunter@intel.com>


> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 173 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 172 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index b12abf9..7af6cec 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -22,6 +22,7 @@
>  #include <linux/phy/phy.h>
>  #include <linux/regmap.h>
>  #include <linux/of.h>
> +#include <linux/firmware/xlnx-zynqmp.h>
>  
>  #include "cqhci.h"
>  #include "sdhci-pltfm.h"
> @@ -32,6 +33,10 @@
>  
>  #define PHY_CLK_TOO_SLOW_HZ		400000
>  
> +/* Default settings for ZynqMP Tap Delays */
> +#define ZYNQMP_ITAP_DELAYS {0, 0x15, 0x15, 0, 0x15, 0, 0, 0x3D, 0x12, 0, 0}
> +#define ZYNQMP_OTAP_DELAYS {0, 0x5, 0x6, 0, 0x5, 0x3, 0x3, 0x4, 0x6, 0x3, 0}
> +
>  /*
>   * On some SoCs the syscon area has a feature where the upper 16-bits of
>   * each 32-bit register act as a write mask for the lower 16-bits.  This allows
> @@ -81,6 +86,7 @@ struct sdhci_arasan_soc_ctl_map {
>   * @sdcardclk:		Pointer to normal 'struct clock' for sdcardclk_hw.
>   * @soc_ctl_base:	Pointer to regmap for syscon for soc_ctl registers.
>   * @soc_ctl_map:	Map to get offsets into soc_ctl registers.
> + * @of_data:		Platform specific runtime data storage pointer
>   */
>  struct sdhci_arasan_data {
>  	struct sdhci_host *host;
> @@ -101,6 +107,15 @@ struct sdhci_arasan_data {
>  /* Controller immediately reports SDHCI_CLOCK_INT_STABLE after enabling the
>   * internal clock even when the clock isn't stable */
>  #define SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE BIT(1)
> +
> +	void *of_data;
> +};
> +
> +struct sdhci_arasan_zynqmp_data {
> +	void (*set_tap_delay)(struct sdhci_host *host);
> +	const struct zynqmp_eemi_ops *eemi_ops;
> +	u8 tapdly[MMC_TIMING_MMC_HS400 + 1][2]; /* [0] for input delay, */
> +						/* [1] for output delay */
>  };
>  
>  struct sdhci_arasan_of_data {
> @@ -209,6 +224,16 @@ static void sdhci_arasan_set_clock(struct sdhci_host *host, unsigned int clock)
>  		sdhci_arasan->is_phy_on = false;
>  	}
>  
> +	/* Set the Input and Output Tap Delays */
> +	if (host->version >= SDHCI_SPEC_300 &&
> +	    host->timing != MMC_TIMING_LEGACY &&
> +	    host->timing != MMC_TIMING_UHS_SDR12) {
> +		struct sdhci_arasan_zynqmp_data *zynqmp_data =
> +			sdhci_arasan->of_data;
> +		if (zynqmp_data && zynqmp_data->set_tap_delay)
> +			zynqmp_data->set_tap_delay(host);
> +	}
> +
>  	sdhci_set_clock(host, clock);
>  
>  	if (sdhci_arasan->quirks & SDHCI_ARASAN_QUIRK_CLOCK_UNSTABLE)
> @@ -487,6 +512,10 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>  		.compatible = "arasan,sdhci-4.9a",
>  		.data = &sdhci_arasan_data,
>  	},
> +	{
> +		.compatible = "xlnx,zynqmp-8.9a",
> +		.data = &sdhci_arasan_data,
> +	},
>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, sdhci_arasan_of_match);
> @@ -517,6 +546,37 @@ static const struct clk_ops arasan_sdcardclk_ops = {
>  };
>  
>  /**
> + * sdhci_zynqmp_sdcardclk_set_phase - Set the SD Clock Tap Delays
> + *
> + * Set the SD Clock Tap Delays for Input and Output paths
> + *
> + * @hw:			Pointer to the hardware clock structure.
> + * @degrees		The clock phase shift between 0 - 359.
> + * Return: 0 on success and error value on error
> + */
> +static int sdhci_zynqmp_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
> +
> +{
> +	struct sdhci_arasan_data *sdhci_arasan =
> +		container_of(hw, struct sdhci_arasan_data, sdcardclk_hw);
> +	struct sdhci_arasan_zynqmp_data *zynqmp_data = sdhci_arasan->of_data;
> +	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_data->eemi_ops;
> +	const char *clk_name = clk_hw_get_name(hw);
> +	u32 device_id = !strcmp(clk_name, "clk_sd0") ? 0 : 1;
> +
> +	if (!eemi_ops->sdio_setphase)
> +		return -ENODEV;
> +
> +	/* Set the Clock Phase */
> +	return eemi_ops->sdio_setphase(device_id, degrees);
> +}
> +
> +static const struct clk_ops zynqmp_sdcardclk_ops = {
> +	.recalc_rate = sdhci_arasan_sdcardclk_recalc_rate,
> +	.set_phase = sdhci_zynqmp_sdcardclk_set_phase,
> +};
> +
> +/**
>   * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
>   *
>   * The corecfg_clockmultiplier is supposed to contain clock multiplier
> @@ -638,7 +698,10 @@ static int sdhci_arasan_register_sdclk(struct sdhci_arasan_data *sdhci_arasan,
>  	sdcardclk_init.parent_names = &parent_clk_name;
>  	sdcardclk_init.num_parents = 1;
>  	sdcardclk_init.flags = CLK_GET_RATE_NOCACHE;
> -	sdcardclk_init.ops = &arasan_sdcardclk_ops;
> +	if (of_device_is_compatible(np, "xlnx,zynqmp-8.9a"))
> +		sdcardclk_init.ops = &zynqmp_sdcardclk_ops;
> +	else
> +		sdcardclk_init.ops = &arasan_sdcardclk_ops;
>  
>  	sdhci_arasan->sdcardclk_hw.init = &sdcardclk_init;
>  	sdhci_arasan->sdcardclk =
> @@ -714,6 +777,108 @@ static int sdhci_arasan_add_host(struct sdhci_arasan_data *sdhci_arasan)
>  	return ret;
>  }
>  
> +static void sdhci_arasan_zynqmp_set_tap_delay(struct sdhci_host *host)
> +{
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
> +	struct sdhci_arasan_zynqmp_data *zynqmp_data = sdhci_arasan->of_data;
> +
> +	clk_set_phase(sdhci_arasan->sdcardclk,
> +		      (int)zynqmp_data->tapdly[host->timing][0]);
> +	clk_set_phase(sdhci_arasan->sdcardclk,
> +		      (int)zynqmp_data->tapdly[host->timing][1] +
> +		      INPUT_TAP_BOUNDARY);
> +}
> +
> +static void arasan_dt_read_tap_delay(struct device *dev, u8 *tapdly,
> +				     const char *prop, u8 itap_def, u8 otap_def)
> +{
> +	struct device_node *np = dev->of_node;
> +
> +	tapdly[0] = itap_def;
> +	tapdly[1] = otap_def;
> +
> +	/*
> +	 * Read Tap Delay values from DT, if the DT does not contain the
> +	 * Tap Values then use the pre-defined values.
> +	 */
> +	if (of_property_read_variable_u8_array(np, prop, &tapdly[0], 2, 0)) {
> +		dev_dbg(dev, "Using predefined tapdly for %s = %d %d\n",
> +			prop, tapdly[0], tapdly[1]);
> +	}
> +}
> +
> +/**
> + * arasan_dt_parse_tap_delays - Read Tap Delay values from DT
> + *
> + * Called at initialization to parse the values of Tap Delays.
> + *
> + * @dev:		Pointer to our struct device.
> + */
> +static int arasan_dt_parse_tap_delays(struct device *dev)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct sdhci_host *host = platform_get_drvdata(pdev);
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
> +	struct sdhci_arasan_zynqmp_data zynqmp_data;
> +	const struct zynqmp_eemi_ops *eemi_ops;
> +	u8 *itapdly, *otapdly;
> +	u32 mio_bank = 0;
> +
> +	eemi_ops = zynqmp_pm_get_eemi_ops();
> +	if (IS_ERR(eemi_ops))
> +		return PTR_ERR(eemi_ops);
> +
> +	itapdly = (u8 [MMC_TIMING_MMC_HS400 + 1]) ZYNQMP_ITAP_DELAYS;
> +	otapdly = (u8 [MMC_TIMING_MMC_HS400 + 1]) ZYNQMP_OTAP_DELAYS;
> +
> +	of_property_read_u32(pdev->dev.of_node, "xlnx,mio-bank", &mio_bank);
> +	if (mio_bank == 2) {
> +		otapdly[MMC_TIMING_UHS_SDR104] = 0x2;
> +		otapdly[MMC_TIMING_MMC_HS200] = 0x2;
> +	}
> +
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_MMC_HS],
> +				 "xlnx,tap-delay-mmc-hsd",
> +				 itapdly[MMC_TIMING_MMC_HS],
> +				 otapdly[MMC_TIMING_MMC_HS]);
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_SD_HS],
> +				 "xlnx,tap-delay-sd-hsd",
> +				 itapdly[MMC_TIMING_SD_HS],
> +				 otapdly[MMC_TIMING_SD_HS]);
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_SDR25],
> +				 "xlnx,tap-delay-sdr25",
> +				 itapdly[MMC_TIMING_UHS_SDR25],
> +				 otapdly[MMC_TIMING_UHS_SDR25]);
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_SDR50],
> +				 "xlnx,tap-delay-sdr50",
> +				 itapdly[MMC_TIMING_UHS_SDR50],
> +				 otapdly[MMC_TIMING_UHS_SDR50]);
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_SDR104],
> +				 "xlnx,tap-delay-sdr104",
> +				 itapdly[MMC_TIMING_UHS_SDR104],
> +				 otapdly[MMC_TIMING_UHS_SDR104]);
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_UHS_DDR50],
> +				 "xlnx,tap-delay-sd-ddr50",
> +				 itapdly[MMC_TIMING_UHS_DDR50],
> +				 otapdly[MMC_TIMING_UHS_DDR50]);
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_MMC_DDR52],
> +				 "xlnx,tap-delay-mmc-ddr52",
> +				 itapdly[MMC_TIMING_MMC_DDR52],
> +				 otapdly[MMC_TIMING_MMC_DDR52]);
> +	arasan_dt_read_tap_delay(dev, zynqmp_data.tapdly[MMC_TIMING_MMC_HS200],
> +				 "xlnx,tap-delay-mmc-hs200",
> +				 itapdly[MMC_TIMING_MMC_HS200],
> +				 otapdly[MMC_TIMING_MMC_HS200]);
> +
> +	zynqmp_data.set_tap_delay = sdhci_arasan_zynqmp_set_tap_delay;
> +	zynqmp_data.eemi_ops = eemi_ops;
> +	sdhci_arasan->of_data = &zynqmp_data;
> +
> +	return 0;
> +}
> +
>  static int sdhci_arasan_probe(struct platform_device *pdev)
>  {
>  	int ret;
> @@ -806,6 +971,12 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
>  		goto unreg_clk;
>  	}
>  
> +	if (of_device_is_compatible(pdev->dev.of_node, "xlnx,zynqmp-8.9a")) {
> +		ret = arasan_dt_parse_tap_delays(&pdev->dev);
> +		if (ret)
> +			goto unreg_clk;
> +	}
> +
>  	sdhci_arasan->phy = ERR_PTR(-ENODEV);
>  	if (of_device_is_compatible(pdev->dev.of_node,
>  				    "arasan,sdhci-5.1")) {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
