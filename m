Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBCA32FE6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0legt536Ae1O/UzOfhAoQ5Ia/MatzGK8gjCVk9b1PII=; b=C4d9fuWiWcwGtA
	9jY8LS3PtByJ9d5xh67ZOPOl4f4dm/c/1blwQUIwRdme/ROvoZfKMXpaCONoLaGrtVe2sfOgMUaUX
	J3aKxInvCrTZCMfnpfOrbUhUlk91G0Pe8wcr64i+OqQKv8U+STDqkV+e7xVq7lTETgYvnkWgT8xiK
	bXNrFxXO/sd6mchXby2To0wbLyeKxCxCjce/j2tcVP854c/NwXvTjRmvAQmLdYPsvpVKdYBBZtx9/
	MnnC329DZ921Yfr4gYuXJXCsYD3APGQOD/ODMV/gAA06DvH5hMX19nWJDzpMkNhAauPeOZxVhHgrW
	gmuw3SGnlWW0j3w3bH6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmI8-0003pN-EJ; Mon, 03 Jun 2019 12:42:20 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmI2-0003ov-8j
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:42:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:42:13 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by orsmga005.jf.intel.com with ESMTP; 03 Jun 2019 05:42:09 -0700
Subject: Re: [PATCH 6/9] mmc: sdhci-sprd: Enable PHY DLL to make clock stable
To: Baolin Wang <baolin.wang@linaro.org>, ulf.hansson@linaro.org,
 zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
 mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <270e86bf6b1ce138e40830fb63c9bcf150440426.1558346019.git.baolin.wang@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <8a792a0c-ed53-56ca-ede8-4a2657158b81@intel.com>
Date: Mon, 3 Jun 2019 15:40:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <270e86bf6b1ce138e40830fb63c9bcf150440426.1558346019.git.baolin.wang@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_054214_360535_76BBCB90 
X-CRM114-Status: GOOD (  20.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/05/19 1:11 PM, Baolin Wang wrote:
> For the Spreadtrum SD host controller, when we changed the clock to be
> more than 52M, we should enable the PHY DLL which is used to track the
> clock frequency to make the clock work more stable. Otherwise deviation
> may occur of the higher clock.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-sprd.c |   44 ++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 43 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> index edec197..e6eda13 100644
> --- a/drivers/mmc/host/sdhci-sprd.c
> +++ b/drivers/mmc/host/sdhci-sprd.c
> @@ -22,6 +22,13 @@
>  /* SDHCI_ARGUMENT2 register high 16bit */
>  #define SDHCI_SPRD_ARG2_STUFF		GENMASK(31, 16)
>  
> +#define SDHCI_SPRD_REG_32_DLL_CFG	0x200
> +#define  SDHCI_SPRD_DLL_ALL_CPST_EN	(BIT(18) | BIT(24) | BIT(25) | BIT(26) | BIT(27))
> +#define  SDHCI_SPRD_DLL_EN		BIT(21)
> +#define  SDHCI_SPRD_DLL_SEARCH_MODE	BIT(16)
> +#define  SDHCI_SPRD_DLL_INIT_COUNT	0xc00
> +#define  SDHCI_SPRD_DLL_PHASE_INTERNAL	0x3
> +
>  #define SDHCI_SPRD_REG_32_DLL_DLY_OFFSET	0x208
>  #define  SDHCIBSPRD_IT_WR_DLY_INV		BIT(5)
>  #define  SDHCI_SPRD_BIT_CMD_DLY_INV		BIT(13)
> @@ -56,6 +63,7 @@
>  #define SDHCI_SPRD_CLK_MAX_DIV		1023
>  
>  #define SDHCI_SPRD_CLK_DEF_RATE		26000000
> +#define SDHCI_SPRD_PHY_DLL_CLK		52000000
>  
>  struct sdhci_sprd_host {
>  	u32 version;
> @@ -200,9 +208,33 @@ static inline void _sdhci_sprd_set_clock(struct sdhci_host *host,
>  	}
>  }
>  
> +static void sdhci_sprd_enable_phy_dll(struct sdhci_host *host)
> +{
> +	u32 tmp;
> +
> +	tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
> +	tmp &= ~(SDHCI_SPRD_DLL_EN | SDHCI_SPRD_DLL_ALL_CPST_EN);
> +	sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
> +	/* wait 1ms */
> +	usleep_range(1000, 1250);
> +
> +	tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
> +	tmp |= SDHCI_SPRD_DLL_ALL_CPST_EN | SDHCI_SPRD_DLL_SEARCH_MODE |
> +		SDHCI_SPRD_DLL_INIT_COUNT | SDHCI_SPRD_DLL_PHASE_INTERNAL;
> +	sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
> +	/* wait 1ms */
> +	usleep_range(1000, 1250);
> +
> +	tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
> +	tmp |= SDHCI_SPRD_DLL_EN;
> +	sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
> +	/* wait 1ms */
> +	usleep_range(1000, 1250);
> +}
> +
>  static void sdhci_sprd_set_clock(struct sdhci_host *host, unsigned int clock)
>  {
> -	bool en = false;
> +	bool en = false, clk_changed = false;
>  
>  	if (clock == 0) {
>  		sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
> @@ -214,9 +246,19 @@ static void sdhci_sprd_set_clock(struct sdhci_host *host, unsigned int clock)
>  			en = true;
>  		sdhci_sprd_set_dll_invert(host, SDHCI_SPRD_BIT_CMD_DLY_INV |
>  					  SDHCI_SPRD_BIT_POSRD_DLY_INV, en);
> +		clk_changed = true;
>  	} else {
>  		_sdhci_sprd_set_clock(host, clock);
>  	}
> +
> +	/*
> +	 * According to the Spreadtrum SD host specification, when we changed
> +	 * the clock to be more than 52M, we should enable the PHY DLL which
> +	 * is used to track the clock frequency to make the clock work more
> +	 * stable. Otherwise deviation may occur of the higher clock.
> +	 */
> +	if (clk_changed && clock > SDHCI_SPRD_PHY_DLL_CLK)
> +		sdhci_sprd_enable_phy_dll(host);
>  }
>  
>  static unsigned int sdhci_sprd_get_max_clock(struct sdhci_host *host)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
