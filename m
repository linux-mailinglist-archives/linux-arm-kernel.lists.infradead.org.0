Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E93F113613
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 21:01:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=imwb/sYrnv8gw/dOMOBnJ/CwBfL5MzSAuMla/A8MQas=; b=nkfUAZUSC7k6xg63/dkflwcs/
	GH+/o9ih7mpB/Is7IT7MVVSwI9GnPR5YAeopzrFaS6AqnbZgDSx7/RiB1lpyc2nc/oSEmFOCZOIy9
	iCKVaCaIIHye5hC8ceD5ssps9LwFwf11ojDkmzu9ZnxQ9ONnyi0BYACo/kVDCvfIgOw7GmcTSGMsf
	r5HTBbPNBTTHCvLfLN7rZiWDKTUyIbEc+EPhI28iCmS1JWUlYAGD/di80/D2T4kBVQsRczvbsmwRI
	m6FnEiG371GBP84jEgF/9p9J7dXzVrFbqwazqQLTXrJ/Nw9XOPIqiSRNYv2VKyAjHxWkKEScR5+cq
	6igvAROmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icapd-0003iB-1h; Wed, 04 Dec 2019 20:01:05 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icapW-0003ha-2Y
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 20:00:59 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 12:00:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="236407731"
Received: from jcourage-mobl.amr.corp.intel.com (HELO [10.251.152.230])
 ([10.251.152.230])
 by fmsmga004.fm.intel.com with ESMTP; 04 Dec 2019 12:00:54 -0800
Subject: Re: [alsa-devel] [PATCH] ASoC: SOF: imx8: fix memory allocation
 failure check on priv->pd_dev
To: Colin King <colin.king@canonical.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org
References: <20191204124816.1415359-1-colin.king@canonical.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <33fec540-e97b-25e7-83af-575f19d829d2@linux.intel.com>
Date: Wed, 4 Dec 2019 13:13:45 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204124816.1415359-1-colin.king@canonical.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_120058_158410_15804B80 
X-CRM114-Status: GOOD (  17.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/4/19 6:48 AM, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> The memory allocation failure check for priv->pd_dev is incorrectly
> pointer checking priv instead of priv->pd_dev. Fix this.
> 
> Addresses-Coverity: ("Logically dead code")
> Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>

Thanks Colin

Acked-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>

> ---
>   sound/soc/sof/imx/imx8.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
> index cfefcfd92798..9d926b1df0d7 100644
> --- a/sound/soc/sof/imx/imx8.c
> +++ b/sound/soc/sof/imx/imx8.c
> @@ -209,7 +209,7 @@ static int imx8_probe(struct snd_sof_dev *sdev)
>   
>   	priv->pd_dev = devm_kmalloc_array(&pdev->dev, priv->num_domains,
>   					  sizeof(*priv->pd_dev), GFP_KERNEL);
> -	if (!priv)
> +	if (!priv->pd_dev)
>   		return -ENOMEM;
>   
>   	priv->link = devm_kmalloc_array(&pdev->dev, priv->num_domains,
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
