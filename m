Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9A31191BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 21:19:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mkk/Z3ShZdTmsjMU+pdYJFhRK9N873bDtutk6bPw9n4=; b=RPVLyrhZWKyrtY
	ZO5FxX78sIK1hvnMTaFIqWnOCilJiVaQ5yiOZJuACVF+lwC3AkHjDTmlyIzmMFwhcHRqqviJWbexO
	OczrNbfzJ3m6W7QJ/ZbUTC4froqLjFwdPKgMbqGcGb2zY4WzQM5mdvpm1w20sQp/kjd1K0w146zwd
	qMNq7F6kld7y5GEpZTkLbB+9p4+aNH/MrNOn3L5NtJjLxIF/nzw46jyc0YXtpgEkGlkpzwk7Fg0tw
	SfJ6aoa+XQo4PVaPurtcSXK8/6GRLfgfh9LaA9MVDGpq5Gk1JzaC8pRJDe2+g1NRI0yQOHGHAggDo
	sJxWFDC6NsF1nobYcO6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielyI-0003Ga-Do; Tue, 10 Dec 2019 20:19:02 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielyA-0003Fa-49
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 20:18:55 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 25A422008B;
 Tue, 10 Dec 2019 21:18:46 +0100 (CET)
Date: Tue, 10 Dec 2019 21:18:45 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH 2/5] drm: atmel-hlcdc: enable clock before configuring
 timing engine
Message-ID: <20191210201845.GA24756@ravnborg.org>
References: <1575984287-26787-1-git-send-email-claudiu.beznea@microchip.com>
 <1575984287-26787-3-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575984287-26787-3-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=XYAwZIGsAAAA:8
 a=3T0gCXIu3ADAjCj7PMoA:9 a=CjuIK1q_8ugA:10 a=E8ToXWR_bxluHZ7gmE-Z:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_121854_349222_62C93590 
X-CRM114-Status: GOOD (  17.73  )
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, daniel@ffwll.ch, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Claudiu.

On Tue, Dec 10, 2019 at 03:24:44PM +0200, Claudiu Beznea wrote:
> Changing pixel clock source without having this clock source enabled
> will block the timing engine and the next operations after (in this case
> setting ATMEL_HLCDC_CFG(5) settings in atmel_hlcdc_crtc_mode_set_nofb()
> will fail). It is recomended (although in datasheet this is not present)
> to actually enabled pixel clock source before doing any changes on timing
> enginge (only SAM9X60 datasheet specifies that the peripheral clock and
> pixel clock must be enabled before using LCD controller).
> 
> Fixes: 1a396789f65a ("drm: add Atmel HLCDC Display Controller support")
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>

We already had a remotely similar fix.
See 262d67e73f9a920a20bd75278761400404a82de0
("drm: atmel-hlcdc: enable sys_clk during initalization.")

In this patch sys_clk is only enabled if we have a fixed_clk.
Maybe we should do this unconditionally in
atmel_hlcdc_dc_load()?

Then we do not need this enable(disable in the mode_set_nofb
implementation.

Have you considered this way to fix it?

	Sam

> ---
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> index 5040ed8d0871..721fa88bf71d 100644
> --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
> @@ -73,7 +73,11 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
>  	unsigned long prate;
>  	unsigned int mask = ATMEL_HLCDC_CLKDIV_MASK | ATMEL_HLCDC_CLKPOL;
>  	unsigned int cfg = 0;
> -	int div;
> +	int div, ret;
> +
> +	ret = clk_prepare_enable(crtc->dc->hlcdc->sys_clk);
> +	if (ret)
> +		return;
>  
>  	vm.vfront_porch = adj->crtc_vsync_start - adj->crtc_vdisplay;
>  	vm.vback_porch = adj->crtc_vtotal - adj->crtc_vsync_end;
> @@ -147,6 +151,8 @@ static void atmel_hlcdc_crtc_mode_set_nofb(struct drm_crtc *c)
>  			   ATMEL_HLCDC_VSPSU | ATMEL_HLCDC_VSPHO |
>  			   ATMEL_HLCDC_GUARDTIME_MASK | ATMEL_HLCDC_MODE_MASK,
>  			   cfg);
> +
> +	clk_disable_unprepare(crtc->dc->hlcdc->sys_clk);
>  }
>  
>  static enum drm_mode_status
> -- 
> 2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
