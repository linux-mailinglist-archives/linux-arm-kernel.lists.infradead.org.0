Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2EA32FC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/obOM92OtY4Eb3eTiOzj1c4/RoXtbT2LjVDnusH16QA=; b=RnCTAf/2zbzyZL
	uSXHqP0j/95EpdJmnaxeOBCqi901d48FF/+tb1aNYrmqVtz4SASUXGFDO/TRatnKA4MELb3O86bCa
	8acY2Xqx+sydkKKCNyYf78xCRT4yQbx8aMHrCmxfsorVL0PUAqVA7+XUfvFSyk+5kMU8BAlw6Lwvx
	muYEjmTnIsRFj1rRkZd94khebZdjodWGKnAJk+GOy/+chlKiJ1nSkbPXIiBo+CGeFr0MQEZO7rfEd
	62UAbepluMkFcLcP4hu37PHQAKQW1liuVP91FTuBfEl2K75If+mo6xfZC/i8ePyPNtc0PFtQmEkGZ
	/yiCm3khO57XNkYJwBFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXmC1-0000uU-Bx; Mon, 03 Jun 2019 12:36:01 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXmBu-0000te-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:35:55 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:35:53 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by orsmga005.jf.intel.com with ESMTP; 03 Jun 2019 05:35:49 -0700
Subject: Re: [PATCH 4/9] mmc: sdhci-sprd: Implement the
 get_max_timeout_count() interface
To: Baolin Wang <baolin.wang@linaro.org>, ulf.hansson@linaro.org,
 zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
 mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <ae6e23d4de6bb25cd697412f1402036d5ecc9843.1558346019.git.baolin.wang@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <ed5bdd08-7227-4d55-23de-e78e15d315c7@intel.com>
Date: Mon, 3 Jun 2019 15:34:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <ae6e23d4de6bb25cd697412f1402036d5ecc9843.1558346019.git.baolin.wang@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_053554_395047_9ADE8F9D 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
> Implement the get_max_timeout_count() interface to set the Spredtrum SD
> host controller actual maximum timeout count.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Seems surprising that there isn't a custom ->set_timeout() as well.
Nevertheless:

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-sprd.c |    7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> index 31ba7d6..d91281d 100644
> --- a/drivers/mmc/host/sdhci-sprd.c
> +++ b/drivers/mmc/host/sdhci-sprd.c
> @@ -285,6 +285,12 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
>  	usleep_range(300, 500);
>  }
>  
> +static unsigned int sdhci_sprd_get_max_timeout_count(struct sdhci_host *host)
> +{
> +	/* The Spredtrum controller actual maximum timeout count is 1 << 31 */
> +	return 1 << 31;
> +}
> +
>  static struct sdhci_ops sdhci_sprd_ops = {
>  	.read_l = sdhci_sprd_readl,
>  	.write_l = sdhci_sprd_writel,
> @@ -296,6 +302,7 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
>  	.reset = sdhci_reset,
>  	.set_uhs_signaling = sdhci_sprd_set_uhs_signaling,
>  	.hw_reset = sdhci_sprd_hw_reset,
> +	.get_max_timeout_count = sdhci_sprd_get_max_timeout_count,
>  };
>  
>  static void sdhci_sprd_request(struct mmc_host *mmc, struct mmc_request *mrq)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
