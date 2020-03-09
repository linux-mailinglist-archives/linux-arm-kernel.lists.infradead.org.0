Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE2717D9C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 08:22:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MsEeXuZsJSgEXRBu4VCAD0FxpNz7Rrb2LGZMNn7LHkA=; b=dK7FgRi/O6J70a
	qhQ6KTmO+4+JtkE7pETZoCQjaBXmRuV21Y1i89cW68hd/8Cg87ymxe6ImmOIaaA6X6qmP5EScFg3d
	l8VGgI7jXMrKOUQmHHzTiIC9WIkKQD42nfjv+Sv5RL1Zili122jlXgUdCjHWClfOevUqs4LfKd6Lp
	1cyihy85boObm24Q9MrRrDHBraZzo2B7UUUf0jmqe/MhdpJ/HMRgqOoMW6EVIv7GA5byb1P7UtsPF
	JoNos6boOvFlnWqH9pM2g24PzFqyRO5Fb200WlTeGBGvoFi0rAt7Wor8OOVdMKlZuneImuYavVDOQ
	0YemYz8DPzGbvoEp1+fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBCjj-0007ka-IU; Mon, 09 Mar 2020 07:22:03 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBCjV-0007ep-0m; Mon, 09 Mar 2020 07:21:52 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 00:21:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,532,1574150400"; d="scan'208";a="235518625"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 09 Mar 2020 00:21:45 -0700
Subject: Re: [PATCH v2 01/11] mmc: sdhci: Introduce
 sdhci_set_power_and_bus_voltage()
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-kernel@vger.kernel.org
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-2-nsaenzjulienne@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <76f253b4-c4d9-9f54-d161-8013494759f5@intel.com>
Date: Mon, 9 Mar 2020 09:21:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306174413.20634-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_002149_203161_77BF13EC 
X-CRM114-Status: GOOD (  16.77  )
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
> Some controllers diverge from the standard way of setting power and need
> their bus voltage register to be configured regardless of the whether
> they use regulators. As this is a common pattern across sdhci hosts,
> create a helper function.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci.c | 19 +++++++++++++++++++
>  drivers/mmc/host/sdhci.h |  3 +++
>  2 files changed, 22 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index 9c3745118e49..6ed11f9554e8 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -2010,6 +2010,25 @@ void sdhci_set_power(struct sdhci_host *host, unsigned char mode,
>  }
>  EXPORT_SYMBOL_GPL(sdhci_set_power);
>  
> +/*
> + * Some controllers need to configure a valid bus voltage on their power
> + * register regardless of whether an external regulator is taking care of power
> + * supply. This helper function takes care of it if set as the controller's
> + * sdhci_ops.set_power callback.
> + */
> +void sdhci_set_power_and_bus_voltage(struct sdhci_host *host,
> +				     unsigned char mode,
> +				     unsigned short vdd)
> +{
> +	if (!IS_ERR(host->mmc->supply.vmmc)) {
> +		struct mmc_host *mmc = host->mmc;
> +
> +		mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
> +	}
> +	sdhci_set_power_noreg(host, mode, vdd);
> +}
> +EXPORT_SYMBOL_GPL(sdhci_set_power_and_bus_voltage);
> +
>  /*****************************************************************************\
>   *                                                                           *
>   * MMC callbacks                                                             *
> diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> index cac2d97782e6..1be7c18264cd 100644
> --- a/drivers/mmc/host/sdhci.h
> +++ b/drivers/mmc/host/sdhci.h
> @@ -772,6 +772,9 @@ void sdhci_set_clock(struct sdhci_host *host, unsigned int clock);
>  void sdhci_enable_clk(struct sdhci_host *host, u16 clk);
>  void sdhci_set_power(struct sdhci_host *host, unsigned char mode,
>  		     unsigned short vdd);
> +void sdhci_set_power_and_bus_voltage(struct sdhci_host *host,
> +				     unsigned char mode,
> +				     unsigned short vdd);
>  void sdhci_set_power_noreg(struct sdhci_host *host, unsigned char mode,
>  			   unsigned short vdd);
>  void sdhci_request(struct mmc_host *mmc, struct mmc_request *mrq);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
