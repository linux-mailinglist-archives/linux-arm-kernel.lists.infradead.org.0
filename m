Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5671932FDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UzAmsKH8QNaHP7CcfkiHDqMIf/ZIS6SFCJNfV/8lI6o=; b=TvTMAOk4uRbmjx
	nzcqicFbmgKoHc7XiEsGyBydIrAol/QIX6drtWBzmwCz/8FQHb6k6c07UU37CJSr60Rmi9R493Sm1
	pdwAprHIXhmJM6uJG0LKDjX1+M78gnkFQHsZZgBBJpdNggqHq4r49kRZvWBSVkCFzAxq3xmH/tHyr
	OcpU+i9z/7P/lWVrJuBUktLyBDtNQCVhGgvfs2QVG1tLj76ZC6f8yijihxrnmopJg5Uod+Ff6e0BC
	eg6kx74l+QcBLrAJ7PRv16k7hOuhwEIlLbB73pA0IQ30whjCFWFS2ac60P4oJUS607i5gi3zFmScy
	x9hk26DQ/x5pZ/HVdQNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmGX-0003Gl-Ra; Mon, 03 Jun 2019 12:40:41 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmGP-0003DN-Kx
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:40:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:40:32 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by orsmga005.jf.intel.com with ESMTP; 03 Jun 2019 05:40:27 -0700
Subject: Re: [PATCH 5/9] mmc: sdhci-sprd: Add HS400 enhanced strobe mode
To: Baolin Wang <baolin.wang@linaro.org>, ulf.hansson@linaro.org,
 zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
 mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <20349e8ebd4c1ec64fb5f8cdd9e094d0c1732855.1558346019.git.baolin.wang@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <1d527144-b047-1d81-171d-706e1c67e19b@intel.com>
Date: Mon, 3 Jun 2019 15:39:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20349e8ebd4c1ec64fb5f8cdd9e094d0c1732855.1558346019.git.baolin.wang@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_054033_699287_6482124D 
X-CRM114-Status: GOOD (  17.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
> Add HS400 enhanced strobe mode support for Spreadtrum SD host controller.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-sprd.c |   32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> index d91281d..edec197 100644
> --- a/drivers/mmc/host/sdhci-sprd.c
> +++ b/drivers/mmc/host/sdhci-sprd.c
> @@ -41,6 +41,7 @@
>  /* SDHCI_HOST_CONTROL2 */
>  #define  SDHCI_SPRD_CTRL_HS200		0x0005
>  #define  SDHCI_SPRD_CTRL_HS400		0x0006
> +#define  SDHCI_SPRD_CTRL_HS400ES	0x0007
>  
>  /*
>   * According to the standard specification, BIT(3) of SDHCI_SOFTWARE_RESET is
> @@ -132,6 +133,15 @@ static inline void sdhci_sprd_sd_clk_off(struct sdhci_host *host)
>  	sdhci_writew(host, ctrl, SDHCI_CLOCK_CONTROL);
>  }
>  
> +static inline void sdhci_sprd_sd_clk_on(struct sdhci_host *host)
> +{
> +	u16 ctrl;
> +
> +	ctrl = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
> +	ctrl |= SDHCI_CLOCK_CARD_EN;
> +	sdhci_writew(host, ctrl, SDHCI_CLOCK_CONTROL);
> +}
> +
>  static inline void
>  sdhci_sprd_set_dll_invert(struct sdhci_host *host, u32 mask, bool en)
>  {
> @@ -325,6 +335,26 @@ static void sdhci_sprd_request(struct mmc_host *mmc, struct mmc_request *mrq)
>  	sdhci_request(mmc, mrq);
>  }
>  
> +static void sdhci_sprd_hs400_enhanced_strobe(struct mmc_host *mmc,
> +					     struct mmc_ios *ios)
> +{
> +	struct sdhci_host *host = mmc_priv(mmc);
> +	u16 ctrl_2;
> +
> +	if (!ios->enhanced_strobe)
> +		return;
> +
> +	sdhci_sprd_sd_clk_off(host);
> +
> +	/* Set HS400 enhanced strobe mode */
> +	ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
> +	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
> +	ctrl_2 |= SDHCI_SPRD_CTRL_HS400ES;
> +	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
> +
> +	sdhci_sprd_sd_clk_on(host);
> +}
> +
>  static const struct sdhci_pltfm_data sdhci_sprd_pdata = {
>  	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK,
>  	.quirks2 = SDHCI_QUIRK2_BROKEN_HS200 |
> @@ -346,6 +376,8 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
>  	host->dma_mask = DMA_BIT_MASK(64);
>  	pdev->dev.dma_mask = &host->dma_mask;
>  	host->mmc_host_ops.request = sdhci_sprd_request;
> +	host->mmc_host_ops.hs400_enhanced_strobe =
> +		sdhci_sprd_hs400_enhanced_strobe;
>  
>  	host->mmc->caps = MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED |
>  		MMC_CAP_ERASE | MMC_CAP_CMD23;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
