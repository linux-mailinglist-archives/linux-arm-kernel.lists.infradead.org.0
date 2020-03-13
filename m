Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6712D184167
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 08:19:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXLWSe1fKe3oXXiW12gt043CL9fyH3V5vEI/cBdGrAM=; b=MXJLw8zbtoA/Ih
	cWTV9tPSK29l2QtiM29n1AMmItwCMLIyfRRGLvb16b6YvrvL9hwJ0K7u4S9k31MneTsohE1OpqyxZ
	jByqnxyPcEAaM4Nqpl71VlAsapHxZEUvGBhJgjBH3sIxXRDxiSMdomuqXLSQS1tFPpFeNxAhT/gF0
	EPG0AFTZyvdhm7USRxlkfgadgMSH5oqIxMcofBheksI6ybL3CqHGYMeEMtRKTaL+PuLrVkPOCbCRI
	PJzelwaRCtDOFYBwTjSW0j1dlgya1/lbr/w++ZrgnuawkhNj+tYp6sL1GfXB660wwVHO6f1X2xRON
	zdVtDP8YPf03tpsjuH/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCebd-0003bF-Iu; Fri, 13 Mar 2020 07:19:41 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCebW-0003af-Aj
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 07:19:35 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 00:19:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,547,1574150400"; d="scan'208";a="237126832"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2020 00:19:30 -0700
Subject: Re: [PATCH] mmc: sdhci-of-at91: Display clock changes for debug
 purpose only
To: Tudor.Ambarus@microchip.com, Ludovic.Desroches@microchip.com,
 ulf.hansson@linaro.org
References: <20200312142904.232822-1-tudor.ambarus@microchip.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <975a35de-3c8a-2bad-8395-1c165fd1e66f@intel.com>
Date: Fri, 13 Mar 2020 09:18:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200312142904.232822-1-tudor.ambarus@microchip.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_001934_418449_A84795DD 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, Cristian.Birsan@microchip.com,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/03/20 4:29 pm, Tudor.Ambarus@microchip.com wrote:
> From: Cristian Birsan <cristian.birsan@microchip.com>
> 
> The sdhci_at91_set_clks_presets() function is called multiple times
> at runtime and the messages are shown on the console. Display clk mul,
> gck rate and clk base for debug porpose only.
> 
> Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-of-at91.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
> index ab2bd314a390..88f17abb69a7 100644
> --- a/drivers/mmc/host/sdhci-of-at91.c
> +++ b/drivers/mmc/host/sdhci-of-at91.c
> @@ -204,8 +204,8 @@ static int sdhci_at91_set_clks_presets(struct device *dev)
>  	/* Set capabilities in ro mode. */
>  	writel(0, host->ioaddr + SDMMC_CACR);
>  
> -	dev_info(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> -		 clk_mul, gck_rate, clk_base_rate);
> +	dev_dbg(dev, "update clk mul to %u as gck rate is %u Hz and clk base is %u Hz\n",
> +		clk_mul, gck_rate, clk_base_rate);
>  
>  	/*
>  	 * We have to set preset values because it depends on the clk_mul
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
