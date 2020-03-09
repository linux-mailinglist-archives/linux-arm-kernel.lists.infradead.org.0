Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A3FD17D9DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:30:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbyQTloqzaMWajEZhtBR5leu5/0z8ksnDxIVrjSFeUU=; b=WU1F8RwAMRQzk3
	Ny/ZO+tZ57P84BtC77yYMUWyYsgRO1w7at6SmXVpXtOCWOoov0LKo9svBLJNy4VTiOspXenXPJW2y
	BDHSAeb7XGHYst5PlX3rtA13UOzRe32AMD7HxeesM4dcbTRNFT35SB4xiuafaEqhdbnJkgEp42iLJ
	y/hp1o5BtfBI9VPNhCkqGE3TYU1cIIw7BBMj5C8g9kK78GFo2TJCUp4G+20PgHQh/EU40HTsvjiIM
	SaRepcN40EZzFdKHIc18ydqXMYev03ZjwcVYmzIHDb1taF7ELcRwcoGbEnUq96/5YL4ls4opIBNJb
	UFovFpkjqFdj2KivxUrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCrR-0002Ug-7w; Mon, 09 Mar 2020 07:30:01 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCrI-0002U3-2B; Mon, 09 Mar 2020 07:29:53 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 00:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; d="scan'208";a="235519831"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2020 00:29:47 -0700
Subject: Re: [PATCH v2 09/11] mmc: sdhci: iproc: Add custom set_power()
 callback for bcm2711
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-10-nsaenzjulienne@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <254549a8-804a-eb8a-7fce-374852bbd9af@intel.com>
Date: Mon, 9 Mar 2020 09:29:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306174413.20634-10-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002952_113938_E53D6BB3 
X-CRM114-Status: GOOD (  18.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: stefan.wahren@i2se.com, Ulf Hansson <ulf.hansson@linaro.org>,
 f.fainelli@gmail.com, linux-mmc@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, phil@raspberrypi.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/03/20 7:44 pm, Nicolas Saenz Julienne wrote:
> The controller needs a valid bus voltage in its power register
> regardless of whether an external regulator is taking care of the power
> supply.
> 
> The sdhci core already provides a helper function for this,
> sdhci_set_power_and_bus_voltage(), so create a bcm2711 specific 'struct
> sdhci_ops' which makes use of it.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-iproc.c | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> index f4f5f0a70cda..225603148d7d 100644
> --- a/drivers/mmc/host/sdhci-iproc.c
> +++ b/drivers/mmc/host/sdhci-iproc.c
> @@ -261,9 +261,24 @@ static const struct sdhci_iproc_data bcm2835_data = {
>  	.mmc_caps = 0x00000000,
>  };
>  
> +static const struct sdhci_ops sdhci_iproc_bcm2711_ops = {
> +	.read_l = sdhci_iproc_readl,
> +	.read_w = sdhci_iproc_readw,
> +	.read_b = sdhci_iproc_readb,
> +	.write_l = sdhci_iproc_writel,
> +	.write_w = sdhci_iproc_writew,
> +	.write_b = sdhci_iproc_writeb,
> +	.set_clock = sdhci_set_clock,
> +	.set_power = sdhci_set_power_and_bus_voltage,
> +	.get_max_clock = sdhci_iproc_get_max_clock,
> +	.set_bus_width = sdhci_set_bus_width,
> +	.reset = sdhci_reset,
> +	.set_uhs_signaling = sdhci_set_uhs_signaling,
> +};
> +
>  static const struct sdhci_pltfm_data sdhci_bcm2711_pltfm_data = {
>  	.quirks = SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12,
> -	.ops = &sdhci_iproc_32only_ops,
> +	.ops = &sdhci_iproc_bcm2711_ops,
>  };
>  
>  static const struct sdhci_iproc_data bcm2711_data = {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
