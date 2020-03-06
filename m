Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC33017BCD8
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 13:35:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=70tqm5Fx/PVlV80i1wQ/AGt/Z++FEwc264EC0C+1hL0=; b=UmNasj+5w8N0c3
	tb/DKqYJDbM3xb6Ey1+rt3lv5eqv1+MrMg2l4FgUVTKbmgo+zXEaxBZgS6NZD1oEsdRRNQwNTyduj
	cNqr3yRdiGQqa7sXocSO7rPfcdRe1yQ1FwlvSLmYMvO4Fu0KObIf0q4nB7Ge6vc/iJbSAryH4lOlL
	mlcON/mQdgU6b9qLzO3y2u8tufmMZjU17tMnPYYYBQ3JHX+6MHEKFIbqjjZMENoUk3jg6XG7mOH+3
	u1HbbUYNy4LyObJ5hobYug8MADF4yxmBIkSl+J2PCJ7v489hXTDztwy1sgrJB764BbtDV1jg4/IQr
	Ckx85UQK6abKbdTsOp/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jACCO-0002x5-Qj; Fri, 06 Mar 2020 12:35:28 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jACCF-0002w1-4n; Fri, 06 Mar 2020 12:35:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 04:35:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="275524609"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2020 04:35:14 -0800
Subject: Re: [PATCH 01/10] mmc: sdhci: Add quirk SDHCI_QUIRK2_SET_BUS_VOLTAGE
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
 <20200306103857.23962-2-nsaenzjulienne@suse.de>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <55ef25ae-5c73-7778-dfda-976809cf9fe6@intel.com>
Date: Fri, 6 Mar 2020 14:34:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200306103857.23962-2-nsaenzjulienne@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_043519_199743_46407A92 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/03/20 12:38 pm, Nicolas Saenz Julienne wrote:
> Adds quirk for controllers whose bus power select register has to be set
> even when powering SD cards from a regulator.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/mmc/host/sdhci.c | 5 +++++
>  drivers/mmc/host/sdhci.h | 2 ++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
> index c59566363a42..c7fd87447457 100644
> --- a/drivers/mmc/host/sdhci.c
> +++ b/drivers/mmc/host/sdhci.c
> @@ -1920,6 +1920,11 @@ static void sdhci_set_power_reg(struct sdhci_host *host, unsigned char mode,
>  
>  	mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, vdd);
>  
> +	if (host->quirks2 & SDHCI_QUIRK2_SET_BUS_VOLTAGE) {

We don't really want to replace callbacks by quirks.

Replace sdhci_milbeaut_set_power() etc by a common fn in sdhci.c if you want.

> +		sdhci_set_power_noreg(host, mode, vdd);
> +		return;
> +	}
> +
>  	if (mode != MMC_POWER_OFF)
>  		sdhci_writeb(host, SDHCI_POWER_ON, SDHCI_POWER_CONTROL);
>  	else
> diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
> index cac2d97782e6..9531a4e5b148 100644
> --- a/drivers/mmc/host/sdhci.h
> +++ b/drivers/mmc/host/sdhci.h
> @@ -484,6 +484,8 @@ struct sdhci_host {
>   * block count.
>   */
>  #define SDHCI_QUIRK2_USE_32BIT_BLK_CNT			(1<<18)
> +/* Set bus voltage even when powering from an external regulator */
> +#define SDHCI_QUIRK2_SET_BUS_VOLTAGE			(1<<19)
>  
>  	int irq;		/* Device IRQ */
>  	void __iomem *ioaddr;	/* Mapped address */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
