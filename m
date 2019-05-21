Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B02246B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 06:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46yxGUav09m0Dz1SPZDj3fV3T9Djh3q94mX8iuqRF4w=; b=iPWUXlqe3rNBji
	0k/8XgVpWH7+b3Wn1mXoQWX+ET0BZIUpl7Fq8CNAsBKdh1ED0DexwYT3J6IEzZrdHe5xxKRIA0jJK
	rMRLIHfd1XOT9cRN7pPQA2XE1WHPfi0VXKTcDOxjCD6CBq6qKP6+asGYRYa+LPBo0SzpNIjEsrLqQ
	ku1ZIcQfLThXKQfHQ3dYfmSFumK6IQ8OgCrvTZWD0PzRf4OxTLUiXb7b8mk2q7MP6yVHER2TT+3U8
	4c7AIyp1o3Jp7nxmTNXS5+Kni9jsiCVxcGdOrJKST9c/th29xyCQ+2wE4ZtSdVK/kDD5hrOUXkltE
	Gy6IdrpBiFNhpBW06HfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSwEZ-00021C-E6; Tue, 21 May 2019 04:18:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSwES-00020r-5I
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 04:18:33 +0000
Received: from localhost (unknown [106.201.107.13])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DBFE2054F;
 Tue, 21 May 2019 04:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558412311;
 bh=fZXYRkAeFGnA+NIcHyTm3OTAcMXVrInGSq8PaIKCbfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gX6Ml98y6y0nRsMKLAHlU0I3dsJDEzjTVwyPtbbi3XRSvNeXbVqEiOUIm88LhtgJ9
 sBZGVJZwG1HRd01ExEXA55n4aGYPZg6QQ8BS4JFT63ckZ3VRTz5URCjwpSuJU489ta
 gP9Ce2v5NGuNUcsmEWbptEeJnstmc+czndaqlrLo=
Date: Tue, 21 May 2019 09:48:28 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3 11/14] dmaengine: imx-sdma: fix ecspi1 rx dma not work
 on i.mx8mm
Message-ID: <20190521041828.GG15118@vkoul-mobl>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
 <1557249513-4903-12-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557249513-4903-12-git-send-email-yibin.gong@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_211832_218582_3AD8A10C 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "broonie@kernel.org" <broonie@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-05-19, 09:16, Robin Gong wrote:
> Because the number of ecspi1 rx event on i.mx8mm is 0, the condition
> check ignore such special case without dma channel enabled, which caused
> ecspi1 rx works failed. Actually, no need to check event_id0, checking
> event_id1 is enough for DEV_2_DEV case because it's so lucky that event_id1
> never be 0.

Well is that by chance or design that event_id1 will be never 0?

> 
> Signed-off-by: Robin Gong <yibin.gong@nxp.com>
> ---
>  drivers/dma/imx-sdma.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index a495c7f..86594fc 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -1370,8 +1370,8 @@ static void sdma_free_chan_resources(struct dma_chan *chan)
>  
>  	sdma_channel_synchronize(chan);
>  
> -	if (sdmac->event_id0)
> -		sdma_event_disable(sdmac, sdmac->event_id0);
> +	sdma_event_disable(sdmac, sdmac->event_id0);
> +
>  	if (sdmac->event_id1)
>  		sdma_event_disable(sdmac, sdmac->event_id1);
>  
> @@ -1670,11 +1670,9 @@ static int sdma_config(struct dma_chan *chan,
>  	memcpy(&sdmac->slave_config, dmaengine_cfg, sizeof(*dmaengine_cfg));
>  
>  	/* Set ENBLn earlier to make sure dma request triggered after that */
> -	if (sdmac->event_id0) {
> -		if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
> -			return -EINVAL;
> -		sdma_event_enable(sdmac, sdmac->event_id0);
> -	}
> +	if (sdmac->event_id0 >= sdmac->sdma->drvdata->num_events)
> +		return -EINVAL;
> +	sdma_event_enable(sdmac, sdmac->event_id0);
>  
>  	if (sdmac->event_id1) {
>  		if (sdmac->event_id1 >= sdmac->sdma->drvdata->num_events)
> -- 
> 2.7.4
> 

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
