Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3EE6087F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwk7Gx+PbTRmabXPmLsQ+yphK7LPEGoDzY5GWs+FXng=; b=RPxY9vOXnZHA19
	OUMEXAmwyIBf/DMWoMXFjWeX4i5Tjcney27A1JyuElrE8bS3bDfDLuB9Lcjk/qK/m37+0qzWnlN1Q
	hET/A4xoKLgfqQ4PGmsieWECR7Cl/EpUrMVUGqodTQmbFyiVRG17+ibTfdgJA0aA7DaKIOsIKbRMM
	AwcExv3Tjn5RHc5uD4q32rQq5IjK/BsHQIpzdlphEEjKSy3mUZ+gZQ7+ZiHOYP9aICoTY6OiwlKgs
	r12InoD7xTLw7Mjo5Bzwql9tLSupWAdxpxy/ZmbZ1cGMwL4CIzgw00QvDYsJDKWrlqOsx3vju+d0v
	OtCw5X+lsIHz0mmx1DWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPdO-0000I5-UN; Fri, 05 Jul 2019 14:56:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPdJ-0000Hp-AT
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PxI1aEZA7JKJyZBTunZzpNeErUZgdIOxuigi+EI6Ox0=; b=GBk+/044chRDu3ntuqtxoBi5Q
 lGiBm6s4qOfpmWlZjrDZBZKOUj2AfD9VZ0E0/yjazJMbNjjJCxFZYhxK/FhTJhWnNGvClyu08LNWb
 hoCN78UB0qfjMmvjG/fhFT4vcoCshoGWblzJEEb0KDPNEwBu+CDrXbNsVfHtkSu0xMCvkhrqXHDyJ
 EKKVkjhXdRLMCgTKvg4ysqzDhCmoRI0ZB6zBNMEIzQrX2u8JQdEJo3R6fhrabXZzmRVyBqPZIvDPi
 qVkvltHc76tk5OBJ+9toxJBxX+iIK4iOtN84vLHB++y1LxRYdAaYeKyqJGlit8cepGR9FWPk5N09b
 ixnLccAdg==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIi2-0003UB-PV
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:32:45 +0000
Received: from localhost (unknown [122.167.76.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4CCF3218BC;
 Fri,  5 Jul 2019 07:32:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562311924;
 bh=JpmYmVJdeyOKL4gwfK9NXbgVVN4HNKQ6CivC20fWqqs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FnLFo2FLjiZCzplwEuXBb7HQqUmixvzRudP2KPjeGnfV8x4I0jsHtDQv/lsAFHipF
 MAnfumrro3iJ4+cc8iIPA3TlbhTv17V/+pT+tDVkPJwaoX4qk21v108RuSZOi5V6XR
 IO/qXGYfvW1qP5de/j1w2S4gsX4vTuHkwnZQHLBg=
Date: Fri, 5 Jul 2019 12:58:47 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error
 path
Message-ID: <20190705072847.GA2911@vkoul-mobl>
References: <20190624140731.24080-1-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624140731.24080-1-TheSven73@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_083243_157900_EE2298D6 
X-CRM114-Status: GOOD (  31.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Robin Gong <yibin.gong@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-06-19, 10:07, Sven Van Asbroeck wrote:
> If probe() fails anywhere beyond the point where
> sdma_get_firmware() is called, then a kernel oops may occur.
> 
> Problematic sequence of events:
> 1. probe() calls sdma_get_firmware(), which schedules the
>    firmware callback to run when firmware becomes available,
>    using the sdma instance structure as the context
> 2. probe() encounters an error, which deallocates the
>    sdma instance structure
> 3. firmware becomes available, firmware callback is
>    called with deallocated sdma instance structure
> 4. use after free - kernel oops !
> 
> Solution: only attempt to load firmware when we're certain
> that probe() will succeed. This guarantees that the firmware
> callback's context will remain valid.
> 
> Note that the remove() path is unaffected by this issue: the
> firmware loader will increment the driver module's use count,
> ensuring that the module cannot be unloaded while the
> firmware callback is pending or running.
> 
> To: Robin Gong <yibin.gong@nxp.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: dmaengine@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
> ---
>  drivers/dma/imx-sdma.c | 48 ++++++++++++++++++++++++------------------
>  1 file changed, 27 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 99d9f431ae2c..3f0f41d16e1c 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -2096,27 +2096,6 @@ static int sdma_probe(struct platform_device *pdev)
>  	if (pdata && pdata->script_addrs)
>  		sdma_add_scripts(sdma, pdata->script_addrs);
>  
> -	if (pdata) {
> -		ret = sdma_get_firmware(sdma, pdata->fw_name);
> -		if (ret)
> -			dev_warn(&pdev->dev, "failed to get firmware from platform data\n");
> -	} else {
> -		/*
> -		 * Because that device tree does not encode ROM script address,
> -		 * the RAM script in firmware is mandatory for device tree
> -		 * probe, otherwise it fails.
> -		 */
> -		ret = of_property_read_string(np, "fsl,sdma-ram-script-name",
> -					      &fw_name);
> -		if (ret)
> -			dev_warn(&pdev->dev, "failed to get firmware name\n");
> -		else {
> -			ret = sdma_get_firmware(sdma, fw_name);
> -			if (ret)
> -				dev_warn(&pdev->dev, "failed to get firmware from device tree\n");
> -		}
> -	}
> -
>  	sdma->dma_device.dev = &pdev->dev;
>  
>  	sdma->dma_device.device_alloc_chan_resources = sdma_alloc_chan_resources;
> @@ -2161,6 +2140,33 @@ static int sdma_probe(struct platform_device *pdev)
>  		of_node_put(spba_bus);
>  	}
>  
> +	/*
> +	 * Kick off firmware loading as the very last step:
> +	 * attempt to load firmware only if we're not on the error path, because
> +	 * the firmware callback requires a fully functional and allocated sdma
> +	 * instance.
> +	 */
> +	if (pdata) {
> +		ret = sdma_get_firmware(sdma, pdata->fw_name);
> +		if (ret)
> +			dev_warn(&pdev->dev, "failed to get firmware from platform data\n");
> +	} else {
> +		/*
> +		 * Because that device tree does not encode ROM script address,
> +		 * the RAM script in firmware is mandatory for device tree
> +		 * probe, otherwise it fails.
> +		 */
> +		ret = of_property_read_string(np, "fsl,sdma-ram-script-name",
> +					      &fw_name);
> +		if (ret)
> +			dev_warn(&pdev->dev, "failed to get firmware name\n");

if should have braces!

> +		else {
> +			ret = sdma_get_firmware(sdma, fw_name);
> +			if (ret)
> +				dev_warn(&pdev->dev, "failed to get firmware from device tree\n");
> +		}
> +	}
> +
>  	return 0;
>  
>  err_register:
> -- 
> 2.17.1

Applied after fixing braces!


-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
