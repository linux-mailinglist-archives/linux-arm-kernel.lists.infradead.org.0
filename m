Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 848FF6F299
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 12:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjI0H1mZA+3qTqpEMLA8CSVymEDIrw2wENZAldLRzq8=; b=hHD44L7g11UazU
	SxnqjdFVUonm7ZwdPzut/VPSPLF5rZ9GxnkNHz5UhWMTGPIPDT0S5a5EjZ3O/ZQplwNVqW017gvyV
	j+3ia7o4PpjQ36OauyVEe3k7eBBEUtQ1LigPhzipp4iRyrCTFBfEl8ohVYqJggAdVXRuQxYHNOKon
	u7U435GfBLjYA6q3LUaRdWn+d8Oi7uv4obUaYrBICs+BH9IGje+tqekoOhyTnT1D/qCgBIkqk/OwM
	dGWaFNBnINjHsP8Vklf2Bi7XDcJ5b4Wc6DxFg1KuFpzueFxGQSPf+724CD/pto5uWCuU6gFj916DD
	GUvazMt/KeQ8/3NJYwng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hp94W-0007Ha-40; Sun, 21 Jul 2019 10:28:04 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hp943-0007C7-Ar
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 10:27:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 02CC2FB03;
 Sun, 21 Jul 2019 12:27:34 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bq-aQ_rZeGMG; Sun, 21 Jul 2019 12:27:31 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id E8AD041113; Sun, 21 Jul 2019 12:27:30 +0200 (CEST)
Date: Sun, 21 Jul 2019 12:27:30 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH 02/10] drm/mxsfb: Update mxsfb with additional pixel
 formats
Message-ID: <20190721102730.GB999@bogon.m.sigxcpu.org>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
 <1561555938-21595-3-git-send-email-robert.chiras@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561555938-21595-3-git-send-email-robert.chiras@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_032736_056610_70243BB5 
X-CRM114-Status: GOOD (  30.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,
I'm not very familiar with mxsfb, just some things that stood out while
looking at the code:

On Wed, Jun 26, 2019 at 04:32:10PM +0300, Robert Chiras wrote:
> Since version 4 of eLCDIF, there are some registers that can do
> transformations on the input data, like re-arranging the pixel
> components. By doing that, we can support more pixel formats.
> This patch adds support for X/ABGR and RGBX/A. Although, the local alpha
> is not supported by eLCDIF, the alpha pixel formats were added to the
> supported pixel formats but it will be ignored. This was necessary since
> there are systems (like Android) that requires such pixel formats.
> 
> Also, add support for the following pixel formats:
>         16 bpp: RG16 ,BG16, XR15, XB15, AR15, AB15
> Set the bus format based on input from the user and panel capabilities.
> Save the bus format in crtc->mode.private_flags, so the bridge can use
> it.
> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> Signed-off-by: Mirela Rabulea <mirela.rabulea@nxp.com>
> ---
>  drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 158 ++++++++++++++++++++++++++++++-------
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c  |  30 +++++--
>  drivers/gpu/drm/mxsfb/mxsfb_drv.h  |   3 +-
>  drivers/gpu/drm/mxsfb/mxsfb_regs.h | 100 ++++++++++++++---------
>  4 files changed, 217 insertions(+), 74 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> index 14bde024..e48396d 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> @@ -41,14 +41,17 @@ static u32 set_hsync_pulse_width(struct mxsfb_drm_private *mxsfb, u32 val)
>  }
>  
>  /* Setup the MXSFB registers for decoding the pixels out of the framebuffer */
> -static int mxsfb_set_pixel_fmt(struct mxsfb_drm_private *mxsfb)
> +static int mxsfb_set_pixel_fmt(struct mxsfb_drm_private *mxsfb, bool update)
>  {
>  	struct drm_crtc *crtc = &mxsfb->pipe.crtc;
>  	struct drm_device *drm = crtc->dev;
>  	const u32 format = crtc->primary->state->fb->format->format;
> -	u32 ctrl, ctrl1;
> +	u32 ctrl = 0, ctrl1 = 0;
> +	bool bgr_format = true;
> +	struct drm_format_name_buf format_name_buf;
>  
> -	ctrl = CTRL_BYPASS_COUNT | CTRL_MASTER;
> +	if (!update)
> +		ctrl = CTRL_BYPASS_COUNT | CTRL_MASTER;
>  
>  	/*
>  	 * WARNING: The bus width, CTRL_SET_BUS_WIDTH(), is configured to
> @@ -57,64 +60,158 @@ static int mxsfb_set_pixel_fmt(struct mxsfb_drm_private *mxsfb)
>  	 * to arbitrary value. This limitation should not pose an issue.
>  	 */
>  
> -	/* CTRL1 contains IRQ config and status bits, preserve those. */
> -	ctrl1 = readl(mxsfb->base + LCDC_CTRL1);
> -	ctrl1 &= CTRL1_CUR_FRAME_DONE_IRQ_EN | CTRL1_CUR_FRAME_DONE_IRQ;
> +	if (!update) {
> +		/* CTRL1 contains IRQ config and status bits, preserve those. */
> +		ctrl1 = readl(mxsfb->base + LCDC_CTRL1);
> +		ctrl1 &= CTRL1_CUR_FRAME_DONE_IRQ_EN | CTRL1_CUR_FRAME_DONE_IRQ;
> +	}
> +
> +	DRM_DEV_DEBUG_DRIVER(drm->dev, "Setting up %s mode\n",
> +			     drm_get_format_name(format, &format_name_buf));
> +
> +	/* Do some clean-up that we might have from a previous mode */
> +	ctrl &= ~CTRL_SHIFT_DIR(1);
> +	ctrl &= ~CTRL_SHIFT_NUM(0x3f);
> +	if (mxsfb->devdata->ipversion >= 4)
> +		writel(CTRL2_ODD_LINE_PATTERN(0x7) |
> +		       CTRL2_EVEN_LINE_PATTERN(0x7),

Would it make sense to not use magic constants here but rather '#define'
the different line pattern values as well?


> +		       mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
>  
>  	switch (format) {
> -	case DRM_FORMAT_RGB565:
> -		dev_dbg(drm->dev, "Setting up RGB565 mode\n");
> +	case DRM_FORMAT_BGR565: /* BG16 */
> +		if (mxsfb->devdata->ipversion < 4)
> +			goto err;
> +		writel(CTRL2_ODD_LINE_PATTERN(0x5) |
> +			CTRL2_EVEN_LINE_PATTERN(0x5),
> +			mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
> +		/* Fall through */
> +	case DRM_FORMAT_RGB565: /* RG16 */
> +		ctrl |= CTRL_SET_WORD_LENGTH(0);
> +		ctrl &= ~CTRL_DF16;
> +		ctrl1 |= CTRL1_SET_BYTE_PACKAGING(0xf);
> +		break;
> +	case DRM_FORMAT_XBGR1555: /* XB15 */
> +	case DRM_FORMAT_ABGR1555: /* AB15 */
> +		if (mxsfb->devdata->ipversion < 4)
> +			goto err;
> +		writel(CTRL2_ODD_LINE_PATTERN(0x5) |
> +			CTRL2_EVEN_LINE_PATTERN(0x5),
> +			mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
> +		/* Fall through */
> +	case DRM_FORMAT_XRGB1555: /* XR15 */
> +	case DRM_FORMAT_ARGB1555: /* AR15 */
>  		ctrl |= CTRL_SET_WORD_LENGTH(0);
> +		ctrl |= CTRL_DF16;
>  		ctrl1 |= CTRL1_SET_BYTE_PACKAGING(0xf);
>  		break;
> -	case DRM_FORMAT_XRGB8888:
> -		dev_dbg(drm->dev, "Setting up XRGB8888 mode\n");
> +	case DRM_FORMAT_RGBX8888: /* RX24 */
> +	case DRM_FORMAT_RGBA8888: /* RA24 */
> +		/* RGBX - > 0RGB */
> +		ctrl |= CTRL_SHIFT_DIR(1);
> +		ctrl |= CTRL_SHIFT_NUM(8);
> +		bgr_format = false;
> +		/* Fall through */
> +	case DRM_FORMAT_XBGR8888: /* XB24 */
> +	case DRM_FORMAT_ABGR8888: /* AB24 */
> +		if (bgr_format) {
> +			if (mxsfb->devdata->ipversion < 4)
> +				goto err;
> +			writel(CTRL2_ODD_LINE_PATTERN(0x5) |
> +			       CTRL2_EVEN_LINE_PATTERN(0x5),
> +			       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
> +		}
> +		/* Fall through */
> +	case DRM_FORMAT_XRGB8888: /* XR24 */
> +	case DRM_FORMAT_ARGB8888: /* AR24 */
>  		ctrl |= CTRL_SET_WORD_LENGTH(3);
>  		/* Do not use packed pixels = one pixel per word instead. */
>  		ctrl1 |= CTRL1_SET_BYTE_PACKAGING(0x7);
>  		break;
>  	default:
> -		dev_err(drm->dev, "Unhandled pixel format %08x\n", format);
> -		return -EINVAL;
> +		goto err;
>  	}
>  
> -	writel(ctrl1, mxsfb->base + LCDC_CTRL1);
> -	writel(ctrl, mxsfb->base + LCDC_CTRL);
> +	if (update) {
> +		writel(ctrl, mxsfb->base + LCDC_CTRL + REG_SET);
> +		writel(ctrl1, mxsfb->base + LCDC_CTRL1 + REG_SET);
> +	} else {
> +		writel(ctrl, mxsfb->base + LCDC_CTRL);
> +		writel(ctrl1, mxsfb->base + LCDC_CTRL1);
> +	}
>  
>  	return 0;
> +
> +err:
> +	DRM_DEV_ERROR(drm->dev, "Unhandled pixel format: %s\n",
> +		      drm_get_format_name(format, &format_name_buf));
> +
> +	return -EINVAL;
> +}
> +
> +static u32 get_bus_format_from_bpp(u32 bpp)
> +{
> +	switch (bpp) {
> +	case 16:
> +		return MEDIA_BUS_FMT_RGB565_1X16;
> +	case 18:
> +		return MEDIA_BUS_FMT_RGB666_1X18;
> +	case 24:
> +		return MEDIA_BUS_FMT_RGB888_1X24;
> +	default:
> +		return MEDIA_BUS_FMT_RGB888_1X24;
> +	}
>  }
>  
>  static void mxsfb_set_bus_fmt(struct mxsfb_drm_private *mxsfb)
>  {
>  	struct drm_crtc *crtc = &mxsfb->pipe.crtc;
> +	unsigned int bits_per_pixel = crtc->primary->state->fb->format->depth;
>  	struct drm_device *drm = crtc->dev;
>  	u32 bus_format = MEDIA_BUS_FMT_RGB888_1X24;
> -	u32 reg;
> -
> -	reg = readl(mxsfb->base + LCDC_CTRL);
> +	int num_bus_formats = mxsfb->connector->display_info.num_bus_formats;
> +	const u32 *bus_formats = mxsfb->connector->display_info.bus_formats;
> +	u32 reg = 0;
> +	int i = 0;
> +
> +	/* match the user requested bus_format to one supported by the panel */
> +	if (num_bus_formats) {
> +		u32 user_bus_format = get_bus_format_from_bpp(bits_per_pixel);
> +
> +		bus_format = bus_formats[0];
> +		for (i = 0; i < num_bus_formats; i++) {
> +			if (user_bus_format == bus_formats[i]) {
> +				bus_format = user_bus_format;
> +				break;
> +			}
> +		}
> +	}
>  
> -	if (mxsfb->connector->display_info.num_bus_formats)
> -		bus_format = mxsfb->connector->display_info.bus_formats[0];
> +	/*
> +	 * CRTC will dictate the bus format via private_flags[16:1]
> +	 * and private_flags[0] will signal a bus format change
> +	 */
> +	crtc->mode.private_flags &= ~0x1FFFF; /* clear bus format */
> +	crtc->mode.private_flags |= (bus_format << 1); /* set bus format */
> +	crtc->mode.private_flags |= 0x1; /* bus format change indication*/
>  
>  	DRM_DEV_DEBUG_DRIVER(drm->dev, "Using bus_format: 0x%08X\n",
>  			     bus_format);
>  
> -	reg &= ~CTRL_BUS_WIDTH_MASK;
>  	switch (bus_format) {
>  	case MEDIA_BUS_FMT_RGB565_1X16:
> -		reg |= CTRL_SET_BUS_WIDTH(STMLCDIF_16BIT);
> +		reg = CTRL_SET_BUS_WIDTH(STMLCDIF_16BIT);
>  		break;
>  	case MEDIA_BUS_FMT_RGB666_1X18:
> -		reg |= CTRL_SET_BUS_WIDTH(STMLCDIF_18BIT);
> +		reg = CTRL_SET_BUS_WIDTH(STMLCDIF_18BIT);
>  		break;
>  	case MEDIA_BUS_FMT_RGB888_1X24:
> -		reg |= CTRL_SET_BUS_WIDTH(STMLCDIF_24BIT);
> +		reg = CTRL_SET_BUS_WIDTH(STMLCDIF_24BIT);
>  		break;
>  	default:
>  		dev_err(drm->dev, "Unknown media bus format %d\n", bus_format);
>  		break;
>  	}
> -	writel(reg, mxsfb->base + LCDC_CTRL);
> +	writel(reg, mxsfb->base + LCDC_CTRL + REG_SET);
>  }
>  
>  static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
> @@ -125,8 +222,9 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
>  		clk_prepare_enable(mxsfb->clk_disp_axi);
>  	clk_prepare_enable(mxsfb->clk);
>  
> -	writel(CTRL2_OUTSTANDING_REQS__REQ_16,
> -	       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
> +	if (mxsfb->devdata->ipversion >= 4)
> +		writel(CTRL2_OUTSTANDING_REQS__REQ_16,
> +		       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
>  
>  	/* If it was disabled, re-enable the mode again */
>  	writel(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_SET);
> @@ -144,6 +242,10 @@ static void mxsfb_disable_controller(struct mxsfb_drm_private *mxsfb)
>  {
>  	u32 reg;
>  
> +	if (mxsfb->devdata->ipversion >= 4)
> +		writel(CTRL2_OUTSTANDING_REQS(0x7),
> +		       mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
> +
>  	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_CLR);
>  
>  	/*
> @@ -231,7 +333,7 @@ static void mxsfb_crtc_mode_set_nofb(struct mxsfb_drm_private *mxsfb)
>  	/* Clear the FIFOs */
>  	writel(CTRL1_FIFO_CLEAR, mxsfb->base + LCDC_CTRL1 + REG_SET);
>  
> -	err = mxsfb_set_pixel_fmt(mxsfb);
> +	err = mxsfb_set_pixel_fmt(mxsfb, false);
>  	if (err)
>  		return;
>  
> @@ -316,7 +418,7 @@ void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb)
>  }
>  
>  void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
> -			       struct drm_plane_state *state)
> +			       struct drm_plane_state *old_state)

This hunk belongs to the previous commit.

>  {
>  	struct drm_simple_display_pipe *pipe = &mxsfb->pipe;
>  	struct drm_crtc *crtc = &pipe->crtc;
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index 0d171e9..d9fb734 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -40,6 +40,27 @@ enum mxsfb_devtype {
>  	MXSFB_V4,
>  };
>  
> +/*
> + * When adding new formats, make sure to update the num_formats from
> + * mxsfb_devdata below.
> + */
> +static const u32 mxsfb_formats[] = {
> +	/* MXSFB_V3 */
> +	DRM_FORMAT_XRGB8888,
> +	DRM_FORMAT_ARGB8888,
> +	DRM_FORMAT_RGB565,
> +	/* MXSFB_V4 */
> +	DRM_FORMAT_XBGR8888,
> +	DRM_FORMAT_ABGR8888,
> +	DRM_FORMAT_RGBX8888,
> +	DRM_FORMAT_RGBA8888,
> +	DRM_FORMAT_ARGB1555,
> +	DRM_FORMAT_XRGB1555,
> +	DRM_FORMAT_ABGR1555,
> +	DRM_FORMAT_XBGR1555,
> +	DRM_FORMAT_BGR565
> +};
> +
>  static const struct mxsfb_devdata mxsfb_devdata[] = {
>  	[MXSFB_V3] = {
>  		.transfer_count	= LCDC_V3_TRANSFER_COUNT,
> @@ -49,6 +70,7 @@ static const struct mxsfb_devdata mxsfb_devdata[] = {
>  		.hs_wdth_mask	= 0xff,
>  		.hs_wdth_shift	= 24,
>  		.ipversion	= 3,
> +		.num_formats	= 3,
>  	},
>  	[MXSFB_V4] = {
>  		.transfer_count	= LCDC_V4_TRANSFER_COUNT,
> @@ -58,14 +80,10 @@ static const struct mxsfb_devdata mxsfb_devdata[] = {
>  		.hs_wdth_mask	= 0x3fff,
>  		.hs_wdth_shift	= 18,
>  		.ipversion	= 4,
> +		.num_formats	= ARRAY_SIZE(mxsfb_formats),
>  	},
>  };
>  
> -static const uint32_t mxsfb_formats[] = {
> -	DRM_FORMAT_XRGB8888,
> -	DRM_FORMAT_RGB565
> -};
> -
>  static struct mxsfb_drm_private *
>  drm_pipe_to_mxsfb_drm_private(struct drm_simple_display_pipe *pipe)
>  {
> @@ -241,7 +259,7 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
>  	}
>  
>  	ret = drm_simple_display_pipe_init(drm, &mxsfb->pipe, &mxsfb_funcs,
> -			mxsfb_formats, ARRAY_SIZE(mxsfb_formats), NULL,
> +			mxsfb_formats, mxsfb->devdata->num_formats, NULL,
>  			mxsfb->connector);
>  	if (ret < 0) {
>  		dev_err(drm->dev, "Cannot setup simple display pipe\n");
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.h b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> index 0b65b51..8fb65d3 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> @@ -16,6 +16,7 @@ struct mxsfb_devdata {
>  	unsigned int	 hs_wdth_mask;
>  	unsigned int	 hs_wdth_shift;
>  	unsigned int	 ipversion;
> +	unsigned int	 num_formats;
>  };
>  
>  struct mxsfb_drm_private {
> @@ -42,6 +43,6 @@ void mxsfb_disable_axi_clk(struct mxsfb_drm_private *mxsfb);
>  void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb);
>  void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb);
>  void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
> -			       struct drm_plane_state *state);
> +			       struct drm_plane_state *old_state);
>  
>  #endif /* __MXSFB_DRV_H__ */
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_regs.h b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
> index 71426aa..9ee0d3c7 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_regs.h
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
> @@ -40,54 +40,76 @@
>  #define LCDC_AS_BUF			0x220
>  #define LCDC_AS_NEXT_BUF		0x230
>  
> -#define CTRL_SFTRST			(1 << 31)
> -#define CTRL_CLKGATE			(1 << 30)
> -#define CTRL_BYPASS_COUNT		(1 << 19)
> -#define CTRL_VSYNC_MODE			(1 << 18)
> -#define CTRL_DOTCLK_MODE		(1 << 17)
> -#define CTRL_DATA_SELECT		(1 << 16)
> -#define CTRL_SET_BUS_WIDTH(x)		(((x) & 0x3) << 10)
> -#define CTRL_GET_BUS_WIDTH(x)		(((x) >> 10) & 0x3)
> -#define CTRL_BUS_WIDTH_MASK		(0x3 << 10)
> -#define CTRL_SET_WORD_LENGTH(x)		(((x) & 0x3) << 8)
> -#define CTRL_GET_WORD_LENGTH(x)		(((x) >> 8) & 0x3)
> -#define CTRL_MASTER			(1 << 5)
> -#define CTRL_DF16			(1 << 3)
> -#define CTRL_DF18			(1 << 2)
> -#define CTRL_DF24			(1 << 1)
> -#define CTRL_RUN			(1 << 0)
> -
> -#define CTRL1_RECOVERY_ON_UNDERFLOW	(1 << 24)
> -#define CTRL1_FIFO_CLEAR		(1 << 21)
> -#define CTRL1_SET_BYTE_PACKAGING(x)	(((x) & 0xf) << 16)
> -#define CTRL1_GET_BYTE_PACKAGING(x)	(((x) >> 16) & 0xf)
> -#define CTRL1_CUR_FRAME_DONE_IRQ_EN	(1 << 13)
> -#define CTRL1_CUR_FRAME_DONE_IRQ	(1 << 9)
> -
> -#define CTRL2_OUTSTANDING_REQS__REQ_16		(4 << 21)
> +/* reg bit manipulation */
> +#define REG_MASK(e, s) (((1 << ((e) - (s) + 1)) - 1) << (s))
> +#define REG_PUT(x, e, s) (((x) << (s)) & REG_MASK(e, s))
> +#define REG_GET(x, e, s) (((x) & REG_MASK(e, s)) >> (s))
> +
> +#define SWIZZLE_LE		0 /* Little-Endian or No swap */
> +#define SWIZZLE_BE		1 /* Big-Endian or swap all */
> +#define SWIZZLE_HWD		2 /* Swap half-words */
> +#define SWIZZLE_HWD_BYTE	3 /* Swap bytes within each half-word */
> +
> +#define CTRL_SFTRST			BIT(31)
> +#define CTRL_CLKGATE			BIT(30)
> +#define CTRL_SHIFT_DIR(x)		REG_PUT((x), 26, 26)
> +#define CTRL_SHIFT_NUM(x)		REG_PUT((x), 25, 21)
> +#define CTRL_BYPASS_COUNT		BIT(19)
> +#define CTRL_VSYNC_MODE			BIT(18)
> +#define CTRL_DOTCLK_MODE		BIT(17)
> +#define CTRL_DATA_SELECT		BIT(16)
> +#define CTRL_INPUT_SWIZZLE(x)		REG_PUT((x), 15, 14)
> +#define CTRL_CSC_SWIZZLE(x)		REG_PUT((x), 13, 12)
> +#define CTRL_SET_BUS_WIDTH(x)		REG_PUT((x), 11, 10)
> +#define CTRL_GET_BUS_WIDTH(x)		REG_GET((x), 11, 10)
> +#define CTRL_BUS_WIDTH_MASK		REG_PUT((0x3), 11, 10)
> +#define CTRL_SET_WORD_LENGTH(x)		REG_PUT((x), 9, 8)
> +#define CTRL_GET_WORD_LENGTH(x)		REG_GET((x), 9, 8)
> +#define CTRL_MASTER			BIT(5)
> +#define CTRL_DF16			BIT(3)
> +#define CTRL_DF18			BIT(2)
> +#define CTRL_DF24			BIT(1)
> +#define CTRL_RUN			BIT(0)
> +
> +#define CTRL1_RECOVERY_ON_UNDERFLOW	BIT(24)
> +#define CTRL1_FIFO_CLEAR		BIT(21)
> +#define CTRL1_SET_BYTE_PACKAGING(x)	REG_PUT((x), 19, 16)
> +#define CTRL1_GET_BYTE_PACKAGING(x)	REG_GET((x), 19, 16)
> +#define CTRL1_CUR_FRAME_DONE_IRQ_EN	BIT(13)
> +#define CTRL1_CUR_FRAME_DONE_IRQ	BIT(9)

Splitting the cleanups (introduction of BIT(x) usage) from new defines
would ease reviewing.
Cheers,
 -- Guido

> +
> +#define REQ_1	0
> +#define REQ_2	1
> +#define REQ_4	2
> +#define REQ_8	3
> +#define REQ_16	4
> +
> +#define CTRL2_OUTSTANDING_REQS(x)	REG_PUT((x), 23, 21)
> +#define CTRL2_ODD_LINE_PATTERN(x)	REG_PUT((x), 18, 16)
> +#define CTRL2_EVEN_LINE_PATTERN(x)	REG_PUT((x), 14, 12)
>  
>  #define TRANSFER_COUNT_SET_VCOUNT(x)	(((x) & 0xffff) << 16)
>  #define TRANSFER_COUNT_GET_VCOUNT(x)	(((x) >> 16) & 0xffff)
>  #define TRANSFER_COUNT_SET_HCOUNT(x)	((x) & 0xffff)
>  #define TRANSFER_COUNT_GET_HCOUNT(x)	((x) & 0xffff)
>  
> -#define VDCTRL0_ENABLE_PRESENT		(1 << 28)
> -#define VDCTRL0_VSYNC_ACT_HIGH		(1 << 27)
> -#define VDCTRL0_HSYNC_ACT_HIGH		(1 << 26)
> -#define VDCTRL0_DOTCLK_ACT_FALLING	(1 << 25)
> -#define VDCTRL0_ENABLE_ACT_HIGH		(1 << 24)
> -#define VDCTRL0_VSYNC_PERIOD_UNIT	(1 << 21)
> -#define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT	(1 << 20)
> -#define VDCTRL0_HALF_LINE		(1 << 19)
> -#define VDCTRL0_HALF_LINE_MODE		(1 << 18)
> +#define VDCTRL0_ENABLE_PRESENT		BIT(28)
> +#define VDCTRL0_VSYNC_ACT_HIGH		BIT(27)
> +#define VDCTRL0_HSYNC_ACT_HIGH		BIT(26)
> +#define VDCTRL0_DOTCLK_ACT_FALLING	BIT(25)
> +#define VDCTRL0_ENABLE_ACT_HIGH		BIT(24)
> +#define VDCTRL0_VSYNC_PERIOD_UNIT	BIT(21)
> +#define VDCTRL0_VSYNC_PULSE_WIDTH_UNIT	BIT(20)
> +#define VDCTRL0_HALF_LINE		BIT(19)
> +#define VDCTRL0_HALF_LINE_MODE		BIT(18)
>  #define VDCTRL0_SET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
>  #define VDCTRL0_GET_VSYNC_PULSE_WIDTH(x) ((x) & 0x3ffff)
>  
>  #define VDCTRL2_SET_HSYNC_PERIOD(x)	((x) & 0x3ffff)
>  #define VDCTRL2_GET_HSYNC_PERIOD(x)	((x) & 0x3ffff)
>  
> -#define VDCTRL3_MUX_SYNC_SIGNALS	(1 << 29)
> -#define VDCTRL3_VSYNC_ONLY		(1 << 28)
> +#define VDCTRL3_MUX_SYNC_SIGNALS	BIT(29)
> +#define VDCTRL3_VSYNC_ONLY		BIT(28)
>  #define SET_HOR_WAIT_CNT(x)		(((x) & 0xfff) << 16)
>  #define GET_HOR_WAIT_CNT(x)		(((x) >> 16) & 0xfff)
>  #define SET_VERT_WAIT_CNT(x)		((x) & 0xffff)
> @@ -95,7 +117,7 @@
>  
>  #define VDCTRL4_SET_DOTCLK_DLY(x)	(((x) & 0x7) << 29) /* v4 only */
>  #define VDCTRL4_GET_DOTCLK_DLY(x)	(((x) >> 29) & 0x7) /* v4 only */
> -#define VDCTRL4_SYNC_SIGNALS_ON		(1 << 18)
> +#define VDCTRL4_SYNC_SIGNALS_ON		BIT(18)
>  #define SET_DOTCLK_H_VALID_DATA_CNT(x)	((x) & 0x3ffff)
>  
>  #define DEBUG0_HSYNC			(1 < 26)
> @@ -116,7 +138,7 @@
>  #define STMLCDIF_18BIT 2 /* pixel data bus to the display is of 18 bit width */
>  #define STMLCDIF_24BIT 3 /* pixel data bus to the display is of 24 bit width */
>  
> -#define MXSFB_SYNC_DATA_ENABLE_HIGH_ACT	(1 << 6)
> -#define MXSFB_SYNC_DOTCLK_FALLING_ACT	(1 << 7) /* negative edge sampling */
> +#define MXSFB_SYNC_DATA_ENABLE_HIGH_ACT	BIT(6)
> +#define MXSFB_SYNC_DOTCLK_FALLING_ACT	BIT(7) /* negative edge sampling */
>  
>  #endif /* __MXSFB_REGS_H__ */
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
