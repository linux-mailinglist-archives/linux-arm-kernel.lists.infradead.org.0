Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6336EA6BA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 16:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Myy/mxY7PzdWD9+7KGFc1+q8jJuYHyx2eZ0toNIrboI=; b=cwqNpul18Ov7w0
	ug8bhxSF0Xa8Rnfq5bucTF+R95ipnMXQ8ZWZSWPFqkOtaPXYFDT43U/NwbP+jWqVVDrXaPvXkQnVA
	18MtnCufFtEhuJptqdbfXInt2kPVHRINeEWaYaMcJy0u07qN3E4QHGHXS63uFCBO1Y2uz+gEmfZhV
	eB16A31STeTXAMZpiyd6QBdpmOB+BRXk6l6tExJKpp0UZT9RxoAeLulrhcy3z/GYKJOA/eFmIL8SE
	N03JmDjqPeMGLLWTSZAh9SMBI9LZuIKs2MwLhXK90MI7Bb0N4nxY8fovnJCPFEsuP3nzxY13/5srU
	ika85Qyoqu86sFkHFYJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59wb-00026S-Qb; Tue, 03 Sep 2019 14:38:05 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i59wP-0001sU-Ml
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 14:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1567521471;
 s=strato-dkim-0002; d=gerhold.net;
 h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=zDQONuyELPFcjA5agvyAiK+sLQUFVHNLcYsV9NoVA+A=;
 b=VGvvPqLm/3DaqN9TPDEEshC39WcfCkqqSYvxipniyJMYb3/kAsm/lh5mPzI0PA5s83
 4Luq+d0Wv+2RPjqE0EygitVUWhkWv1cnBKdksWNmI0k6UXAWtptH1Qn313VDZW+hfbDv
 2RGZ0FsSisBXdmPL6oaO/LfEUER9VWxaxWR8nca6sJE/RIGnFP8QflV8BbXFdxZjHG4S
 bq4Y2y1XEmS4dFmrlOgZe+KrEOtfxH7Ud5VHwe/JYRvbWYKv9ybzLuQgiD5ce6H2BZib
 CRSXemALfBbnu6iixsRftuscogZBeVIZe6AMSAkk7ffRrm5yeQu31FIcGS5HCz2VHZLk
 Khsg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVOQ/OcYgojyw4j34+u267FpF+Ow1cTU6I1dY="
X-RZG-CLASS-ID: mo00
Received: from gerhold.net by smtp.strato.de (RZmta 44.27.0 DYNA|AUTH)
 with ESMTPSA id 6021c6v83EboW34
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 3 Sep 2019 16:37:50 +0200 (CEST)
Date: Tue, 3 Sep 2019 16:37:45 +0200
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] drm/mcde: Some fixes to handling video mode
Message-ID: <20190903143745.GA2263@gerhold.net>
References: <20190903091512.15780-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903091512.15780-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_073754_352524_1E43D01C 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:4 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, Sep 03, 2019 at 11:15:12AM +0200, Linus Walleij wrote:
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
> ChangeLog v1->v2:
> - Fix some more comments so we understand what is going on.
> - Set up the maximum line limit size in the right register
>   instead of setting it in the burst size register portion.
> - Set some default wakeup time other than zero (still need
>   fixing more).
> ---
>  drivers/gpu/drm/mcde/mcde_dsi.c | 75 ++++++++++++++++++++++-----------
>  1 file changed, 50 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
> index cd261c266f35..5c65cd70fcd3 100644
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
> @@ -408,11 +409,11 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  		return;
>  	}
>  
> -	/* TODO: TVG could be enabled here */
> +	/* TODO: TVG (test video generator) could be enabled here */
>  
> -	/* Send blanking packet */
> +	/* During blanking: go to LP mode */
>  	val |= DSI_VID_MAIN_CTL_REG_BLKLINE_MODE_LP_0;
> -	/* Send EOL packet */
> +	/* During EOL: go to LP mode */
>  	val |= DSI_VID_MAIN_CTL_REG_BLKEOL_MODE_LP_0;
>  	/* Recovery mode 1 */
>  	val |= 1 << DSI_VID_MAIN_CTL_RECOVERY_MODE_SHIFT;
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
> @@ -474,8 +491,8 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	val |= hfp << DSI_VID_HSIZE1_HFP_LENGTH_SHIFT;
>  	writel(val, d->regs + DSI_VID_HSIZE1);
>  
> -	/* RGB data length (bytes on one scanline) */
> -	val = mode->hdisplay * (bpp / 8);
> +	/* RGB data length (visible bytes on one scanline) */
> +	val = mode->hdisplay * cpp;
>  	writel(val, d->regs + DSI_VID_HSIZE2);
>  
>  	/* TODO: further adjustments for TVG mode here */
> @@ -507,37 +524,43 @@ static void mcde_dsi_setup_video_mode(struct mcde_dsi *d,
>  	}
>  
>  	line_duration = (blkline_pck + 6) / d->mdsi->lanes;
> -	dev_dbg(d->dev, "line duration %u\n", line_duration);
> +	dev_dbg(d->dev, "line duration %u bytes\n", line_duration);
>  	val = line_duration << DSI_VID_DPHY_TIME_REG_LINE_DURATION_SHIFT;
>  	/*
>  	 * This is the time to perform LP->HS on D-PHY
>  	 * FIXME: nowhere to get this from: DT property on the DSI?
> +	 * values like 48 and 72 seen in the vendor code.
>  	 */
> -	val |= 0 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
> +	val |= 48 << DSI_VID_DPHY_TIME_REG_WAKEUP_TIME_SHIFT;
>  	writel(val, d->regs + DSI_VID_DPHY_TIME);

I just want to note that the Samsung S3 Mini (golden) seems to use 88
here. I suppose we will need to see how important this property is,
or if panels can also work with a slightly wrong value.

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
> +		writel((blkeol_pck & DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_MASK)
> +		       << DSI_VID_VCA_SETTING2_EXACT_BURST_LIMIT_SHIFT,
> +		       d->regs + DSI_VID_VCA_SETTING2);

It does not make a difference in this case because SHIFT = 0,
but shouldn't you normally shift before applying the mask?
Otherwise, you would wipe out the lower bits before you shift them.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
