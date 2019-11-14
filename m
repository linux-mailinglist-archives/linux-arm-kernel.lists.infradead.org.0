Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2555FC81F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:51:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7pEmiPSTOHSFT1BoB0HrbM0jVysAW96wWQ6vuQjG62k=; b=mUoJfK/Z3oGFsz
	eFpseNI0xFjpdJUQR/nOoRfjZrstyAzfAX7JSnzXsO1HCX4yYGl0sRhirdJ3+H/f+ZL1nx0ANLAUr
	gYMrxraW1dQKBUecDdV3SBxIAOXMvfpdVNhA9OdlTQqjL8izAoqvRRobT6S1wle1kv/oD7pT7iDYd
	dWlFJqmRLIl9MMPA93D89wnPy9mM6NpjhpBiOhk7tOwAjoaVt+2Sr26S4ovmEWTJjQg17eMzhs3CC
	IKu6cYR1Pe4/C7bSRGXGsF3/94Y3p2Zyv+8bRkUYvTnBF/EkeTTJdEdkVplrAl8k3+aS3kKOpdokw
	UjI+L1BZpFQabcu3hZCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVFWM-0003mR-QV; Thu, 14 Nov 2019 13:50:50 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVFWE-0003li-K4
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 13:50:44 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id D2D645C007B;
 Thu, 14 Nov 2019 14:50:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1573739437;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aGmDK4JhaU8rReqVGciylRslsNSi0hZtf3ExcKupdWY=;
 b=UC15rkE/qv8PITh/ZE1xUVAgtFA3ylDVomgi1WwEarHT45DpKswzd0wZqVyVNdqW6Gfe6l
 2DFG+f7q3KVQunJIwaBmeIORXXEpW8/z7TMSvmbGnQORhez/2BvUPMP20sQ6J9/0fu2u9N
 p1WIl0lsjYkEDyPLqa/DXkN8KVXRGR4=
MIME-Version: 1.0
Date: Thu, 14 Nov 2019 14:50:37 +0100
From: Stefan Agner <stefan@agner.ch>
To: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
In-Reply-To: <20191114131751.26746-1-marex@denx.de>
References: <20191114131751.26746-1-marex@denx.de>
Message-ID: <6a2e711d186e216f34c6cbd5b66f2a19@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_055042_951736_5EE891BD 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-14 14:17, Marek Vasut wrote:
> The bus_flags and bus_format handling logic does not seem to cover
> all potential usecases. Specifically, this seems to fail with an
> "edt,etm0700g0edh6" display attached to an 24bit display interface,
> with interface-pix-fmt = "rgb24" set in DT.
> 
> In this specific setup, the panel-simple.c driver entry for the display
> sets .bus_flags to non-zero value. However, as imxpd->bus_format is set
> from the DT property "interface-pix-fmt", imx_pd_encoder_atomic_check()
> will set imx_crtc_state->bus_flags = imxpd->bus_flags even though the
> imxpd->bus_flags is zero, while the di->bus_flags is correctly set by
> the panel-simple.c and non-zero. The result is incorrect flags being
> used for the display configuration and thus an image corruption.
> (Specifically, DRM_BUS_FLAG_PIXDATA_POSEDGE is not propagated and thus
> the ipuv3 clocks pixels on the wrong edge).
> 
> This patch fixes the problem by overriding the imx_crtc_state->bus_format
> from the imxpd->bus_format only if the DT property "interface-pix-fmt" is
> present or if the DI provides no formats. Similarly for bus_flags, which
> are set from imxpd->bus_flags only if the DI provides no formats.

So this basically prioritizes imxpd->bus_format over what the display
provides? Is this correct in all situations?

I was thinking that interface-pix-fmt is the legacy way to define the
bus format and it should be provided by the display nowadays.

However, I guess there is the case where you connect a 18-bit display to
a 24-bit bus (leaving some bits unconnected). Depending on how the
colors/bits are distributed one cannot use 18-bit mode on SoC side but
has to use 24-bit. So the bus format becomes a connection specific
property... I guess the interface-pix-fmt can serve that role. 

--
Stefan


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
> diff --git a/drivers/gpu/drm/imx/parallel-display.c
> b/drivers/gpu/drm/imx/parallel-display.c
> index 35518e5de356..92f00b12c068 100644
> --- a/drivers/gpu/drm/imx/parallel-display.c
> +++ b/drivers/gpu/drm/imx/parallel-display.c
> @@ -113,13 +113,16 @@ static int imx_pd_encoder_atomic_check(struct
> drm_encoder *encoder,
>  	struct drm_display_info *di = &conn_state->connector->display_info;
>  	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
>  
> -	if (!imxpd->bus_format && di->num_bus_formats) {
> -		imx_crtc_state->bus_flags = di->bus_flags;
> +	if (imxpd->bus_format || !di->num_bus_formats)
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

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
