Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D882B1233DE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 18:48:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/0wnhA3h93k8djHkiainhxQ+3rG8iLAic2PWgdTrC0=; b=WCqX+Mf64dn4SZ
	e+E2S+egv/aL4as0FPSqokYDBrdt4YSlo7Vt2UWC9I+c5T0SIT6XeBTwddVxivmNqp04rYM2Xdu43
	8ZToBPaL3iMrTuKKB0K54MWwVorXjn6RMqXmaC5r1Uvjjoysa3gBkVTKHNxwA55UlckGVPAmNUOIK
	xhqS1vf4+DrxafnuGELUhsKrfmxVq3mOyRgqhQx9ypH14B4YJOmT4DLEzlCupGpZE6YZ8pDLhXU8r
	OVHA0OSLuPPLpPD8CJakn9+zttCDjY2slNsXOtUiX+5IYbbrHf7hEGwZpoazar7s7kTfRoKAaI7Cy
	NZIcF8xWGIuVG2tn2t2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihGxn-0006h8-3h; Tue, 17 Dec 2019 17:48:51 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihGxZ-0006eU-Vr
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 17:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1576604915;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=ro2lrP/2BaecDkB0i4up1h+HBonDLuk1ih0CTkqaP8s=;
 b=iX0joMz1pmqcMiAMWFCy78lYpP9O/f+nCAq4tBwKcGKdLuY/L6QC9W1gUQSPUQQ/f3
 Ni5U3AWzUeKFk44M1iFeyiMd2NY15ePf2y+ZE74LPlayzmUfBaVjynCQloKHpdKPOPHs
 GFlM1pX2d6Pi2O9QfQScuPs6VkOZ8OgZGPWEkE45l8r7A0yB7EYXSn7Yh38VZb88Cbmy
 tfong0hWMTHzxq8V6lVHSREJoDPgLZ8BycSw6vzYK9Jg7UpjDHy6kDPRGjlTG1HPXen2
 9H8vuYVno5Cpa6kFax2QZ5ih/lBnhOymf4UkTS78+uji16EEsDb4Z8ZIbXm8unVlpKT1
 RmeA==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u266EZF6ORJDdfbYtbb1Kg=="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 46.0.7 AUTH)
 with ESMTPSA id 9046ccvBHHmY3Jt
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Tue, 17 Dec 2019 18:48:34 +0100 (CET)
Date: Tue, 17 Dec 2019 18:48:33 +0100
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v6] drm/mcde: Some fixes to handling video mode
Message-ID: <20191217174833.GC866@gerhold.net>
References: <20191217150959.17215-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217150959.17215-1-linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_094838_773243_521CE104 
X-CRM114-Status: GOOD (  42.70  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:12 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 04:09:59PM +0100, Linus Walleij wrote:
> The video DSI mode had not really been tested. These fixes makes
> it more likely to work on real hardware:
> - Put the active width (x width) in the right bits and the VSA
>   (vertical sync active) in the right bits (those were swapped).
> - Calculate the packet sizes in bytes as in the vendor driver,
>   rather than in bits. Test the calculations agains a
>   spreadsheet and confirmed by debug prints to be reasonable.
> - Also verified the register values with relative confidence
>   to register dumps from the Samsung GT-I8190 boot loader
>   graphics. We are not identical but not off by far either.
> - Error out if the current mode and refresh frequency doesn't
>   work out. (In the future we may simply want to scale down
>   the vrefresh.)
> - Handle negative result in front/back/sync packages and fall
>   back to zero like in the vendor driver.
> - Put in lots of clarifying comments and references to the
>   documentation where the code is hard to understand.
> - Set the DSI_VID_VCA_SETTING2 field
>   DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT to blkline_pck - 6 as in
>   the vendor driver and mask the field properly.
> - Set the DSI_VID_VCA_SETTING1 field
>   DSI_VID_VCA_SETTING1_MAX_BURST_LIMIT to blkeol_pck - 6 to
>   blkeol_duration - 6 as in the vendor driver.
> 
> Cc: Stephan Gerhold <stephan@gerhold.net>
> Fixes: 5fc537bfd000 ("drm/mcde: Add new driver for ST-Ericsson MCDE")
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Thanks for making all the changes!

I don't fully understand most of the calculations,
but it seems to match the code in the vendor kernel now. Therefore:

Reviewed-by: Stephan Gerhold <stephan@gerhold.net>

> ---
> ChangeLog v5->v6:
> - DSI_VID_VCA_SETTING1_MAX_BURST_LIMIT should be blkeol_pck - 6
>   not blkeol_duration - 6.
> - Parenthesize some calculations.
> ChangeLog v4->v5:
> - Restore log order, last verstion of the changelog inadvertedly
>   merged v3 and v4 into v3 since I thought I didn't send out v3...
> - Parens in blkeol_pck = bpl - (mode->htotal * cpp) - 6 for
>   explicit priority.
> - Use mask-and-set for DSI_VID_PCK_TIME and DSI_VID_VCA_SETTING1
> - Restore DSI_VID_VCA_SETTING2 field
>   DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT to blkline_pck - 6 as in
>   the vendor driver and mask the field properly.
> ChangeLog v3->v4:
> - Calculate toward actual HS rate of the clock rather than the
>   idealized rate provided by the panel resolution, this is what
>   the vendor driver does.
> - Add much comments and elaborate with references to the manual
>   so the code can be understood as far as possible.
> - Compared register dumps to that on the Samsung GT-I8190 (Golden)
>   boot loader settings. We are now reasonably close to these,
>   it may be that the boot loader driver is using slightly different
>   settings for porches and syncs etc. But all figures makes sense.
> - Duplicated the vendor code in a spread sheet and compared to
>   what this code gives and we have an identical match with one
>   small exception that the vendor code adds a small padding of 2
>   lines to the vertical blanking area. This looks weird and might
>   be some hackishly specified porch.
> ChangeLog v2->v3:
> - Rename the "bpp" variable to "cpp" since it is "chars per pixel"
>   this was confusingly named in the vendor driver and it got
>   carried over.
> - Assign the SETTING2_EXACT_BURST_LIMIT by first shifting
>   then masking.
> - Also mask with the inverse of DSI_VID_BLKSIZE1_BLKEOL_PCK_MASK
>   before writing blkeol into DSI_VID_BLKSIZE1, so we make sure
>   to zero these bits first.
> - Also mask with DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_MASK
>   when writing event package length.
> - Comb through the code and compare it to vendor code and try
>   to get closer to doing what the vendor driver is doing.
> ChangeLog v1->v2:
> - Fix some more comments so we understand what is going on.
> - Set up the maximum line limit size in the right register
>   instead of setting it in the burst size register portion.
> - Set some default wakeup time other than zero (still need
>   fixing more).
> ---
>  drivers/gpu/drm/mcde/mcde_dsi.c      | 239 +++++++++++++++++++++------
>  drivers/gpu/drm/mcde/mcde_dsi_regs.h |   1 +
>  2 files changed, 192 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
> index 21cee4d9d2fd..6613c68c0633 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi.c
> +++ b/drivers/gpu/drm/mcde/mcde_dsi.c
> @@ -379,13 +379,14 @@ void mcde_dsi_te_request(struct mipi_dsi_device *mdsi)
>  static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  				      const struct drm_display_mode *mode)
>  {
> -	u8 bpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format);
> +	/* cpp, characters per pixel, number of bytes per pixel */
> +	u8 cpp = mipi_dsi_pixel_format_to_bpp(d->mdsi->format) / 8;
> +	u64 pclk;
>  	u64 bpl;
> -	u32 hfp;
> -	u32 hbp;
> -	u32 hsa;
> +	int hfp;
> +	int hbp;
> +	int hsa;
>  	u32 blkline_pck, line_duration;
> -	u32 blkeol_pck, blkeol_duration;
>  	u32 val;
>  
>  	val = 0;
> @@ -422,11 +423,21 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  		return;
>  	}
>  
> -	/* TODO: TVG could be enabled here */
> +	/* TODO: TVG (test video generator) could be enabled here */
>  
> -	/* Send blanking packet */
> +	/*
> +	 * During vertical blanking: go to LP mode
> +	 * Like with the EOL setting, if this is not set, the EOL area will be
> +	 * filled with NULL or blanking packets in the vblank area.
> +	 * FIXME: some Samsung phones and display panels such as s6e63m0 use
> +	 * DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_BLANKING here instead,
> +	 * figure out how to properly configure that from the panel.
> +	 */
>  	val |= DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_LP_0;
> -	/* Send EOL packet */
> +	/*
> +	 * During EOL: go to LP mode. If this is not set, the EOL area will be
> +	 * filled with NULL or blanking packets.
> +	 */
>  	val |= DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0;
>  	/* Recovery mode 1 */
>  	val |= 1 << DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT;
> @@ -434,13 +445,13 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
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
> @@ -448,36 +459,54 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  
>  	/*
>  	 * Horizontal frame parameters:
> -	 * horizontal resolution is given in pixels and must be re-calculated
> -	 * into bytes since this is what the hardware expects.
> +	 * horizontal resolution is given in pixels but must be re-calculated
> +	 * into bytes since this is what the hardware expects, these registers
> +	 * define the payload size of the packet.
> +	 *
> +	 * hfp = horizontal front porch in bytes
> +	 * hbp = horizontal back porch in bytes
> +	 * hsa = horizontal sync active in bytes
>  	 *
>  	 * 6 + 2 is HFP header + checksum
>  	 */
> -	hfp = (mode->hsync_start - mode->hdisplay) * bpp - 6 - 2;
> +	hfp = (mode->hsync_start - mode->hdisplay) * cpp - 6 - 2;
>  	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
>  		/*
> +		 * Use sync pulse for sync: explicit HSA time
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
> -		 * HBP includes both back porch and sync
> +		 * Use event for sync: HBP includes both back porch and sync
>  		 * 6 is HBP header + checksum
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
> @@ -488,71 +517,185 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	val |= hfp << DSI_VID_HSIZE1_HFP_LENGTH_SHIFT;
>  	writel(val, d->regs + DSI_VID_HSIZE1);
>  
> -	/* RGB data length (bytes on one scanline) */
> -	val = mode->hdisplay * (bpp / 8);
> +	/* RGB data length (visible bytes on one scanline) */
> +	val = mode->hdisplay * cpp;
>  	writel(val, d->regs + DSI_VID_HSIZE2);
> +	dev_dbg(d->dev, "RGB length, visible area on a line: %u bytes\n", val);
>  
> -	/* TODO: further adjustments for TVG mode here */
> +	/*
> +	 * Calculate the time between two pixels in picoseconds using
> +	 * the supplied refresh rate and total resolution including
> +	 * porches and sync.
> +	 */
> +	/* (ps/s) / (pixels/s) = ps/pixels */
> +	pclk = DIV_ROUND_UP_ULL(1000000000000,
> +				(mode->vrefresh * mode->htotal * mode->vtotal));
> +	dev_dbg(d->dev, "picoseconds between two pixels: %llu\n",
> +		pclk);
>  
>  	/*
> -	 * EOL packet length from bits per line calculations: pixel clock
> -	 * is given in kHz, calculate the time between two pixels in
> -	 * picoseconds.
> +	 * How many bytes per line will this update frequency yield?
> +	 *
> +	 * Calculate the number of picoseconds for one scanline (1), then
> +	 * divide by 1000000000000 (2) to get in pixels per second we
> +	 * want to output.
> +	 *
> +	 * Multiply with number of bytes per second at this video display
> +	 * frequency (3) to get number of bytes transferred during this
> +	 * time. Notice that we use the frequency the display wants,
> +	 * not what we actually get from the DSI PLL, which is hs_freq.
> +	 *
> +	 * These arithmetics are done in a different order to avoid
> +	 * overflow.
>  	 */
> -	bpl = mode->clock * mode->htotal;
> -	bpl *= (d->hs_freq / 8);
> -	do_div(bpl, 1000000); /* microseconds */
> -	do_div(bpl, 1000000); /* seconds */
> +	bpl = pclk * mode->htotal; /* (1) picoseconds per line */
> +	dev_dbg(d->dev, "picoseconds per line: %llu\n", bpl);
> +	/* Multiply with bytes per second (3) */
> +	bpl *= (d->mdsi->hs_rate / 8);
> +	/* Pixels per second (2) */
> +	bpl = DIV_ROUND_DOWN_ULL(bpl, 1000000); /* microseconds */
> +	bpl = DIV_ROUND_DOWN_ULL(bpl, 1000000); /* seconds */
> +	/* parallel transactions in all lanes */
>  	bpl *= d->mdsi->lanes;
> -	dev_dbg(d->dev, "calculated bytes per line: %llu\n", bpl);
> +	dev_dbg(d->dev,
> +		"calculated bytes per line: %llu @ %d Hz with HS %lu Hz\n",
> +		bpl, mode->vrefresh, d->mdsi->hs_rate);
> +
>  	/*
>  	 * 6 is header + checksum, header = 4 bytes, checksum = 2 bytes
>  	 * 4 is short packet for vsync/hsync
>  	 */
>  	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE) {
> -		/* Fixme: isn't the hsync width in pixels? */
> +		/* Set the event packet size to 0 (not used) */
> +		writel(0, d->regs + DSI_VID_BLKSIZE1);
> +		/*
> +		 * FIXME: isn't the hsync width in pixels? The porch and
> +		 * sync area size is in pixels here, but this -6
> +		 * seems to be for bytes. It looks like this in the vendor
> +		 * code though. Is it completely untested?
> +		 */
>  		blkline_pck = bpl - (mode->hsync_end - mode->hsync_start) - 6;
>  		val = blkline_pck << DSI_VID_BLKSIZE2_BLKLINE_PULSE_PCK_SHIFT;
>  		writel(val, d->regs + DSI_VID_BLKSIZE2);
>  	} else {
> +		/* Set the sync pulse packet size to 0 (not used) */
> +		writel(0, d->regs + DSI_VID_BLKSIZE2);
> +		/* Specifying payload size in bytes (-4-6 from manual) */
>  		blkline_pck = bpl - 4 - 6;
> +		if (blkline_pck > 0x1FFF)
> +			dev_err(d->dev, "blkline_pck too big %d bytes\n",
> +				blkline_pck);
>  		val = blkline_pck << DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_SHIFT;
> +		val &= DSI_VID_BLKSIZE1_BLKLINE_EVENT_PCK_MASK;
>  		writel(val, d->regs + DSI_VID_BLKSIZE1);
>  	}
>  
> -	line_duration = (blkline_pck + 6) / d->mdsi->lanes;
> -	dev_dbg(d->dev, "line duration %u\n", line_duration);
> +	/*
> +	 * The line duration is used to scale back the frequency from
> +	 * the max frequency supported by the HS clock to the desired
> +	 * update frequency in vrefresh.
> +	 */
> +	line_duration = blkline_pck + 6;
> +	/*
> +	 * The datasheet contains this complex condition to decreasing
> +	 * the line duration by 1 under very specific circumstances.
> +	 * Here we also imply that LP is used during burst EOL.
> +	 */
> +	if (d->mdsi->lanes == 2 && (hsa & 0x01) && (hfp & 0x01)
> +	    && (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST))
> +		line_duration--;
> +	line_duration = DIV_ROUND_CLOSEST(line_duration, d->mdsi->lanes);
> +	dev_dbg(d->dev, "line duration %u bytes\n", line_duration);
>  	val = line_duration << DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT;
>  	/*
>  	 * This is the time to perform LP->HS on D-PHY
>  	 * FIXME: nowhere to get this from: DT property on the DSI?
> +	 * The manual says this is "system dependent".
> +	 * values like 48 and 72 seen in the vendor code.
>  	 */
> -	val |= 0 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
> +	val |= 48 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
>  	writel(val, d->regs + DSI_VID_DPHY_TIME);
>  
> -	/* Calculate block end of line */
> -	blkeol_pck = bpl - mode->hdisplay * bpp - 6;
> -	blkeol_duration = (blkeol_pck + 6) / d->mdsi->lanes;
> -	dev_dbg(d->dev, "blkeol pck: %u, duration: %u\n",
> -		 blkeol_pck, blkeol_duration);
> -
> +	/*
> +	 * See the manual figure 657 page 2203 for understanding the impact
> +	 * of the different burst mode settings.
> +	 */
>  	if (d->mdsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
> -		/* Set up EOL clock for burst mode */
> +		int blkeol_pck, blkeol_duration;
> +		/*
> +		 * Packet size at EOL for burst mode, this is only used
> +		 * if DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0 is NOT set,
> +		 * but we instead send NULL or blanking packets at EOL.
> +		 * This is given in number of bytes.
> +		 *
> +		 * See the manual page 2198 for the 13 reg_blkeol_pck bits.
> +		 */
> +		blkeol_pck = bpl - (mode->htotal * cpp) - 6;
> +		if (blkeol_pck < 0) {
> +			dev_err(d->dev, "video block does not fit on line!\n");
> +			dev_err(d->dev,
> +				"calculated bytes per line: %llu @ %d Hz\n",
> +				bpl, mode->vrefresh);
> +			dev_err(d->dev,
> +				"bytes per line (blkline_pck) %u bytes\n",
> +				blkline_pck);
> +			dev_err(d->dev,
> +				"blkeol_pck becomes %d bytes\n", blkeol_pck);
> +			return;
> +		}
> +		dev_dbg(d->dev, "BLKEOL packet: %d bytes\n", blkeol_pck);
> +
>  		val = readl(d->regs + DSI_VID_BLKSIZE1);
> +		val &= ~DSI_VID_BLKSIZE1_BLKEOL_PCK_MASK;
>  		val |= blkeol_pck << DSI_VID_BLKSIZE1_BLKEOL_PCK_SHIFT;
>  		writel(val, d->regs + DSI_VID_BLKSIZE1);
> -		writel(blkeol_pck, d->regs + DSI_VID_VCA_SETTING2);
> -
> -		writel(blkeol_duration, d->regs + DSI_VID_PCK_TIME);
> -		writel(blkeol_duration - 6, d->regs + DSI_VID_VCA_SETTING1);
> +		/* Use the same value for exact burst limit */
> +		val = blkeol_pck <<
> +			DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT;
> +		val &= DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_MASK;
> +		writel(val, d->regs + DSI_VID_VCA_SETTING2);
> +		/*
> +		 * This BLKEOL duration is claimed to be the duration in clock
> +		 * cycles of the BLLP end-of-line (EOL) period for each line if
> +		 * DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0 is set.
> +		 *
> +		 * It is hard to trust the manuals' claim that this is in clock
> +		 * cycles as we mimic the behaviour of the vendor code, which
> +		 * appears to write a number of bytes that would have been
> +		 * transferred on a single lane.
> +		 *
> +		 * See the manual figure 657 page 2203 and page 2198 for the 13
> +		 * reg_blkeol_duration bits.
> +		 *
> +		 * FIXME: should this also be set up also for non-burst mode
> +		 * according to figure 565 page 2202?
> +		 */
> +		blkeol_duration = DIV_ROUND_CLOSEST(blkeol_pck + 6,
> +						    d->mdsi->lanes);
> +		dev_dbg(d->dev, "BLKEOL duration: %d clock cycles\n",
> +			blkeol_duration);
> +
> +		val = readl(d->regs + DSI_VID_PCK_TIME);
> +		val &= ~DSI_VID_PCK_TIME_BLKEOL_DURATION_MASK;
> +		val |= blkeol_duration <<
> +			DSI_VID_PCK_TIME_BLKEOL_DURATION_SHIFT;
> +		writel(val, d->regs + DSI_VID_PCK_TIME);
> +
> +		/* Max burst limit, this is given in bytes */
> +		val = readl(d->regs + DSI_VID_VCA_SETTING1);
> +		val &= ~DSI_VID_VCA_SETTING1_MAX_BURST_LIMIT_MASK;
> +		val |= (blkeol_pck - 6) <<
> +			DSI_VID_VCA_SETTING1_MAX_BURST_LIMIT_SHIFT;
> +		writel(val, d->regs + DSI_VID_VCA_SETTING1);
>  	}
>  
>  	/* Maximum line limit */
>  	val = readl(d->regs + DSI_VID_VCA_SETTING2);
> -	val |= blkline_pck <<
> -		DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT;
> +	val &= ~DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT_MASK;
> +	val |= (blkline_pck - 6) <<
> +		DSI_VID_VCA_SETTING2_MAX_LINE_LIMIT_SHIFT;
>  	writel(val, d->regs + DSI_VID_VCA_SETTING2);
> -
> +	dev_dbg(d->dev, "blkline pck: %d bytes\n", blkline_pck - 6);
>  }
>  
>  static void mcde_dsi_start(struct mcde_dsi *d)
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi_regs.h b/drivers/gpu/drm/mcde/mcde_dsi_regs.h
> index 8089db805c57..16551af1089e 100644
> --- a/drivers/gpu/drm/mcde/mcde_dsi_regs.h
> +++ b/drivers/gpu/drm/mcde/mcde_dsi_regs.h
> @@ -228,6 +228,7 @@
>  
>  #define DSI_VID_PCK_TIME 0x000000A8
>  #define DSI_VID_PCK_TIME_BLKEOL_DURATION_SHIFT 0
> +#define DSI_VID_PCK_TIME_BLKEOL_DURATION_MASK 0x00000FFF
>  
>  #define DSI_VID_DPHY_TIME 0x000000AC
>  #define DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT 0
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
