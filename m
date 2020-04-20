Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B235B1B015B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:09:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1jT+yvCaNzuC8JLnS9Vy5NeCSlyarPUDMCa1jW3l1og=; b=MWYQwuW9Ptx4Xp
	o6Tx/iQvs+TES9xpOeBaKzX5UrQorMWyVQTVZymZLiovb+j55YksDiCTSLr/kpZBf2MhiAPB8g6//
	505Mgi1WmDSni8syi4cyi9pwniHS2x9wyOnS7uqhC8Pzy9i945SYafytZQZNiAt0k4A4h3J/MTDGf
	GjE/+G7tko+KRTO8HDa93YJOVVdHIQBoao3MAj4PVjOKKyiO1IxzK5MIsBlwdZMt15tDS3AIbYQlA
	ubiq58gnEv9snQLU1QmAhUDlXRTfdQiPPP/zFd6qBapLJvc91V+6FbPja64+ZZscu/ezL5jHw/LNP
	pslETi6bSNiMoWqqbGcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQPcl-0001BU-2U; Mon, 20 Apr 2020 06:09:43 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQPcd-0001Ae-72
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:09:36 +0000
IronPort-SDR: bNJrW7kvRMHIFklIkf/5yPWKH7lBPjS/D1m0wWf/r7yRkxUm3QPLBrkl0BoDA1m2Wc5nG82WYU
 WxE75OuI4GRQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 23:09:34 -0700
IronPort-SDR: SQHJ0sLBySw9ByQlKn3Z8vdXw2bZ5GeJdPCl37ICbWtL7AANdqyz4iwokbh8tzfH69f9t4qWmP
 tXIB/qV2bqrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,405,1580803200"; d="scan'208";a="456275136"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.87])
 ([10.237.72.87])
 by fmsmga006.fm.intel.com with ESMTP; 19 Apr 2020 23:09:31 -0700
Subject: Re: [PATCH][next] sdhci: arasan: fix uninitialized value being
 returned as error code
To: Colin King <colin.king@canonical.com>,
 Michal Simek <michal.simek@xilinx.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Manish Narani <manish.narani@xilinx.com>,
 linux-mmc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200417154901.112236-1-colin.king@canonical.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <49e93e7a-1f9e-ce5b-ca68-a088069ca2b0@intel.com>
Date: Mon, 20 Apr 2020 09:08:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200417154901.112236-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_230935_265019_BAE253F7 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/04/20 6:49 pm, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently the error return value in variable ret is not being initialized
> and so a successful return path is returning a garbage value. Since ret
> is not being used the simple fix is just return 0 on a successful return.
> 
> Addresses-Coverity: ("Uninitialized scalar variable")
> Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

>  drivers/mmc/host/sdhci-of-arasan.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 16e26c217a77..45603ba515b2 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -735,7 +735,6 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>  		container_of(clk_data, struct sdhci_arasan_data, clk_data);
>  	struct sdhci_host *host = sdhci_arasan->host;
>  	u8 tap_delay, tap_max = 0;
> -	int ret;
>  
>  	/*
>  	 * This is applicable for SDHCI_SPEC_300 and above
> @@ -781,7 +780,7 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>  		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
>  	}
>  
> -	return ret;
> +	return 0;
>  }
>  
>  static const struct clk_ops versal_sdcardclk_ops = {
> @@ -807,7 +806,6 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>  		container_of(clk_data, struct sdhci_arasan_data, clk_data);
>  	struct sdhci_host *host = sdhci_arasan->host;
>  	u8 tap_delay, tap_max = 0;
> -	int ret;
>  
>  	/*
>  	 * This is applicable for SDHCI_SPEC_300 and above
> @@ -857,7 +855,7 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>  		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
>  	}
>  
> -	return ret;
> +	return 0;
>  }
>  
>  static const struct clk_ops versal_sampleclk_ops = {
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
