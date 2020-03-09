Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A953517D9BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:21:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vb8hfUXF+1+5Jxa1cSuBxJ5CIjqBkae07Zu8Y+/lmK0=; b=Af3zf8NZORG07T
	eFS9OKkDY1GpcwqliRpjDQw+6zL6kBUl4jrZs+zIOVuaIuDi0aBwkSqyKmiz9Xv7CbHkqfaHnlhEw
	x9tCxhMRJ8YnTvLF1jvX0oA0uLo7g9h/a5o25ZOb5i+BOJuaeWGPt3KMzC/ypBDoKFLMnzfaIfrPf
	9d7TaQEQR0WKdJGOqpqdmUifVf0KKd1a5oce7XRoEeLE7OjZ/b8K24hfmAIYn5T8hohMAJQu0TV84
	J5d37IwQHJHb35JB/xXTCRfNaldSmb6nKDEQt08SAD6yegbKw8YAvu6S7QBs360ofB0rXJQVngJAx
	hSc97+dr8BxNmVWNUt8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCjE-00075K-5l; Mon, 09 Mar 2020 07:21:32 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCit-0006xN-QS; Mon, 09 Mar 2020 07:21:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 00:21:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; d="scan'208";a="235518417"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2020 00:20:58 -0700
Subject: Re: [PATCH v2 05/11] mmc: sdhci: pxav3: Use
 sdhci_set_power_and_voltage()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-6-nsaenzjulienne@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <92473c9e-693a-fa98-2a96-a200a86dc2fc@intel.com>
Date: Mon, 9 Mar 2020 09:20:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306174413.20634-6-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002111_907262_EE59FC6D 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: stefan.wahren@i2se.com, Ulf Hansson <ulf.hansson@linaro.org>,
 f.fainelli@gmail.com, linux-mmc@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/03/20 7:44 pm, Nicolas Saenz Julienne wrote:
> The sdhci core provides a helper function with the same functionality as
> this controller's set_power() callback. Use it instead.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/mmc/host/sdhci-pxav3.c | 20 +-------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-pxav3.c b/drivers/mmc/host/sdhci-pxav3.c
> index e55037ceda73..75fe90b88f9b 100644
> --- a/drivers/mmc/host/sdhci-pxav3.c
> +++ b/drivers/mmc/host/sdhci-pxav3.c
> @@ -297,27 +297,9 @@ static void pxav3_set_uhs_signaling(struct sdhci_host *host, unsigned int uhs)
>  		__func__, uhs, ctrl_2);
>  }
>  
> -static void pxav3_set_power(struct sdhci_host *host, unsigned char mode,
> -			    unsigned short vdd)
> -{
> -	struct mmc_host *mmc = host->mmc;
> -	u8 pwr = host->pwr;
> -
> -	sdhci_set_power_noreg(host, mode, vdd);
> -
> -	if (host->pwr == pwr)
> -		return;
> -
> -	if (host->pwr == 0)
> -		vdd = 0;
> -
> -	if (!IS_ERR(mmc->supply.vmmc))
> -		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
> -}

This code is different.  The commit message should explain why it is
equivalent.  Has it been tested?

> -
>  static const struct sdhci_ops pxav3_sdhci_ops = {
>  	.set_clock = sdhci_set_clock,
> -	.set_power = pxav3_set_power,
> +	.set_power = sdhci_set_power_and_bus_voltage,
>  	.platform_send_init_74_clocks = pxav3_gen_init_74_clocks,
>  	.get_max_clock = sdhci_pltfm_clk_get_max_clock,
>  	.set_bus_width = sdhci_set_bus_width,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
