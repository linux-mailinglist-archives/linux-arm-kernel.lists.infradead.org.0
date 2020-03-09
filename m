Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF2717DDF0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 11:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=datGF6CqcHRQcVISx+utlrBvpa1XtQVTUC4B4Rcolek=; b=eDXOO8ZRCLXGsB
	gr1UbNdWyqRPT5XjXFzzMdko2hzfiJnPlP55xw+lQX4sVTmhGcrhSneAvHzco7m3CEaY8f2AvJ72z
	O2JYxe6Zo9tto5FcTTj8wO2Jk9SyRzw4HUdRQCKH9QhpST9YxPSovMZibG7f4J2KO2qvi69SfY0Qg
	RTKjCKvjH1dhmJ4aGugMsYGBSwMn1WlhT4/qc3iwpl3OjpthoRziikNQwFWQgCMwkgUMOaW2YfC9L
	JnmWauogAj8lSVM4KVupKN21R2UnKKzG4B2sfpz5vT5a1UipkeMmEdSlpBjdtRCVGSsk/9DZFJNm1
	VMnkVm9AMymVKgw5+LcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBG0E-0006Tv-LL; Mon, 09 Mar 2020 10:51:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBG03-0006St-Vi
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 10:51:09 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jBFzx-0000So-P8; Mon, 09 Mar 2020 11:51:01 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jBFzv-0007F2-QO; Mon, 09 Mar 2020 11:50:59 +0100
Message-ID: <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org
Date: Mon, 09 Mar 2020 11:50:59 +0100
In-Reply-To: <20191114131751.26746-1-marex@denx.de>
References: <20191114131751.26746-1-marex@denx.de>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_035108_024630_6A4200F9 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Thu, 2019-11-14 at 14:17 +0100, Marek Vasut wrote:
> The bus_flags and bus_format handling logic does not seem to cover
> all potential usecases. Specifically, this seems to fail with an
> "edt,etm0700g0edh6" display attached to an 24bit display interface,
> with interface-pix-fmt = "rgb24" set in DT.

interface-pix-fmt is a legacy property that was never intended to be
used as an override for the panel bus format. The bus flags were
supposed to be set from the display-timings node, back when there was no
of-graph connected panel at all.

That being said, there isn't really a proper alternative that allows to
override the bus format requested by the panel driver in the device tree
to account for weird wiring. We could reuse the bus-width endpoint
property documented in [1], but that wouldn't completely specify how the
RGB components are to be mapped onto the parallel bus.

[1] Documentation/devicetree/bindings/media/video-interfaces.txt

I do wonder whether for your case it would be better to implement a
MEDIA_BUS_FMT_RGB666_1X24_CPADLO though, to leave the LSBs untouched
instead of risking to dump them into accidental PCB antennae.

> In this specific setup, the panel-simple.c driver entry for the display
> sets .bus_flags to non-zero value. However, as imxpd->bus_format is set
> from the DT property "interface-pix-fmt", imx_pd_encoder_atomic_check()
> will set imx_crtc_state->bus_flags = imxpd->bus_flags even though the
> imxpd->bus_flags is zero, while the di->bus_flags is correctly set by
> the panel-simple.c and non-zero.
>
> The result is incorrect flags being
> used for the display configuration and thus an image corruption.
> (Specifically, DRM_BUS_FLAG_PIXDATA_POSEDGE is not propagated and thus
> the ipuv3 clocks pixels on the wrong edge).
> 
> This patch fixes the problem by overriding the imx_crtc_state->bus_format
> from the imxpd->bus_format only if the DT property "interface-pix-fmt" is
> present or if the DI provides no formats. Similarly for bus_flags, which
> are set from imxpd->bus_flags only if the DI provides no formats.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> To: dri-devel@lists.freedesktop.org
> ---
>  drivers/gpu/drm/imx/parallel-display.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
> index 35518e5de356..92f00b12c068 100644
> --- a/drivers/gpu/drm/imx/parallel-display.c
> +++ b/drivers/gpu/drm/imx/parallel-display.c
> @@ -113,13 +113,16 @@ static int imx_pd_encoder_atomic_check(struct drm_encoder *encoder,
>  	struct drm_display_info *di = &conn_state->connector->display_info;
>  	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
>  
> -	if (!imxpd->bus_format && di->num_bus_formats) {
> -		imx_crtc_state->bus_flags = di->bus_flags;
> +	if (imxpd->bus_format || !di->num_bus_formats)

I see no reason to invert the logic here. Let's keep the common case
first.

> +		imx_crtc_state->bus_format = imxpd->bus_format;
> +	else
>  		imx_crtc_state->bus_format = di->bus_formats[0];
> -	} else {
> +
> +	if (di->num_bus_formats)
> +		imx_crtc_state->bus_flags = di->bus_flags;
> +	else
>  		imx_crtc_state->bus_flags = imxpd->bus_flags;
> -		imx_crtc_state->bus_format = imxpd->bus_format;
> -	}
> +
>  	imx_crtc_state->di_hsync_pin = 2;
>  	imx_crtc_state->di_vsync_pin = 3;

So while I don't like this being used at all, I think the patch improves
consistency, as imx_pd_connector_get_modes doesn't allow to override the
panel's modes with DT display-timings either.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
