Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA35150555
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 12:32:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmx0wmX388diqWFVOhzDteVTTgTNHYKCQG5tkJbR9us=; b=r/3WD7t4Yah8ga
	/uRN9rCwyuGx8SSMjfHIIXDI7n/84VdflEXJGvr1cb8bh09qrQw7q5iwDDC3cPVtn+RjN/RKTJHYY
	F4wTFhCGWb4ihyE2xjmgeAemo22NlShrcIfVTroX6cOpNd2XMI/YLsn49cwKZE4a0Q5+d3xfJB0sh
	NNT4NKgieoeB+DzM/3wgLGe81pxJT1sZWw3CrJk0x4rEmRsiUIAv2GZc9uRYp2hoexSyuro5/cexE
	13KjNFSaUHH5p7rsMmJ+MFTvtO3BeEG2htMXndWS4kmQ35vdpKE0G7IMbVCob8DFZxVNvP32UxiZa
	DFntkuZNjJdtCRtGdrTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyZxr-0002lO-2S; Mon, 03 Feb 2020 11:32:27 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyZxf-0002fD-Fa
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 11:32:16 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 03:32:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; d="scan'208";a="225138954"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga008.fm.intel.com with ESMTP; 03 Feb 2020 03:32:10 -0800
Subject: Re: [PATCH 4/4] sdhci: arasan: Remove quirk for broken base clock
To: Manish Narani <manish.narani@xilinx.com>, michal.simek@xilinx.com,
 ulf.hansson@linaro.org, jolly.shah@xilinx.com, rajan.vaja@xilinx.com,
 nava.manne@xilinx.com, tejas.patel@xilinx.com
References: <1579602095-30060-1-git-send-email-manish.narani@xilinx.com>
 <1579602095-30060-5-git-send-email-manish.narani@xilinx.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <99fd3904-37fa-f070-f7ac-e1dcb5bf43de@intel.com>
Date: Mon, 3 Feb 2020 13:31:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1579602095-30060-5-git-send-email-manish.narani@xilinx.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_033215_540835_34B09BCB 
X-CRM114-Status: GOOD (  18.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21/01/20 12:21 pm, Manish Narani wrote:
> This patch removes quirk which indicates a broken base clock. This was
> making the kernel report wrong base clock of ~187MHz instead of 200MHz
> even as the measurement on the hardware was showing 200MHz.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> State: pending

Huh?

Otherwise:

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 39176ab5ca1f..0146d7dd315b 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -358,6 +358,17 @@ static struct sdhci_arasan_of_data sdhci_arasan_data = {
>  	.pdata = &sdhci_arasan_pdata,
>  };
>  
> +static const struct sdhci_pltfm_data sdhci_arasan_zynqmp_pdata = {
> +	.ops = &sdhci_arasan_ops,
> +	.quirks2 = SDHCI_QUIRK2_PRESET_VALUE_BROKEN |
> +			SDHCI_QUIRK2_CLOCK_DIV_ZERO_BROKEN |
> +			SDHCI_QUIRK2_STOP_WITH_TC,
> +};
> +
> +static struct sdhci_arasan_of_data sdhci_arasan_zynqmp_data = {
> +	.pdata = &sdhci_arasan_zynqmp_pdata,
> +};
> +
>  static u32 sdhci_arasan_cqhci_irq(struct sdhci_host *host, u32 intmask)
>  {
>  	int cmd_error = 0;
> @@ -553,7 +564,7 @@ static const struct of_device_id sdhci_arasan_of_match[] = {
>  	},
>  	{
>  		.compatible = "xlnx,zynqmp-8.9a",
> -		.data = &sdhci_arasan_data,
> +		.data = &sdhci_arasan_zynqmp_data,
>  	},
>  	{ /* sentinel */ }
>  };
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
