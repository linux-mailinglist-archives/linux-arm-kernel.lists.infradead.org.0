Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D9F17E845
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 20:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQx0sKdAQKzE3PtlruwUs8O2wOV8NJhHknMnFzHpMfs=; b=d2yix8im0TJmkF
	dGEFyQURAURLCBEJp+zJFzJCK5r9+ldkGJcu4TemuxqpLvxwGJjLYKL2zrhSA/iZo5VbRtk9bm7ad
	MxBswCF0WKKfavo8Z6fN5s3JScvGihs5SWU8XlIDJPp/Fir0ynUzsRqcAFK9Jk/sBwFKQZ2/dBtKT
	iqX1DzsBdvSvKkLrJbtUU9ks9hPNOlDch4OQ4ygVodTOLghWrRs0tAye72RNbrRXDtjneVZtSSbGo
	qFzMmJyD9Pi83wZVx6Cmb0wWw/uO9bpL+2n7cdq9btqvVfpXPeiS0NUNAyaxslLP43P1IwpNxtj0m
	p/QFiV6YpyJxP4Nridtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNzo-0005h2-QW; Mon, 09 Mar 2020 19:23:24 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNzh-0005gR-An
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 19:23:19 +0000
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1DF662D2;
 Mon,  9 Mar 2020 20:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1583781789;
 bh=L2CbMLmQj02a+E0h03APUq01sYi8nN1czrN2WAxV75E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=swndbCaPLCA61FX2xYACykl+gdNAdr4I4TX9KxzCu4jj+CsFkdjUwAWnxrp46GMiQ
 XvGeNfrGTMpXrMdk6OMrBuH/D0vXjCIBlx4+gd3OGA/ULl36IN87UpWwXzV0ZwVLxF
 KrHRZG+xl29l4esY27jqf1qbayjQkC986V+zS/4M=
Date: Mon, 9 Mar 2020 21:23:06 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
Message-ID: <20200309192306.GA20358@pendragon.ideasonboard.com>
References: <20191114131751.26746-1-marex@denx.de>
 <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_122317_579025_BDACF66B 
X-CRM114-Status: GOOD (  35.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marek Vasut <marex@denx.de>, David Airlie <airlied@linux.ie>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

(CC'ing Boris)

On Mon, Mar 09, 2020 at 11:50:59AM +0100, Philipp Zabel wrote:
> On Thu, 2019-11-14 at 14:17 +0100, Marek Vasut wrote:
> > The bus_flags and bus_format handling logic does not seem to cover
> > all potential usecases. Specifically, this seems to fail with an
> > "edt,etm0700g0edh6" display attached to an 24bit display interface,
> > with interface-pix-fmt = "rgb24" set in DT.
> 
> interface-pix-fmt is a legacy property that was never intended to be
> used as an override for the panel bus format. The bus flags were
> supposed to be set from the display-timings node, back when there was no
> of-graph connected panel at all.
> 
> That being said, there isn't really a proper alternative that allows to
> override the bus format requested by the panel driver in the device tree
> to account for weird wiring. We could reuse the bus-width endpoint
> property documented in [1], but that wouldn't completely specify how the
> RGB components are to be mapped onto the parallel bus.
> 
> [1] Documentation/devicetree/bindings/media/video-interfaces.txt

Things are funny sometimes, I've run into the exact same problem with a
different display controller today.

Shouldn't we use the data-shift property from [1] to specify this ?
Combined with Boris' bus format negotiation for bridges, I think we
would have all the components in place to solve this problem properly.
Bonus points if we can get a helper function that CRTC code can call to
get the bus format they should use without having to care about the
details (and just to be clear, no yak shaving here, I'm not asking Marek
to implement such a helper, it's not a blocking issue).

> I do wonder whether for your case it would be better to implement a
> MEDIA_BUS_FMT_RGB666_1X24_CPADLO though, to leave the LSBs untouched
> instead of risking to dump them into accidental PCB antennae.

That's a good point I haven't thought about, and I agree it makes sense.
It means that display controller drivers will have to explicitly support
MEDIA_BUS_FMT_RGB666_1X24_CPADLO and map it to MEDIA_BUS_FMT_RGB888_1X24
if the hardware doesn't support that feature, but I don't think that's a
big issue.

> > In this specific setup, the panel-simple.c driver entry for the display
> > sets .bus_flags to non-zero value. However, as imxpd->bus_format is set
> > from the DT property "interface-pix-fmt", imx_pd_encoder_atomic_check()
> > will set imx_crtc_state->bus_flags = imxpd->bus_flags even though the
> > imxpd->bus_flags is zero, while the di->bus_flags is correctly set by
> > the panel-simple.c and non-zero.
> >
> > The result is incorrect flags being
> > used for the display configuration and thus an image corruption.
> > (Specifically, DRM_BUS_FLAG_PIXDATA_POSEDGE is not propagated and thus
> > the ipuv3 clocks pixels on the wrong edge).
> > 
> > This patch fixes the problem by overriding the imx_crtc_state->bus_format
> > from the imxpd->bus_format only if the DT property "interface-pix-fmt" is
> > present or if the DI provides no formats. Similarly for bus_flags, which
> > are set from imxpd->bus_flags only if the DI provides no formats.
> > 
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Fabio Estevam <festevam@gmail.com>
> > Cc: NXP Linux Team <linux-imx@nxp.com>
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Cc: Shawn Guo <shawnguo@kernel.org>
> > Cc: linux-arm-kernel@lists.infradead.org
> > To: dri-devel@lists.freedesktop.org
> > ---
> >  drivers/gpu/drm/imx/parallel-display.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
> > index 35518e5de356..92f00b12c068 100644
> > --- a/drivers/gpu/drm/imx/parallel-display.c
> > +++ b/drivers/gpu/drm/imx/parallel-display.c
> > @@ -113,13 +113,16 @@ static int imx_pd_encoder_atomic_check(struct drm_encoder *encoder,
> >  	struct drm_display_info *di = &conn_state->connector->display_info;
> >  	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
> >  
> > -	if (!imxpd->bus_format && di->num_bus_formats) {
> > -		imx_crtc_state->bus_flags = di->bus_flags;
> > +	if (imxpd->bus_format || !di->num_bus_formats)
> 
> I see no reason to invert the logic here. Let's keep the common case
> first.
> 
> > +		imx_crtc_state->bus_format = imxpd->bus_format;
> > +	else
> >  		imx_crtc_state->bus_format = di->bus_formats[0];
> > -	} else {
> > +
> > +	if (di->num_bus_formats)
> > +		imx_crtc_state->bus_flags = di->bus_flags;
> > +	else
> >  		imx_crtc_state->bus_flags = imxpd->bus_flags;
> > -		imx_crtc_state->bus_format = imxpd->bus_format;
> > -	}
> > +
> >  	imx_crtc_state->di_hsync_pin = 2;
> >  	imx_crtc_state->di_vsync_pin = 3;
> 
> So while I don't like this being used at all, I think the patch improves
> consistency, as imx_pd_connector_get_modes doesn't allow to override the
> panel's modes with DT display-timings either.

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
