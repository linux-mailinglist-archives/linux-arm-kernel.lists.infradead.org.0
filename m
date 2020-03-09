Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B18817D9DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeRiqokHv6q90X6K0Zglb71iyw+MpOndPiJxrnekb7c=; b=UuQU8hYMyUUNaZ
	lZV8782/Ov4pYWlKA8V/PttdDnToOUOaXc6fR4B4QZqfbRzhl6FzTqbp4n38tWeSqG4VnOWX1NdNX
	aBZMaB+Q+ZJOTaSO/mZEkro3Qcgm6F/AqJ7G+6hU3xJUw2g4MgpH18tbFyM/NqNocMLpN6P0ONPVr
	EfsA+tM8XMzYXqnSSDj7j+2lDRR912w6aLzYGtEXfoIkVoKg4iC6jdP7X5iIeug0yw+Za3SX0vjqB
	Aq0lPp2zlUmRlxndlzDPj6OpJ38O2LfFniwvbydKa2OohpDfznsF6f1XaCOsUOE6zPC8jaO8Awe+1
	jXg3Vm1WIBFxxr1BOzCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCq2-00028H-2f; Mon, 09 Mar 2020 07:28:34 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCpp-000277-7q; Mon, 09 Mar 2020 07:28:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 00:28:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; d="scan'208";a="235519591"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2020 00:28:14 -0700
Subject: Re: [PATCH v2 07/11] mmc: sdhci: am654: Use
 sdhci_set_power_and_voltage()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-8-nsaenzjulienne@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <9919960a-fcb1-f67d-17cf-37b49f2a2d5c@intel.com>
Date: Mon, 9 Mar 2020 09:27:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306174413.20634-8-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002821_332678_3AD7FDF2 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci_am654.c | 17 +++--------------
>  1 file changed, 3 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci_am654.c b/drivers/mmc/host/sdhci_am654.c
> index 3afea580fbea..c70647489bbd 100644
> --- a/drivers/mmc/host/sdhci_am654.c
> +++ b/drivers/mmc/host/sdhci_am654.c
> @@ -208,17 +208,6 @@ static void sdhci_j721e_4bit_set_clock(struct sdhci_host *host,
>  	sdhci_set_clock(host, clock);
>  }
>  
> -static void sdhci_am654_set_power(struct sdhci_host *host, unsigned char mode,
> -				  unsigned short vdd)
> -{
> -	if (!IS_ERR(host->mmc->supply.vmmc)) {
> -		struct mmc_host *mmc = host->mmc;
> -
> -		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
> -	}
> -	sdhci_set_power_noreg(host, mode, vdd);
> -}
> -
>  static void sdhci_am654_write_b(struct sdhci_host *host, u8 val, int reg)
>  {
>  	unsigned char timing = host->mmc->ios.timing;
> @@ -274,7 +263,7 @@ static struct sdhci_ops sdhci_am654_ops = {
>  	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
>  	.set_uhs_signaling = sdhci_set_uhs_signaling,
>  	.set_bus_width = sdhci_set_bus_width,
> -	.set_power = sdhci_am654_set_power,
> +	.set_power = sdhci_set_power_and_bus_voltage,
>  	.set_clock = sdhci_am654_set_clock,
>  	.write_b = sdhci_am654_write_b,
>  	.irq = sdhci_am654_cqhci_irq,
> @@ -297,7 +286,7 @@ static struct sdhci_ops sdhci_j721e_8bit_ops = {
>  	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
>  	.set_uhs_signaling = sdhci_set_uhs_signaling,
>  	.set_bus_width = sdhci_set_bus_width,
> -	.set_power = sdhci_am654_set_power,
> +	.set_power = sdhci_set_power_and_bus_voltage,
>  	.set_clock = sdhci_am654_set_clock,
>  	.write_b = sdhci_am654_write_b,
>  	.irq = sdhci_am654_cqhci_irq,
> @@ -320,7 +309,7 @@ static struct sdhci_ops sdhci_j721e_4bit_ops = {
>  	.get_timeout_clock = sdhci_pltfm_clk_get_max_clock,
>  	.set_uhs_signaling = sdhci_set_uhs_signaling,
>  	.set_bus_width = sdhci_set_bus_width,
> -	.set_power = sdhci_am654_set_power,
> +	.set_power = sdhci_set_power_and_bus_voltage,
>  	.set_clock = sdhci_j721e_4bit_set_clock,
>  	.write_b = sdhci_am654_write_b,
>  	.irq = sdhci_am654_cqhci_irq,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
