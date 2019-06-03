Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E448732F79
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fyjB1e2YKVcnEAsabTCPYgBs2B0p/AeczFcuo5zXvhE=; b=RZeWzt78Fop2RV
	9gZn3xg/hlEbRv2IV2yGCTHDqM6W7+Jz7AtMya35yudCZDI2CbWItxoBuqW9PLB8Q4rRYB6I724UN
	XONnW7daGb8We2c3ACfTZPutUxNyPJ9NWzYQ5DVnqGjXiyqcMFVDrjiznx2XC5aU+iTkACjXd98O2
	7A2IdpaxzQDcmHuPckY5Wv9DbUZgBa52Oz+BhiSF+wiXL9JRtosAR8WOQMZZiZFkD/cMgQcjDNR9I
	qObH7+Yfh+xk3+AwILEGoZW848mB/pFu0dBHvLp0hu6OUUEhtKcqh7+SC3EC5M89WxnyqXvpukHg2
	dK8KR7WKSd+8B5XIvOdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXlyc-00047w-Cu; Mon, 03 Jun 2019 12:22:10 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlyW-00047b-7H
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:22:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:22:03 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by orsmga005.jf.intel.com with ESMTP; 03 Jun 2019 05:21:59 -0700
Subject: Re: [PATCH 3/9] mmc: sdhci-sprd: Add optional gate clock support
To: Baolin Wang <baolin.wang@linaro.org>, ulf.hansson@linaro.org,
 zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
 mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <16b895cf30c235dc656eeed5888069b6266ab5f8.1558346019.git.baolin.wang@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <2969091b-408d-c505-d406-ce4b4f0679e0@intel.com>
Date: Mon, 3 Jun 2019 15:20:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <16b895cf30c235dc656eeed5888069b6266ab5f8.1558346019.git.baolin.wang@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_052204_273542_5D333D23 
X-CRM114-Status: GOOD (  21.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
> For the Spreadtrum SC9860 platform, we should enable another gate clock
> '2x_enable' to make the SD host controller work well.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-sprd.c |   35 +++++++++++++++++++++++++++++------
>  1 file changed, 29 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> index e741491..31ba7d6 100644
> --- a/drivers/mmc/host/sdhci-sprd.c
> +++ b/drivers/mmc/host/sdhci-sprd.c
> @@ -60,6 +60,7 @@ struct sdhci_sprd_host {
>  	u32 version;
>  	struct clk *clk_sdio;
>  	struct clk *clk_enable;
> +	struct clk *clk_2x_enable;
>  	u32 base_rate;
>  	int flags; /* backup of host attribute */
>  };
> @@ -364,6 +365,10 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
>  	}
>  	sprd_host->clk_enable = clk;
>  
> +	clk = devm_clk_get(&pdev->dev, "2x_enable");
> +	if (!IS_ERR(clk))
> +		sprd_host->clk_2x_enable = clk;
> +
>  	ret = clk_prepare_enable(sprd_host->clk_sdio);
>  	if (ret)
>  		goto pltfm_free;
> @@ -372,6 +377,10 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto clk_disable;
>  
> +	ret = clk_prepare_enable(sprd_host->clk_2x_enable);
> +	if (ret)
> +		goto clk_disable2;
> +
>  	sdhci_sprd_init_config(host);
>  	host->version = sdhci_readw(host, SDHCI_HOST_VERSION);
>  	sprd_host->version = ((host->version & SDHCI_VENDOR_VER_MASK) >>
> @@ -408,6 +417,9 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
>  	pm_runtime_disable(&pdev->dev);
>  	pm_runtime_set_suspended(&pdev->dev);
>  
> +	clk_disable_unprepare(sprd_host->clk_2x_enable);
> +
> +clk_disable2:
>  	clk_disable_unprepare(sprd_host->clk_enable);
>  
>  clk_disable:
> @@ -427,6 +439,7 @@ static int sdhci_sprd_remove(struct platform_device *pdev)
>  	mmc_remove_host(mmc);
>  	clk_disable_unprepare(sprd_host->clk_sdio);
>  	clk_disable_unprepare(sprd_host->clk_enable);
> +	clk_disable_unprepare(sprd_host->clk_2x_enable);
>  
>  	mmc_free_host(mmc);
>  
> @@ -449,6 +462,7 @@ static int sdhci_sprd_runtime_suspend(struct device *dev)
>  
>  	clk_disable_unprepare(sprd_host->clk_sdio);
>  	clk_disable_unprepare(sprd_host->clk_enable);
> +	clk_disable_unprepare(sprd_host->clk_2x_enable);
>  
>  	return 0;
>  }
> @@ -459,19 +473,28 @@ static int sdhci_sprd_runtime_resume(struct device *dev)
>  	struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
>  	int ret;
>  
> -	ret = clk_prepare_enable(sprd_host->clk_enable);
> +	ret = clk_prepare_enable(sprd_host->clk_2x_enable);
>  	if (ret)
>  		return ret;
>  
> +	ret = clk_prepare_enable(sprd_host->clk_enable);
> +	if (ret)
> +		goto clk_2x_disable;
> +
>  	ret = clk_prepare_enable(sprd_host->clk_sdio);
> -	if (ret) {
> -		clk_disable_unprepare(sprd_host->clk_enable);
> -		return ret;
> -	}
> +	if (ret)
> +		goto clk_disable;
>  
>  	sdhci_runtime_resume_host(host);
> -
>  	return 0;
> +
> +clk_disable:
> +	clk_disable_unprepare(sprd_host->clk_enable);
> +
> +clk_2x_disable:
> +	clk_disable_unprepare(sprd_host->clk_2x_enable);
> +
> +	return ret;
>  }
>  #endif
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
