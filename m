Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7453411922A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:35:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wG034lM9VpyoHCDU6YioPjB3H/m248kmiu1KH3H/hmU=; b=TAaMiDhLKPaDxA
	80myBoev09DV2rZqHS4iWJkcgzDjrQOTtRnWS9UyKp5nKOYAOD0iQ1cpsAuVmCHvmeLDkvvzaQKfQ
	jWV5UyLY8j+WjXfcQOws3WF9ejzNLM1t6E3JBMPse04xTU+8yY+blzyEVQ64vg/S5HZVN9UvpcgtP
	lhg2pFT8I5SjxxFNj4T5vppNxHdw/OAR6nGt+Oq1zmCgIGHQE37jfabD4XrN2Ws2PgOtp1aavaV8O
	9sJJ1N8OSc9Py2/wsa+D1AzvubYvq1X5cnass6GjMmeSr/DIkEGUj23kcvtLaRkp8a//typLK0sxw
	8fjN+c3tRC/xx3h+Eqyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemDj-0003GD-Ko; Tue, 10 Dec 2019 20:34:59 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemDA-0002r9-GG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:34:26 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 960AF20061;
 Tue, 10 Dec 2019 21:34:20 +0100 (CET)
Date: Tue, 10 Dec 2019 21:34:19 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 5/5] Revert "drm: atmel-hlcdc: enable sys_clk during
 initalization."
Message-ID: <20191210203419.GB24756@ravnborg.org>
References: <1575984287-26787-1-git-send-email-claudiu.beznea@microchip.com>
 <1575984287-26787-6-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575984287-26787-6-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=XYAwZIGsAAAA:8
 a=vRqltxJg2XVFi9nfVjoA:9 a=CjuIK1q_8ugA:10 a=E8ToXWR_bxluHZ7gmE-Z:22
 a=pHzHmUro8NiASowvMSCR:22 a=Ew2E2A-JSTLzCXPT_086:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_123424_916210_67052D6B 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, daniel@ffwll.ch, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cladiu

On Tue, Dec 10, 2019 at 03:24:47PM +0200, Claudiu Beznea wrote:
> This reverts commit d2c755e66617620b729041c625a6396c81d1231c.
> ("drm: atmel-hlcdc: enable sys_clk during initalization."). With
> commit "drm: atmel-hlcdc: enable clock before configuring timing engine"
> there is no need for this patch. Code is also simpler.
> 
> Cc: Sandeep Sheriker Mallikarjun <sandeepsheriker.mallikarjun@microchip.com>
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>

Getting further in the patches tells me you looked at the
patch I referenced in previous mail.
Please squash the two patches together - that would make it
easier to follow what is done.

With the two patches applied sysclk is enabled only in mode_set_nofb()
and atomic_enable(). And disabled in atomic_disable().
This is simpler and we drop the conditionals. Also good.
So the end result looks OK.

	Sam

> ---
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 19 +------------------
>  1 file changed, 1 insertion(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> index 8dc917a1270b..112aa5066cee 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
> @@ -721,18 +721,10 @@ static int atmel_hlcdc_dc_load(struct drm_device *dev)
>  	dc->hlcdc = dev_get_drvdata(dev->dev->parent);
>  	dev->dev_private = dc;
>  
> -	if (dc->desc->fixed_clksrc) {
> -		ret = clk_prepare_enable(dc->hlcdc->sys_clk);
> -		if (ret) {
> -			dev_err(dev->dev, "failed to enable sys_clk\n");
> -			goto err_destroy_wq;
> -		}
> -	}
> -
>  	ret = clk_prepare_enable(dc->hlcdc->periph_clk);
>  	if (ret) {
>  		dev_err(dev->dev, "failed to enable periph_clk\n");
> -		goto err_sys_clk_disable;
> +		goto err_destroy_wq;
>  	}
>  
>  	pm_runtime_enable(dev->dev);
> @@ -768,9 +760,6 @@ static int atmel_hlcdc_dc_load(struct drm_device *dev)
>  err_periph_clk_disable:
>  	pm_runtime_disable(dev->dev);
>  	clk_disable_unprepare(dc->hlcdc->periph_clk);
> -err_sys_clk_disable:
> -	if (dc->desc->fixed_clksrc)
> -		clk_disable_unprepare(dc->hlcdc->sys_clk);
>  
>  err_destroy_wq:
>  	destroy_workqueue(dc->wq);
> @@ -795,8 +784,6 @@ static void atmel_hlcdc_dc_unload(struct drm_device *dev)
>  
>  	pm_runtime_disable(dev->dev);
>  	clk_disable_unprepare(dc->hlcdc->periph_clk);
> -	if (dc->desc->fixed_clksrc)
> -		clk_disable_unprepare(dc->hlcdc->sys_clk);
>  	destroy_workqueue(dc->wq);
>  }
>  
> @@ -910,8 +897,6 @@ static int atmel_hlcdc_dc_drm_suspend(struct device *dev)
>  	regmap_read(regmap, ATMEL_HLCDC_IMR, &dc->suspend.imr);
>  	regmap_write(regmap, ATMEL_HLCDC_IDR, dc->suspend.imr);
>  	clk_disable_unprepare(dc->hlcdc->periph_clk);
> -	if (dc->desc->fixed_clksrc)
> -		clk_disable_unprepare(dc->hlcdc->sys_clk);
>  
>  	return 0;
>  }
> @@ -921,8 +906,6 @@ static int atmel_hlcdc_dc_drm_resume(struct device *dev)
>  	struct drm_device *drm_dev = dev_get_drvdata(dev);
>  	struct atmel_hlcdc_dc *dc = drm_dev->dev_private;
>  
> -	if (dc->desc->fixed_clksrc)
> -		clk_prepare_enable(dc->hlcdc->sys_clk);
>  	clk_prepare_enable(dc->hlcdc->periph_clk);
>  	regmap_write(dc->hlcdc->regmap, ATMEL_HLCDC_IER, dc->suspend.imr);
>  
> -- 
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
