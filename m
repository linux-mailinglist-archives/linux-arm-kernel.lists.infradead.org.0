Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A43F15D66
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JpmlrecOCZDK2rynKWDhkPbmBcacnLW9ASbn2NOSU20=; b=aDdXYZCD60/tjx
	LPkyw1eBAd8cjFkyTkFjVj0bGUX/L9z7NzBd+mdkcovdRwu7bEOPSV6UUKy4dXKTbZ9hZTt5/DyWR
	cvmF+ojmCDWrpgmV9TqFVKgp5NUH3bIACt1ampxHw0phVPH2/vRg6Q75Vx2nzapt2Pawi14j1D43/
	ku2lmiZdt7YOBtUoFatKpjrfKLrQIbth+A0Ieu8bA05yhh6eStvZoCslF1c6Le3RwepJ5es6IQ/oa
	me8yMXcIISR/DnStCTLtUbq5OoySOE3ZwKQuos4M1Zs/iqsGBWNB3u79asISksMpW+Vz1GHEusFp9
	3FzP1XJDi6Dq5tAoicpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtf9-0007Ab-DD; Tue, 07 May 2019 06:33:15 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtf2-0007AG-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:33:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 May 2019 23:33:08 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by fmsmga007.fm.intel.com with ESMTP; 06 May 2019 23:33:05 -0700
Subject: Re: [PATCH 1/2] mmc: sdhci-iproc: cygnus: Set NO_HISPD bit to fix
 HS50 data hold time problem
To: Scott Branden <scott.branden@broadcom.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Stefan Wahren <stefan.wahren@i2se.com>
References: <20190506170115.10840-1-scott.branden@broadcom.com>
 <20190506170115.10840-2-scott.branden@broadcom.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <195374db-9a9a-2807-d8be-50ec4e8fedcb@intel.com>
Date: Tue, 7 May 2019 09:32:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506170115.10840-2-scott.branden@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_233308_110590_F407F680 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mmc@vger.kernel.org, Trac Hoang <trac.hoang@broadcom.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/05/19 8:01 PM, Scott Branden wrote:
> From: Trac Hoang <trac.hoang@broadcom.com>
> 
> The iproc host eMMC/SD controller hold time does not meet the
> specification in the HS50 mode. This problem can be mitigated
> by disabling the HISPD bit; thus forcing the controller output
> data to be driven on the falling clock edges rather than the
> rising clock edges.
> 
> This change applies only to the Cygnus platform.
> 
> Fixes: c833e92bbb60 ("mmc: sdhci-iproc: support standard byte register accesses")
> Signed-off-by: Trac Hoang <trac.hoang@broadcom.com>
> Signed-off-by: Scott Branden <scott.branden@broadcom.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-iproc.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-iproc.c b/drivers/mmc/host/sdhci-iproc.c
> index 9d12c06c7fd6..9d4071c41c94 100644
> --- a/drivers/mmc/host/sdhci-iproc.c
> +++ b/drivers/mmc/host/sdhci-iproc.c
> @@ -196,7 +196,8 @@ static const struct sdhci_ops sdhci_iproc_32only_ops = {
>  };
>  
>  static const struct sdhci_pltfm_data sdhci_iproc_cygnus_pltfm_data = {
> -	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK,
> +	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK |
> +		  SDHCI_QUIRK_NO_HISPD_BIT,
>  	.quirks2 = SDHCI_QUIRK2_ACMD23_BROKEN | SDHCI_QUIRK2_HOST_OFF_CARD_ON,
>  	.ops = &sdhci_iproc_32only_ops,
>  };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
