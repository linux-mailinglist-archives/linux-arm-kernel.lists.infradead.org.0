Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EBC17D9BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSyqpmiVkzGUzHYc4Kxd8JjdVa9rPKO2oQRCRYZmCRo=; b=IXLKYHcxIQLGKe
	x0YT7Jlrr5d20L0wwKHffDEqsjt/r/OPW3xTi01LmCLvldTkQ4l1B88HTTl6oBiUkGTPsz5WjtTSg
	cDHNHZmfAY4TTHDOm+BaMRyT3VXoKPAKL0PToSoyfdA0pUDUQezOh7eVk+xWat4XU3z4nbocTq7f5
	MaauFpj63ko467ZLP5BlsXQiTIyH8QcIQs/pUExLQ5X3QH46awhYi1yfMThvSTyMyl2UzEwrFdtc0
	4XaTRQSQa58QEMBJzj57UwmAKbKZrxWAa7MC7DcLrCWhe7wxbUKBat5qEOCUUCl6eQtfOkqEmYn2u
	atIPH6g5AydijzoQjs6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCjR-0007NC-1E; Mon, 09 Mar 2020 07:21:45 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCj4-00079S-7t; Mon, 09 Mar 2020 07:21:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 00:21:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; d="scan'208";a="235518522"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2020 00:21:17 -0700
Subject: Re: [PATCH v2 06/11] mmc: sdhci: xenon: Use
 sdhci_set_power_and_voltage()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, Hu Ziji <huziji@marvell.com>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-7-nsaenzjulienne@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <4e74203a-5444-2b7a-3555-9615cc45aaae@intel.com>
Date: Mon, 9 Mar 2020 09:20:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306174413.20634-7-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002122_343724_05834BA8 
X-CRM114-Status: GOOD (  18.28  )
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
>  drivers/mmc/host/sdhci-xenon.c | 20 +-------------------
>  1 file changed, 1 insertion(+), 19 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-xenon.c b/drivers/mmc/host/sdhci-xenon.c
> index 1dea1ba66f7b..1e9a7a76f2ba 100644
> --- a/drivers/mmc/host/sdhci-xenon.c
> +++ b/drivers/mmc/host/sdhci-xenon.c
> @@ -213,24 +213,6 @@ static void xenon_set_uhs_signaling(struct sdhci_host *host,
>  	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
>  }
>  
> -static void xenon_set_power(struct sdhci_host *host, unsigned char mode,
> -		unsigned short vdd)
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
>  static void xenon_voltage_switch(struct sdhci_host *host)
>  {
>  	/* Wait for 5ms after set 1.8V signal enable bit */
> @@ -240,7 +222,7 @@ static void xenon_voltage_switch(struct sdhci_host *host)
>  static const struct sdhci_ops sdhci_xenon_ops = {
>  	.voltage_switch		= xenon_voltage_switch,
>  	.set_clock		= sdhci_set_clock,
> -	.set_power		= xenon_set_power,
> +	.set_power		= sdhci_set_power_and_bus_voltage,
>  	.set_bus_width		= sdhci_set_bus_width,
>  	.reset			= xenon_reset,
>  	.set_uhs_signaling	= xenon_set_uhs_signaling,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
