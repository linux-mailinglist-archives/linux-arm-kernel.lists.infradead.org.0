Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FB5A5AAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 17:40:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BAMFJW8fbi/3PmHDiLNmiWvKTL9VlANhWuKJ90SWHXo=; b=b5IJ+bsrFVSXxF
	L8YorOikXsoQbc8PbH0HfAmjj2g9OMOxpF2r50u7WgmEVVNbs9QikY+ntlPfALIGdqU5EwABMkDUP
	yDAFCQFwbWWYmasGTmmmhvQ8W5DvddsSuwdcCnIpRRgrhP1JCQnzZF6sq7mI7bbXLZOOO3Wt18Pdb
	3/dRqpWOV15JZRcvyH9gei+495THiBj0CNFcb+aofu8q8vi3RaNFnAPoS6t5P9Wunayy2DeMXFT2S
	nGBfJWA2KB+KrnIeNdwgJ1w7oKSG2aKrEcqzDC1UFn1Dl+fS9VW9Tp99kAkLsCFZ8VAyZcnelhKkG
	V/mV2qtzfwz9ENd6xPtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4oQp-00034m-DG; Mon, 02 Sep 2019 15:39:51 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4oQf-00034L-2F
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 15:39:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1567438777;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=Ig8HZGfmGQUiY/NSUJJ3AScoRZEINzrVVEFgot4HI4U=;
 b=WdtUjHQ5OY5N0AgfDWEcVMajElpqwTtIAHbGKTd56ccZMd32ucYNnBo9YtI2bwvLCn
 4VYska/d5Sp9HQX/+H9jQ497i2MrL9YUBb1xwmKdPz44TTTxJh6SMA1Qotv+R5YS8Y4r
 uXVzc9O07hh4hl7jZ64iBNs/xxgCIqPA8PoLeLqTiBx1mbyFsizsXEK+HNRxM5FnaqAd
 5gDQYdbO5IOtF1+2pDR1BLeNykpO8HC+tgjYD9K9PSZgU6WuPVSY4xU3tv8fUBlA/eYR
 +//e9xCHIfRBdWnpRob9q/OZyg2PuOeR4zQay+GDAtLE7vm1H7l7e3D/YR8Ky8q1IwRq
 j72A==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u26zEIdhPgpHQiVSwjMaBCsF"
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id 6021c6v82FdaRF2
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 2 Sep 2019 17:39:36 +0200 (CEST)
Date: Mon, 2 Sep 2019 17:39:32 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] drm/mcde: Some fixes to handling video mode
Message-ID: <20190902153932.GA10870@gerhold.net>
References: <20190902071714.13538-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902071714.13538-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_083941_705212_D5EE7F32 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 02, 2019 at 09:17:14AM +0200, Linus Walleij wrote:
> The video DSI mode had not really been tested. These fixes makes
> it more likely to work on real hardware:
> - Set the HS clock to something the video mode reported by the
>   panel can handle rather than the max HS rate.
> - Put the active width (x width) in the right bits and the VSA
>   (vertical sync active) in the right bits (those were swapped).
> - Calculate the packet sizes in bytes as in the vendor driver,
>   rather than in bits.
> - Handle negative result in front/back/sync packages and fall
>   back to zero like in the vendor driver.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Fixes: 5fc537bfd000 ("drm/mcde: Add new driver for ST-Ericsson MCDE")
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/mcde/mcde_dsi.c | 60 ++++++++++++++++++++++-----------
>  1 file changed, 41 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
> index 90659d190d78..f5079f0e24ca 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi.c
> +++ b/drivers/gpu/drm/mcde/mcde_dsi.c
> @@ -365,11 +365,12 @@ void mcde_dsi_te_request(struct mipi_dsi_device *mdsi)
>  static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  				      const struct drm_display_mode *mode)
>  {
> -	u8 bpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format);
> +	/* cpp, characters per pixel, number of bytes per pixel */
> +	u8 cpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format) / 8;
>  	u64 bpl;
> -	u32 hfp;
> -	u32 hbp;
> -	u32 hsa;
> +	int hfp;
> +	int hbp;
> +	int hsa;
>  	u32 blkline_pck, line_duration;
>  	u32 blkeol_pck, blkeol_duration;
>  	u32 val;
> @@ -420,13 +421,13 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	writel(val, d->regs + DSI_VID_MAIN_CTL);
>  
>  	/* Vertical frame parameters are pretty straight-forward */
> -	val = mode->vdisplay << DSI_VID_VSIZE_VSA_LENGTH_SHIFT;
> +	val = mode->vdisplay << DSI_VID_VSIZE_VACT_LENGTH_SHIFT;
>  	/* vertical front porch */
>  	val |= (mode->vsync_start - mode->vdisplay)
>  		<< DSI_VID_VSIZE_VFP_LENGTH_SHIFT;
>  	/* vertical sync active */
>  	val |= (mode->vsync_end - mode->vsync_start)
> -		<< DSI_VID_VSIZE_VACT_LENGTH_SHIFT;
> +		<< DSI_VID_VSIZE_VSA_LENGTH_SHIFT;
>  	/* vertical back porch */
>  	val |= (mode->vtotal - mode->vsync_end)
>  		<< DSI_VID_VSIZE_VBP_LENGTH_SHIFT;
> @@ -437,21 +438,25 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	 * horizontal resolution is given in pixels and must be re-calculated
>  	 * into bytes since this is what the hardware expects.
>  	 *
> +	 * hfp = horizontal front porch in bytes
> +	 * hbp = horizontal back porch in bytes
> +	 * hsa = horizontal sync active in bytes
> +	 *
>  	 * 6 + 2 is HFP header + checksum
>  	 */
> -	hfp = (mode->hsync_start - mode->hdisplay) * bpp - 6 - 2;
> +	hfp = (mode->hsync_start - mode->hdisplay) * cpp - 6 - 2;
>  	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
>  		/*
>  		 * 6 is HBP header + checksum
>  		 * 4 is RGB header + checksum
>  		 */
> -		hbp = (mode->htotal - mode->hsync_end) * bpp - 4 - 6;
> +		hbp = (mode->htotal - mode->hsync_end) * cpp - 4 - 6;
>  		/*
>  		 * 6 is HBP header + checksum
>  		 * 4 is HSW packet bytes
>  		 * 4 is RGB header + checksum
>  		 */
> -		hsa = (mode->hsync_end - mode->hsync_start) * bpp - 4 - 4 - 6;
> +		hsa = (mode->hsync_end - mode->hsync_start) * cpp - 4 - 4 - 6;
>  	} else {
>  		/*
>  		 * HBP includes both back porch and sync
> @@ -459,11 +464,23 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  		 * 4 is HSW packet bytes
>  		 * 4 is RGB header + checksum
>  		 */
> -		hbp = (mode->htotal - mode->hsync_start) * bpp - 4 - 4 - 6;
> -		/* HSA is not considered in this mode and set to 0 */
> +		hbp = (mode->htotal - mode->hsync_start) * cpp - 4 - 4 - 6;
> +		/* HSA is not present in this mode and set to 0 */
> +		hsa = 0;
> +	}
> +	if (hfp < 0) {
> +		dev_info(d->dev, "hfp negative, set to 0\n");
> +		hfp = 0;
> +	}
> +	if (hbp < 0) {
> +		dev_info(d->dev, "hbp negative, set to 0\n");
> +		hbp = 0;
> +	}
> +	if (hsa < 0) {
> +		dev_info(d->dev, "hsa negative, set to 0\n");
>  		hsa = 0;
>  	}
> -	dev_dbg(d->dev, "hfp: %u, hbp: %u, hsa: %u\n",
> +	dev_dbg(d->dev, "hfp: %u, hbp: %u, hsa: %u bytes\n",
>  		hfp, hbp, hsa);
>  
>  	/* Frame parameters: horizontal sync active */
> @@ -475,7 +492,7 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	writel(val, d->regs + DSI_VID_HSIZE1);
>  
>  	/* RGB data length (bytes on one scanline) */
> -	val = mode->hdisplay * (bpp / 8);
> +	val = mode->hdisplay * cpp;
>  	writel(val, d->regs + DSI_VID_HSIZE2);
>  
>  	/* TODO: further adjustments for TVG mode here */
> @@ -507,7 +524,7 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	}
>  
>  	line_duration = (blkline_pck + 6) / d->mdsi->lanes;
> -	dev_dbg(d->dev, "line duration %u\n", line_duration);
> +	dev_dbg(d->dev, "line duration %u bytes\n", line_duration);
>  	val = line_duration << DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT;
>  	/*
>  	 * This is the time to perform LP->HS on D-PHY
> @@ -517,17 +534,18 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	writel(val, d->regs + DSI_VID_DPHY_TIME);
>  
>  	/* Calculate block end of line */
> -	blkeol_pck = bpl - mode->hdisplay * bpp - 6;
> +	blkeol_pck = bpl - mode->hdisplay * cpp - 6;
>  	blkeol_duration = (blkeol_pck + 6) / d->mdsi->lanes;
> -	dev_dbg(d->dev, "blkeol pck: %u, duration: %u\n",
> -		 blkeol_pck, blkeol_duration);
> +	dev_dbg(d->dev, "blkeol pck: %u bytes, duration: %u bytes\n",
> +		blkeol_pck, blkeol_duration);
>  
>  	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
>  		/* Set up EOL clock for burst mode */
>  		val = readl(d->regs + DSI_VID_BLKSIZE1);
>  		val |= blkeol_pck << DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT;
>  		writel(val, d->regs + DSI_VID_BLKSIZE1);
> -		writel(blkeol_pck, d->regs + DSI_VID_VCA_SETTING2);
> +		writel(blkeol_pck & DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_MASK,
> +		       d->regs + DSI_VID_VCA_SETTING2);

No functional difference, but it might be more clear to also shift this
by DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT.

>  
>  		writel(blkeol_duration, d->regs + DSI_VID_PCK_TIME);
>  		writel(blkeol_duration - 6, d->regs + DSI_VID_VCA_SETTING1);
> @@ -535,9 +553,11 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  
>  	/* Maximum line limit */
>  	val = readl(d->regs + DSI_VID_VCA_SETTING2);
> +	val &= ~DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT_MASK;
>  	val |= blkline_pck <<
>  		DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT;

This should be DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT_SHIFT
to write the maximum line limit. Otherwise it will just
replace the "exact burst limit" written earlier.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
