Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F3D17D9D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:26:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zXcojKYLWwL4u65uIFINvQWO2MwftdHRbgVTqf9JUfI=; b=fIgGfqbiPKUgfH
	1oZxzB/2JUt9AxOg+Kg0XayZhhUbsSB1NIC4gGxGlEx2bKIktJbR4k0cizogXTZMsYORDHPa/p2kj
	FW6mn5gumxwyP4Tw8Hc6XNRLInF6tFU2XBOzi5e+4ZlGfojwgqc8FtVwnIXgBFpNAHRH3+8xNFJhN
	H2L8QfuD+9k0kPZwjivrBQsLuVOXEC0i941SmvEETpwX91PObT+4UWml5A48/03w5yEr+lEzNpWgV
	/ZPn0GZ2i5oq2XGaoedgrMg4JMRt1/ryIfHUNirQfGEYjGypVkc53ft51dJE69/vlJTcxouqqziKT
	qNIAo8HpVehTDtExXUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCnf-0001Wd-2v; Mon, 09 Mar 2020 07:26:07 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCnU-0001WF-4V; Mon, 09 Mar 2020 07:25:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 00:25:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; d="scan'208";a="235519256"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2020 00:25:51 -0700
Subject: Re: [PATCH v2 03/11] mmc: sdhci: milbeaut: Use
 sdhci_set_power_and_voltage()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-4-nsaenzjulienne@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <fbd3fdf0-fea7-a19b-82c5-1a4fa4041027@intel.com>
Date: Mon, 9 Mar 2020 09:25:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306174413.20634-4-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002556_186138_8E354A00 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-milbeaut.c | 13 +------------
>  1 file changed, 1 insertion(+), 12 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-milbeaut.c b/drivers/mmc/host/sdhci-milbeaut.c
> index 92f30a1db435..4e7cc0680f94 100644
> --- a/drivers/mmc/host/sdhci-milbeaut.c
> +++ b/drivers/mmc/host/sdhci-milbeaut.c
> @@ -121,17 +121,6 @@ static void sdhci_milbeaut_reset(struct sdhci_host *host, u8 mask)
>  	}
>  }
>  
> -static void sdhci_milbeaut_set_power(struct sdhci_host *host,
> -			unsigned char mode, unsigned short vdd)
> -{
> -	if (!IS_ERR(host->mmc->supply.vmmc)) {
> -		struct mmc_host *mmc = host->mmc;
> -
> -		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
> -	}
> -	sdhci_set_power_noreg(host, mode, vdd);
> -}
> -
>  static const struct sdhci_ops sdhci_milbeaut_ops = {
>  	.voltage_switch = sdhci_milbeaut_soft_voltage_switch,
>  	.get_min_clock = sdhci_milbeaut_get_min_clock,
> @@ -139,7 +128,7 @@ static const struct sdhci_ops sdhci_milbeaut_ops = {
>  	.set_clock = sdhci_set_clock,
>  	.set_bus_width = sdhci_set_bus_width,
>  	.set_uhs_signaling = sdhci_set_uhs_signaling,
> -	.set_power = sdhci_milbeaut_set_power,
> +	.set_power = sdhci_set_power_and_bus_voltage,
>  };
>  
>  static void sdhci_milbeaut_bridge_reset(struct sdhci_host *host,
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
