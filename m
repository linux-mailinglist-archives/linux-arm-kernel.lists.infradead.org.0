Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F7C4251E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 14:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06eofonmTs6jLp2IMhkr2LUcJNf30uKai1MeoeXKGAY=; b=bwwA6EHW8h5dUQ
	A99zHIJaSHWWnNVgayNdDdAItZ1SaTJ+dldT//ANwSijBxUZZKxSPoLErCHl1fcBh11zZbYpowPoE
	02LJJgBb/MrOEWHksyWUcXeIaigi6TgS3fWiEjkAJiUcGHXaEG9WgB40GqJWq9IJezYsCDuNLZkFl
	2v0J/rWCqXTuUD7/spRn5ounjAaBCxzesyPefgUbNBTtJrZ/IBQP1QuGYqWG9LvZcSg/slKg2qZXz
	hf18EtlyNzRGHh+1NsN69lBMLTdQF0nFJFC9l7B+HPXkVc1AIdeeERsz2X0q+tPp9oEFOykpfw+1M
	Pex3iLrnIiRrFqLRs2GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb261-0008As-A3; Wed, 12 Jun 2019 12:11:17 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb25n-0008A3-DK
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 12:11:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jun 2019 05:11:01 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga001.fm.intel.com with ESMTP; 12 Jun 2019 05:10:58 -0700
Subject: Re: [PATCH 3/4] mmc: sdhci_am654: Add Support for 4 bit IP on J721E
To: Faiz Abbas <faiz_abbas@ti.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-mmc@vger.kernel.org
References: <20190604060914.10886-1-faiz_abbas@ti.com>
 <20190604060914.10886-4-faiz_abbas@ti.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <d44fbe8f-4d36-b33e-fa88-90f2f37703aa@intel.com>
Date: Wed, 12 Jun 2019 15:09:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604060914.10886-4-faiz_abbas@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_051103_505656_F3DFB7D5 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: nm@ti.com, ulf.hansson@linaro.org, robh+dt@kernel.org, nsekhar@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 4/06/19 9:09 AM, Faiz Abbas wrote:
> Add support for 4 bit instances on TI's J721E devices. Because these
> instances have no DLL, introduce a DLL_PRESENT flag and make sure DLL
> related registers are only accessed when it is present. Also add a
> separate set_clock callback for this compatible.
> 
> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci_am654.c | 124 +++++++++++++++++++++++----------
>  1 file changed, 86 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
> index 4575aeb435ec..3b3948144591 100644
> --- a/drivers/mmc/host/sdhci_am654.c
> +++ b/drivers/mmc/host/sdhci_am654.c
> @@ -91,6 +91,7 @@ struct sdhci_am654_driver_data {
>  #define IOMUX_PRESENT	(1 << 0)
>  #define FREQSEL_2_BIT	(1 << 1)
>  #define STRBSEL_4_BIT	(1 << 2)
> +#define DLL_PRESENT	(1 << 3)
>  };
>  
>  static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
> @@ -188,6 +189,20 @@ static void sdhci_am654_set_clock(struct sdhci_host *host, unsigned int clock)
>  	}
>  }
>  
> +void sdhci_j721e_4bit_set_clock(struct sdhci_host *host, unsigned int clock)
> +{
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct sdhci_am654_data *sdhci_am654 = sdhci_pltfm_priv(pltfm_host);
> +	int val, mask;
> +
> +	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
> +	val = (1 << OTAPDLYENA_SHIFT) |
> +	      (sdhci_am654->otap_del_sel << OTAPDLYSEL_SHIFT);
> +	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, val);
> +
> +	sdhci_set_clock(host, clock);
> +}
> +
>  static void sdhci_am654_set_power(struct sdhci_host *host, unsigned char mode,
>  				  unsigned short vdd)
>  {
> @@ -240,7 +255,7 @@ static const struct sdhci_pltfm_data sdhci_am654_pdata = {
>  
>  static const struct sdhci_am654_driver_data sdhci_am654_drvdata = {
>  	.pdata = &sdhci_am654_pdata,
> -	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT,
> +	.flags = IOMUX_PRESENT | FREQSEL_2_BIT | STRBSEL_4_BIT | DLL_PRESENT,
>  };
>  
>  struct sdhci_ops sdhci_j721e_8bit_ops = {
> @@ -263,8 +278,31 @@ static const struct sdhci_pltfm_data sdhci_j721e_8bit_pdata = {
>  
>  static const struct sdhci_am654_driver_data sdhci_j721e_8bit_drvdata = {
>  	.pdata = &sdhci_j721e_8bit_pdata,
> +	.flags = DLL_PRESENT,
> +};
> +
> +struct sdhci_ops sdhci_j721e_4bit_ops = {
> +	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
> +	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
> +	.set_uhs_signaling = sdhci_set_uhs_signaling,
> +	.set_bus_width = sdhci_set_bus_width,
> +	.set_power = sdhci_am654_set_power,
> +	.set_clock = sdhci_j721e_4bit_set_clock,
> +	.write_b = sdhci_am654_write_b,
> +	.reset = sdhci_reset,
> +};
> +
> +static const struct sdhci_pltfm_data sdhci_j721e_4bit_pdata = {
> +	.ops = &sdhci_j721e_4bit_ops,
> +	.quirks = SDHCI_QUIRK_INVERTED_WRITE_PROTECT |
> +		  SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
> +	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN,
>  };
>  
> +static const struct sdhci_am654_driver_data sdhci_j721e_4bit_drvdata = {
> +	.pdata = &sdhci_j721e_4bit_pdata,
> +	.flags = IOMUX_PRESENT,
> +};
>  static int sdhci_am654_init(struct sdhci_host *host)
>  {
>  	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> @@ -278,15 +316,19 @@ static int sdhci_am654_init(struct sdhci_host *host)
>  	mask = OTAPDLYENA_MASK | OTAPDLYSEL_MASK;
>  	regmap_update_bits(sdhci_am654->base, PHY_CTRL4, mask, 0x0);
>  
> -	regmap_read(sdhci_am654->base, PHY_STAT1, &val);
> -	if (~val & CALDONE_MASK) {
> -		/* Calibrate IO lines */
> -		regmap_update_bits(sdhci_am654->base, PHY_CTRL1,
> -				   PDB_MASK, PDB_MASK);
> -		ret = regmap_read_poll_timeout(sdhci_am654->base, PHY_STAT1,
> -					       val, val & CALDONE_MASK, 1, 20);
> -		if (ret)
> -			return ret;
> +	if (sdhci_am654->flags & DLL_PRESENT) {
> +		regmap_read(sdhci_am654->base, PHY_STAT1, &val);
> +		if (~val & CALDONE_MASK) {
> +			/* Calibrate IO lines */
> +			regmap_update_bits(sdhci_am654->base, PHY_CTRL1,
> +					   PDB_MASK, PDB_MASK);
> +			ret = regmap_read_poll_timeout(sdhci_am654->base,
> +						       PHY_STAT1, val,
> +						       val & CALDONE_MASK,
> +						       1, 20);
> +			if (ret)
> +				return ret;
> +		}
>  	}
>  
>  	/* Enable pins by setting IO mux to 0 */
> @@ -311,40 +353,42 @@ static int sdhci_am654_get_of_property(struct platform_device *pdev,
>  	int drv_strength;
>  	int ret;
>  
> -	ret = device_property_read_u32(dev, "ti,trm-icp",
> -				       &sdhci_am654->trm_icp);
> -	if (ret)
> -		return ret;
> -
>  	ret = device_property_read_u32(dev, "ti,otap-del-sel",
>  				       &sdhci_am654->otap_del_sel);
>  	if (ret)
>  		return ret;
>  
> -	ret = device_property_read_u32(dev, "ti,driver-strength-ohm",
> -				       &drv_strength);
> -	if (ret)
> -		return ret;
> +	if (sdhci_am654->flags & DLL_PRESENT) {
> +		ret = device_property_read_u32(dev, "ti,trm-icp",
> +					       &sdhci_am654->trm_icp);
> +		if (ret)
> +			return ret;
> +
> +		ret = device_property_read_u32(dev, "ti,driver-strength-ohm",
> +					       &drv_strength);
> +		if (ret)
> +			return ret;
>  
> -	switch (drv_strength) {
> -	case 50:
> -		sdhci_am654->drv_strength = DRIVER_STRENGTH_50_OHM;
> -		break;
> -	case 33:
> -		sdhci_am654->drv_strength = DRIVER_STRENGTH_33_OHM;
> -		break;
> -	case 66:
> -		sdhci_am654->drv_strength = DRIVER_STRENGTH_66_OHM;
> -		break;
> -	case 100:
> -		sdhci_am654->drv_strength = DRIVER_STRENGTH_100_OHM;
> -		break;
> -	case 40:
> -		sdhci_am654->drv_strength = DRIVER_STRENGTH_40_OHM;
> -		break;
> -	default:
> -		dev_err(dev, "Invalid driver strength\n");
> -		return -EINVAL;
> +		switch (drv_strength) {
> +		case 50:
> +			sdhci_am654->drv_strength = DRIVER_STRENGTH_50_OHM;
> +			break;
> +		case 33:
> +			sdhci_am654->drv_strength = DRIVER_STRENGTH_33_OHM;
> +			break;
> +		case 66:
> +			sdhci_am654->drv_strength = DRIVER_STRENGTH_66_OHM;
> +			break;
> +		case 100:
> +			sdhci_am654->drv_strength = DRIVER_STRENGTH_100_OHM;
> +			break;
> +		case 40:
> +			sdhci_am654->drv_strength = DRIVER_STRENGTH_40_OHM;
> +			break;
> +		default:
> +			dev_err(dev, "Invalid driver strength\n");
> +			return -EINVAL;
> +		}
>  	}
>  
>  	device_property_read_u32(dev, "ti,strobe-sel", &sdhci_am654->strb_sel);
> @@ -363,6 +407,10 @@ static const struct of_device_id sdhci_am654_of_match[] = {
>  		.compatible = "ti,j721e-sdhci-8bit",
>  		.data = &sdhci_j721e_8bit_drvdata,
>  	},
> +	{
> +		.compatible = "ti,j721e-sdhci-4bit",
> +		.data = &sdhci_j721e_4bit_drvdata,
> +	},
>  	{ /* sentinel */ }
>  };
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
