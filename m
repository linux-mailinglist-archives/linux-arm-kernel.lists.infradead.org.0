Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD1E150556
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 12:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NIgflIGFPJSQm2MN971ukM5/JEgrM9HfVFJUmStMk4=; b=Eqecyl+SlRV3Oc
	5PnCfQLAMLnkNOV2MojIazbMNJshNrcLh9al2m985RIt0jUwV2Cqt+MWeM1hwbh18k+vCL7kRTpgF
	gb2p//h18+JpJMi/JtKlmKOSzyWgVW+veH+/RifZTZcb/pDtB2e3t+/brTR45jpjLQ46ZF3XR9ZWQ
	R6gdvMVyHOWVt4p5QJpNkeoWsxIZ730k3nbMG6F36Vk0GdA/TjE5+yxh+9puoKAuRaX7nViKofeFU
	mcn+qC1dP+ejr+3CHz4p9BBY97TifNzv3i4vY0QD/SNuIPFoGqGmG8/g3GCcvyAd9nOoeSgN4371d
	6lX7U6OFYcTNP4QCSMlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZy4-000349-N8; Mon, 03 Feb 2020 11:32:40 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZxw-00030c-49
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 11:32:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 03:32:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="225138976"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 03 Feb 2020 03:32:27 -0800
Subject: Re: [PATCH 3/4] mmc: sdhci-of-arasan: Add support for DLL reset for
 ZynqMP platforms
To: Manish Narani <manish.narani@xilinx.com>, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, jolly.shah@xilinx.com, rajan.vaja@xilinx.com,
 nava.manne@xilinx.com, tejas.patel@xilinx.com
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
 <1579602095-30060-4-git-send-email-manish.narani@xilinx.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <08d85f87-6180-2e59-5d71-d916a0e44603@intel.com>
Date: Mon, 3 Feb 2020 13:31:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1579602095-30060-4-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_033232_216724_F1AE8593 
X-CRM114-Status: GOOD (  19.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/01/20 12:21 pm, Manish Narani wrote:
> The DLL resets are required while executing the auto tuning procedure in
> ZynqMP. This patch adds code to support the same.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 46 ++++++++++++++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index e49b44b4d82e..39176ab5ca1f 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -757,6 +757,50 @@ static const struct clk_ops zynqmp_sampleclk_ops = {
>  	.set_phase = sdhci_zynqmp_sampleclk_set_phase,
>  };
>  
> +static void arasan_zynqmp_dll_reset(struct sdhci_host *host, u32 deviceid)
> +{
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
> +	struct sdhci_arasan_zynqmp_clk_data *zynqmp_clk_data =
> +		sdhci_arasan->clk_data.clk_of_data;
> +	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_clk_data->eemi_ops;
> +	u16 clk;
> +
> +	clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
> +	clk &= ~(SDHCI_CLOCK_CARD_EN | SDHCI_CLOCK_INT_EN);
> +	sdhci_writew(host, clk, SDHCI_CLOCK_CONTROL);
> +
> +	/* Issue DLL Reset */
> +	eemi_ops->ioctl(deviceid, IOCTL_SD_DLL_RESET,
> +			PM_DLL_RESET_PULSE, 0, NULL);
> +
> +	clk = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
> +
> +	sdhci_enable_clk(host, clk);
> +}
> +
> +static int arasan_zynqmp_execute_tuning(struct mmc_host *mmc, u32 opcode)
> +{
> +	struct sdhci_host *host = mmc_priv(mmc);
> +	struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
> +	struct sdhci_arasan_data *sdhci_arasan = sdhci_pltfm_priv(pltfm_host);
> +	struct clk_hw *hw = &sdhci_arasan->clk_data.sdcardclk_hw;
> +	const char *clk_name = clk_hw_get_name(hw);
> +	u32 device_id = !strcmp(clk_name, "clk_out_sd0") ? NODE_SD_0 :
> +							   NODE_SD_1;
> +	int err;
> +
> +	arasan_zynqmp_dll_reset(host, device_id);
> +
> +	err = sdhci_execute_tuning(mmc, opcode);
> +	if (err)
> +		return err;
> +
> +	arasan_zynqmp_dll_reset(host, device_id);
> +
> +	return 0;
> +}
> +
>  /**
>   * sdhci_arasan_update_clockmultiplier - Set corecfg_clockmultiplier
>   *
> @@ -1247,6 +1291,8 @@ static int sdhci_arasan_probe(struct platform_device *pdev)
>  
>  		zynqmp_clk_data->eemi_ops = eemi_ops;
>  		sdhci_arasan->clk_data.clk_of_data = zynqmp_clk_data;
> +		host->mmc_host_ops.execute_tuning =
> +			arasan_zynqmp_execute_tuning;
>  	}
>  
>  	arasan_dt_parse_clk_phases(&pdev->dev, &sdhci_arasan->clk_data);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
