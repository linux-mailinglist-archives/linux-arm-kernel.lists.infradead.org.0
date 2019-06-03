Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326BB32F3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 14:11:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxvGQF6ARAJYglJjQPr7Ag7o0bTE40Zf6i7IYBb0Vh4=; b=QQQ+78N+QJFCbD
	pSTzRni64rlOqUO+tZ6tuiCu0z9SGXAS2MY+lDfQCea6nBSJ7EY5DjpuQbBFH2NHA2CnaxkJuRkSC
	BxlXyoS2Y1D7jou/6vumls6ZGgRcynb9QTHf4ulKRMQOUk9jC5grUZsqrPqLzHSIqQX9ZSKyBW3Xr
	IgOP06FMP4lJFPbMm7K3+Y1yTFoBuupFhK1Yq28rCtcw1jEGY+oBhjN3sRvCXcoHJP4xgBQE/VyN7
	emTU2wXzaldgenfdaEZDG1GWUIIPRR4HiVgszdGxnAV4NRMsbpSGtSMs1dL3ynOCf59Fm3l6jeKlk
	GwNDHBfpXwBrhD6OlmQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXloE-0008HC-SU; Mon, 03 Jun 2019 12:11:26 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXlo8-0008GX-1V
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 12:11:21 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:11:08 -0700
X-ExtLoop1: 1
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.198])
 ([10.237.72.198])
 by orsmga005.jf.intel.com with ESMTP; 03 Jun 2019 05:11:04 -0700
Subject: Re: [PATCH 1/9] mmc: sdhci-sprd: Check the enable clock's return
 value correctly
To: Baolin Wang <baolin.wang@linaro.org>, ulf.hansson@linaro.org,
 zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
 mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <7e4d922ba5aff5241b0186e9480a98b14693b28d.1558346019.git.baolin.wang@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <a3276a2f-f857-eaf8-11c2-fe383c47df8a@intel.com>
Date: Mon, 3 Jun 2019 15:09:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7e4d922ba5aff5241b0186e9480a98b14693b28d.1558346019.git.baolin.wang@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_051120_092980_584605B3 
X-CRM114-Status: GOOD (  16.42  )
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
> Missed to check the enable clock's return value, fix it.
> 
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-sprd.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> index 9a822e2..e741491 100644
> --- a/drivers/mmc/host/sdhci-sprd.c
> +++ b/drivers/mmc/host/sdhci-sprd.c
> @@ -368,7 +368,7 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto pltfm_free;
>  
> -	clk_prepare_enable(sprd_host->clk_enable);
> +	ret = clk_prepare_enable(sprd_host->clk_enable);
>  	if (ret)
>  		goto clk_disable;
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
