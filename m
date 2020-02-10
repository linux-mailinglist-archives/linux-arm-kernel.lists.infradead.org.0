Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 503DD158486
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 22:01:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UtLNFYRajkbVjF398DvlWLEaypeXzexZ7+Tn4epOFCA=; b=Guh/ZAidxi3gY+3go+0RvXfGJ
	F8wwPOru9+hRRSr90JJJdU3p8wHM/yZbEXQRvNpqIEszl1aLerTP/fOwDSCjNEmGtHZeNNgmKyfjs
	Rfgdls11T3l1k/sLGgenFYfwyf1YGBl3oG/7tSCkWgD9dCHtdMkrfYoklcTVulALAzf52IQM16cfk
	4h2cocFWTXULnKsLctUeObXXcz86vSfeilHn1SC6b+xYsah+l9B3zSEJT6t3Ih37mwKbsIkwagtv8
	48CoexX+YFDuuCQwgNnrzHTVGFZvElQBgvqGf0HiKXiw/VraNxMsurRloc+8OlC9RUGBwCOeUUWNL
	S/XAwcXxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1GB4-0004Gw-E4; Mon, 10 Feb 2020 21:01:10 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1GAy-0004GT-6b
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 21:01:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 13:01:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,426,1574150400"; d="scan'208";a="265998822"
Received: from pdmullen-mobl.amr.corp.intel.com (HELO [10.251.9.121])
 ([10.251.9.121])
 by fmsmga002.fm.intel.com with ESMTP; 10 Feb 2020 13:00:59 -0800
Subject: Re: [alsa-devel] [PATCH -next] ASoC: SOF: imx8: Fix randbuild error
To: YueHaibing <yuehaibing@huawei.com>, lgirdwood@gmail.com,
 broonie@kernel.org, perex@perex.cz, tiwai@suse.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, daniel.baluta@nxp.com, krzk@kernel.org
References: <20200210061544.7600-1-yuehaibing@huawei.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <9351a746-8823-ee26-70da-fd3127a02c91@linux.intel.com>
Date: Mon, 10 Feb 2020 15:00:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200210061544.7600-1-yuehaibing@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_130104_290333_5680A1E1 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/10/20 12:15 AM, YueHaibing wrote:
> when do randconfig like this:
> CONFIG_SND_SOC_SOF_IMX8_SUPPORT=y
> CONFIG_SND_SOC_SOF_IMX8=y
> CONFIG_SND_SOC_SOF_OF=y
> CONFIG_IMX_DSP=m
> CONFIG_IMX_SCU=y
> 
> there is a link error:
> 
> sound/soc/sof/imx/imx8.o: In function 'imx8_send_msg':
> imx8.c:(.text+0x380): undefined reference to 'imx_dsp_ring_doorbell'
> 
> Select IMX_DSP in SND_SOC_SOF_IMX8_SUPPORT to fix this
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Fixes: f9ad75468453 ("ASoC: SOF: imx: fix reverse CONFIG_SND_SOC_SOF_OF dependency")
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Thanks for the report.

Would you mind sharing the .config and instructions to reproduce this 
case? we have an unrelated issue with allyesconfig that was reviewed here:

https://github.com/thesofproject/linux/pull/1778

and I'd probably a good thing to fix everything in one shot.

Thanks!

> ---
>   sound/soc/sof/imx/Kconfig | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
> index bae4f7b..81274906 100644
> --- a/sound/soc/sof/imx/Kconfig
> +++ b/sound/soc/sof/imx/Kconfig
> @@ -14,7 +14,7 @@ if SND_SOC_SOF_IMX_TOPLEVEL
>   config SND_SOC_SOF_IMX8_SUPPORT
>   	bool "SOF support for i.MX8"
>   	depends on IMX_SCU
> -	depends on IMX_DSP
> +	select IMX_DSP
>   	help
>   	  This adds support for Sound Open Firmware for NXP i.MX8 platforms
>   	  Say Y if you have such a device.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
