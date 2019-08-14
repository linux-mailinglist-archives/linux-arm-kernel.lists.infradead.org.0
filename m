Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C848D1CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 13:11:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:
	Subject:To:From:Date:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b00NsbszsCd4yIs9RTtY6svYGG0NGa4sWnr6uiz/zgA=; b=Aiyb9T3IxIVhjV
	cxoFnQtGTAA/7PvC8fZM2pPuoB/P0MgPKRJtzrrRU0MXUAujFd807UMjppr+ebTBHlG4k0NgrU1r4
	m8u2j3j9wwZie5BVkqxYzDwaBTEY1jOaHq/4k2Ka8h3pQR02MpUBqvWpJQo6CIfKeiyVnLOUzXG0z
	ft6EEGwsb0NavyRwHU8I0yrFx9b/kbm8zEgJaU92EXviseA2fFjQuiFv+BZnh9bqSnfS3JAilsKht
	GmqoDgODxwFwbnOTURss0aNYSIojm5AQ8Sr3P1/EAh4qgLyPfEQc24XBYLZtZzmAjRswahON8vPMa
	/UOWMa6VULXT1ZOdHqXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrBK-00085z-Fl; Wed, 14 Aug 2019 11:11:06 +0000
Received: from mail.kmu-office.ch ([2a02:418:6a02::a2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxr6u-00062Y-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 11:06:34 +0000
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
 by mail.kmu-office.ch (Postfix) with ESMTPSA id D2A405C2B10;
 Wed, 14 Aug 2019 13:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
 t=1565780790;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kYGuMxiSxeUl5Au06aq8bOF9rLtDhjPE68Kq7sDH1l0=;
 b=jFM71Zc3y5nYl+eWHhNtRbvhMoGUt8Rx7isKmlOFcbj/a+bdXTfLk57PZb8HVZXnQBdaXe
 9Gt9pmA/CEhpr243vAvDGGbeirq52vmtEgjbh8QOXGaHrF4O7/udLmleKO6DxUI6KW0EFY
 bysmEAtgEvRoEQS6+KW1bJU0sw1/Flg=
MIME-Version: 1.0
Date: Wed, 14 Aug 2019 13:06:30 +0200
From: Stefan Agner <stefan@agner.ch>
To: Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH v2 12/15] drm/mxsfb: Improve the axi clock usage
In-Reply-To: <1565779731-1300-13-git-send-email-robert.chiras@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
 <1565779731-1300-13-git-send-email-robert.chiras@nxp.com>
Message-ID: <425a854f41248b083ff0c6c93673d696@agner.ch>
X-Sender: stefan@agner.ch
User-Agent: Roundcube Webmail/1.3.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_040633_305823_37884684 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Marek Vasut <marex@denx.de>, Mark Rutland <mark.rutland@arm.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-14 12:48, Robert Chiras wrote:
> Currently, the enable of the axi clock return status is ignored, causing
> issues when the enable fails then we try to disable it. Therefore, it is
> better to check the return status and disable it only when enable
> succeeded.

Is this actually the case in real world sometimes? Why is it failing?

I guess if we do this in one place, we should do it in all places (e.g.
also in mxsfb_crtc_enable, mxsfb_plane_atomic_update..)

--
Stefan

> Also, remove the helper functions around clk_axi, since we can directly
> use the clk API function for enable/disable the clock. Those functions
> are already checking for NULL clk and returning 0 if that's the case.


> 
> Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
> Acked-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/gpu/drm/mxsfb/mxsfb_crtc.c |  8 ++++----
>  drivers/gpu/drm/mxsfb/mxsfb_drv.c  | 32 +++++++++++++-------------------
>  drivers/gpu/drm/mxsfb/mxsfb_drv.h  |  3 ---
>  3 files changed, 17 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> index a4ba368..e727f5e 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
> @@ -408,7 +408,7 @@ void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb)
>  {
>  	dma_addr_t paddr;
>  
> -	mxsfb_enable_axi_clk(mxsfb);
> +	clk_prepare_enable(mxsfb->clk_axi);
>  	writel(0, mxsfb->base + LCDC_CTRL);
>  	mxsfb_crtc_mode_set_nofb(mxsfb);
>  
> @@ -425,7 +425,7 @@ void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb)
>  void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb)
>  {
>  	mxsfb_disable_controller(mxsfb);
> -	mxsfb_disable_axi_clk(mxsfb);
> +	clk_disable_unprepare(mxsfb->clk_axi);
>  }
>  
>  void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
> @@ -451,8 +451,8 @@ void mxsfb_plane_atomic_update(struct
> mxsfb_drm_private *mxsfb,
>  
>  	paddr = mxsfb_get_fb_paddr(mxsfb);
>  	if (paddr) {
> -		mxsfb_enable_axi_clk(mxsfb);
> +		clk_prepare_enable(mxsfb->clk_axi);
>  		writel(paddr, mxsfb->base + mxsfb->devdata->next_buf);
> -		mxsfb_disable_axi_clk(mxsfb);
> +		clk_disable_unprepare(mxsfb->clk_axi);
>  	}
>  }
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> index 6dae2bd..694b287 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
> @@ -97,18 +97,6 @@ drm_pipe_to_mxsfb_drm_private(struct
> drm_simple_display_pipe *pipe)
>  	return container_of(pipe, struct mxsfb_drm_private, pipe);
>  }
>  
> -void mxsfb_enable_axi_clk(struct mxsfb_drm_private *mxsfb)
> -{
> -	if (mxsfb->clk_axi)
> -		clk_prepare_enable(mxsfb->clk_axi);
> -}
> -
> -void mxsfb_disable_axi_clk(struct mxsfb_drm_private *mxsfb)
> -{
> -	if (mxsfb->clk_axi)
> -		clk_disable_unprepare(mxsfb->clk_axi);
> -}
> -
>  /**
>   * mxsfb_atomic_helper_check - validate state object
>   * @dev: DRM device
> @@ -229,25 +217,31 @@ static void mxsfb_pipe_update(struct
> drm_simple_display_pipe *pipe,
>  static int mxsfb_pipe_enable_vblank(struct drm_simple_display_pipe *pipe)
>  {
>  	struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);
> +	int ret = 0;
> +
> +	ret = clk_prepare_enable(mxsfb->clk_axi);
> +	if (ret)
> +		return ret;
>  
>  	/* Clear and enable VBLANK IRQ */
> -	mxsfb_enable_axi_clk(mxsfb);
>  	writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
>  	writel(CTRL1_CUR_FRAME_DONE_IRQ_EN, mxsfb->base + LCDC_CTRL1 + REG_SET);
> -	mxsfb_disable_axi_clk(mxsfb);
> +	clk_disable_unprepare(mxsfb->clk_axi);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static void mxsfb_pipe_disable_vblank(struct drm_simple_display_pipe *pipe)
>  {
>  	struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);
>  
> +	if (clk_prepare_enable(mxsfb->clk_axi))
> +		return;
> +
>  	/* Disable and clear VBLANK IRQ */
> -	mxsfb_enable_axi_clk(mxsfb);
>  	writel(CTRL1_CUR_FRAME_DONE_IRQ_EN, mxsfb->base + LCDC_CTRL1 + REG_CLR);
>  	writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
> -	mxsfb_disable_axi_clk(mxsfb);
> +	clk_disable_unprepare(mxsfb->clk_axi);
>  }
>  
>  static struct drm_simple_display_pipe_funcs mxsfb_funcs = {
> @@ -413,7 +407,7 @@ static irqreturn_t mxsfb_irq_handler(int irq, void *data)
>  	struct mxsfb_drm_private *mxsfb = drm->dev_private;
>  	u32 reg;
>  
> -	mxsfb_enable_axi_clk(mxsfb);
> +	clk_prepare_enable(mxsfb->clk_axi);
>  
>  	reg = readl(mxsfb->base + LCDC_CTRL1);
>  
> @@ -422,7 +416,7 @@ static irqreturn_t mxsfb_irq_handler(int irq, void *data)
>  
>  	writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
>  
> -	mxsfb_disable_axi_clk(mxsfb);
> +	clk_disable_unprepare(mxsfb->clk_axi);
>  
>  	return IRQ_HANDLED;
>  }
> diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> index 8fb65d3..d6df8fe 100644
> --- a/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> +++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
> @@ -37,9 +37,6 @@ struct mxsfb_drm_private {
>  int mxsfb_setup_crtc(struct drm_device *dev);
>  int mxsfb_create_output(struct drm_device *dev);
>  
> -void mxsfb_enable_axi_clk(struct mxsfb_drm_private *mxsfb);
> -void mxsfb_disable_axi_clk(struct mxsfb_drm_private *mxsfb);
> -
>  void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb);
>  void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb);
>  void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
