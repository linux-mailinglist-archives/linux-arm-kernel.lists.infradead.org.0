Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6AD12E439
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 10:09:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iXwmlV066CD1ENnI1GtezDB+Yoxkl+4WqSoGL3s57pM=; b=ugWAbEvMYbv85V
	DjXRP0XlSf+N1GLL6sOVELvPk83i6LyMH28Oci1CnH5PN994FKqlDnEAn12ZpCd6KJgmb9UkMQX49
	Hq0vb7YKp6r5VODcq3RCKU0p6HFXqS8mAfi123cLfC5am9rFtuM7Ied2Ia2kgea3Um8HafJWEoZ/I
	EcmKvf2Lo605QUR18ZTVlhRNfOW9gtK2ofBCQmZbYQ3V7AudPyQgIgj+9diWim2IKfCSm1LLLrBTi
	R9Zr0UEqDVcP84QeopmHXmmQ3HyRzaq1IAvTlp1BSHUV9/ms0N+SoGPrkIsJ2JPvtLySFF7zaEO8Z
	3JEN05VB1K1VR27ToyDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwTT-0005K3-9W; Thu, 02 Jan 2020 09:08:59 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwTL-0005Jh-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 09:08:53 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id D5E712002E;
 Thu,  2 Jan 2020 10:08:49 +0100 (CET)
Date: Thu, 2 Jan 2020 10:08:48 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 5/6] drm: atmel-hlcdc: prefer a lower pixel-clock than
 requested
Message-ID: <20200102090848.GC29446@ravnborg.org>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <1576672109-22707-6-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576672109-22707-6-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=XYAwZIGsAAAA:8
 a=KFvkMixbUbwtBXHg22MA:9 a=CjuIK1q_8ugA:10 a=E8ToXWR_bxluHZ7gmE-Z:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_010852_068921_E76ADCCA 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, lee.jones@linaro.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 02:28:28PM +0200, Claudiu Beznea wrote:
> From: Peter Rosin <peda@axentia.se>
> 
> The intention was to only select a higher pixel-clock rate than the
> requested, if a slight overclocking would result in a rate significantly
> closer to the requested rate than if the conservative lower pixel-clock
> rate is selected. The fixed patch has the logic the other way around and
> actually prefers the higher frequency. Fix that.
> 
> Fixes: f6f7ad323461 ("drm/atmel-hlcdc: allow selecting a higher pixel-clock than requested")
The id is wrong here - the right one is: 9946a3a9dbedaaacef8b7e94f6ac144f1daaf1de
The wrong id above was used before - so I think it is a copy'n'paste
thing.

Hint: try "dim fixes 9946a3a9dbedaaacef8b7e94f6ac144f1daaf1de"

If I get a quick response from Lee I can fix it up while applying.

	Sam

> Reported-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Tested-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Signed-off-by: Peter Rosin <peda@axentia.se>
> ---
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> index 721fa88bf71d..10985134ce0b 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> @@ -121,8 +121,8 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
>  		int div_low = prate / mode_rate;
>  
>  		if (div_low >= 2 &&
> -		    ((prate / div_low - mode_rate) <
> -		     10 * (mode_rate - prate / div)))
> +		    (10 * (prate / div_low - mode_rate) <
> +		     (mode_rate - prate / div)))
>  			/*
>  			 * At least 10 times better when using a higher
>  			 * frequency than requested, instead of a lower.
> -- 
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
